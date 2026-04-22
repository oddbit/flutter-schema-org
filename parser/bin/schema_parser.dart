// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:schema_parser/code_generator.dart';
import 'package:schema_parser/schema_class.dart';
import 'package:schema_parser/schema_type.dart';
import 'package:schema_parser/schema_enum.dart';
import 'package:schema_parser/schema_property.dart';
import 'package:schema_parser/utils.dart';

/// Entry point for the `schema_parser` CLI.
///
/// Usage:
/// ```
/// dart run schema_parser <input.jsonld> [--out <dir>]
/// ```
///
/// The input must be the Schema.org JSON-LD distribution
/// ([download](https://schema.org/docs/developers.html)). Generated files
/// default to `../lib/schemas` (relative to the parser directory) but can
/// be redirected with `--out` for testing a regenerated tree in isolation.
void main(List<String> arguments) {
  final parser = ArgParser()
    ..addOption(
      'out',
      abbr: 'o',
      help: 'Directory to write generated schema files into.',
      defaultsTo: outputDirectory,
    )
    ..addFlag('help',
        abbr: 'h', negatable: false, help: 'Show usage information.');

  final ArgResults results;
  try {
    results = parser.parse(arguments);
  } on FormatException catch (e) {
    stderr.writeln(e.message);
    stderr.writeln(parser.usage);
    exit(64);
  }

  if (results['help'] as bool || results.rest.isEmpty) {
    stdout.writeln('Usage: schema_parser <input.jsonld> [options]\n');
    stdout.writeln(parser.usage);
    exit(results.rest.isEmpty ? 1 : 0);
  }

  outputDirectory = results['out'] as String;

  final inputFile = File(results.rest.first);
  final contents = inputFile.readAsStringSync();

  final json = jsonDecode(contents);
  final graph = (json['@graph'] as List).cast<Map<String, dynamic>>();

  final classes = getClasses(graph);
  final enums = getEnums(graph);
  stdout.writeln('${classes.length} classes');
  stdout.writeln('${enums.length} enums');

  // Concrete enum A cannot `implements` concrete enum B in Dart — only
  // abstract classes qualify as implementation targets. Enumerations
  // whose Schema.org parent is itself a value-carrying enum therefore
  // have to fall back to `implements SchemaSerializable`, which the
  // generator decides from this set.
  final abstractEnumNames = enums
      .where((e) => e.values.isEmpty)
      .map((e) => e.name)
      .toSet();

  // Write code for all enums
  for (final schemaEnum in enums) {
    final StringBuffer sb = StringBuffer();
    if (schemaEnum.values.isEmpty) {
      generateAbstractEnumCode(sb, schemaEnum);
    } else {
      generateEnumCode(sb, schemaEnum,
          abstractEnumNames: abstractEnumNames);
    }
    writeToFile(sb, schemaEnum.name);
  }

  // Write code for all classes
  for (final schemaClass in classes) {
    final StringBuffer sb = StringBuffer();
    generateClassCode(sb, schemaClass, classes);
    writeToFile(sb, schemaClass.name);
  }

  exit(0);
}

/// Whether [node] is declared as `rdfs:Class` in the JSON-LD graph.
///
/// The `@type` attribute is usually a single string, but some Schema.org
/// nodes (e.g. `schema:Quantity`, which is both a `DataType` and an
/// `rdfs:Class`) use a list. Match either shape so multi-typed classes
/// are not silently dropped.
bool _isRdfsClassNode(Map<String, dynamic> node) {
  final type = node['@type'];
  if (type is String) return type == 'rdfs:Class';
  if (type is List) return type.contains('rdfs:Class');
  return false;
}

/// Whether every declared parent of [parents] eventually descends from
/// `Enumeration`. Used to classify a node as an enum vs. a regular class.
///
/// A node with no parents (e.g. `Thing`) is not considered an enum. A
/// node whose parents mix enum descendants with non-enum descendants
/// (the case protected by
/// [issue #1](https://github.com/oddbit/flutter-schema-org/issues/1))
/// is treated as a regular class so it can carry normal properties.
bool _allParentsLeadToEnumeration(
  List<String> parents,
  Map<String, SchemaClass> pool,
) {
  if (parents.isEmpty) return false;
  return parents.every((p) {
    if (p == 'Enumeration') return true;
    return _getParents(p, pool).contains('Enumeration');
  });
}

/// Parse every concrete class from the JSON-LD [graph].
///
/// Nodes that are classified as enums (all of their parents transitively
/// extend `Enumeration`) are excluded; they are generated separately by
/// [getEnums]. Built-in Dart scalar types are also excluded — they are
/// represented as native Dart scalars, not as Schema.org classes.
List<SchemaType> getClasses(List<Map<String, dynamic>> graph) {
  final properties = _getProperties(graph);
  final Map<String, SchemaType> types = {};

  for (final node in graph) {
    if (_isRdfsClassNode(node)) {
      final schemaType = SchemaType.fromJson(node);
      types[schemaType.name] = schemaType;
    }
  }

  for (final t in types.values) {
    t.properties.addAll(properties.where((p) => p.inClasses.contains(t.name)));
    t.properties.sort((a, b) => a.name.compareTo(b.name));

    final grandParents = <String>[];
    for (final parent in t.parents) {
      grandParents.addAll(_getParents(parent, types));
    }
    t.grandParents.addAll(grandParents.toSet().toList()..sort());
  }

  return types.values.toList()
    ..removeWhere((e) => _allParentsLeadToEnumeration(e.parents, types))
    ..removeWhere((e) => isExcludedType(e.name))
    ..sort((a, b) => a.name.compareTo(b.name));
}

/// Parse every enumeration from the JSON-LD [graph].
///
/// A node is considered an enumeration when all of its declared parents
/// transitively extend `Enumeration`. Enumeration values are attached in
/// a second pass by matching `@type: schema:<EnumName>` nodes against the
/// enum map.
List<SchemaEnum> getEnums(List<Map<String, dynamic>> graph) {
  final Map<String, SchemaEnum> enums = {};

  for (final node in graph) {
    if (_isRdfsClassNode(node)) {
      final schemaEnum = SchemaEnum.fromJson(node);
      enums[schemaEnum.name] = schemaEnum;
    }
  }

  for (final e in enums.values) {
    final grandParents = <String>[];
    for (final parent in e.parents) {
      grandParents.addAll(_getParents(parent, enums));
    }
    e.grandParents.addAll(grandParents.toSet().toList()..sort());
  }

  // Attach enum values. A value node carries `@type: schema:<EnumName>`,
  // which lets us map the value back to the enum that owns it.
  for (final node in graph.where((n) => n['@type'] is String)) {
    final enumName = toTypeName(node['@type']);
    if (enums.containsKey(enumName)) {
      enums[enumName]?.values.add(SchemaEnumValue.fromJson(node));
    }
  }

  return enums.values.toList()
    ..removeWhere((e) => !_allParentsLeadToEnumeration(e.parents, enums))
    ..sort((a, b) => a.name.compareTo(b.name))
    ..forEach((e) => e.values.sort((a, b) => a.name.compareTo(b.name)));
}

/// Parse all the type properties from the [graph]
List<SchemaProperty> _getProperties(List<Map<String, dynamic>> graph) {
  final properties = <SchemaProperty>[];
  for (final node in graph) {
    if (node['@type'] == 'rdf:Property') {
      properties.add(SchemaProperty.fromJson(node));
    }
  }

  return properties..sort((a, b) => a.name.compareTo(b.name));
}

/// Get all the parents of a class with [className]
/// This method will recursively find all the parents of the class by searching
/// the [classes] map. Omit the [visitedClasses] parameter in the call to this
/// method as it is used for internal recursion state management.
List<String> _getParents(
  String className,
  Map<String, SchemaClass> classes, [
  Set<String> visitedClasses = const {},
]) {
  final currentClass = classes[className];
  if (currentClass == null) {
    return [];
  }

  final parents = <String>[];
  parents.addAll(currentClass.parents);

  final newParents = <String>[];
  for (final parent in parents) {
    if (!visitedClasses.contains(parent)) {
      newParents
          .addAll(_getParents(parent, classes, {...visitedClasses, className}));
    }
  }
  parents.addAll(newParents);

  return parents;
}
