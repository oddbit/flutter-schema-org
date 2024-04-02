import 'dart:convert';
import 'dart:io';

import 'package:schema_parser/code_generator.dart';
import 'package:schema_parser/schema_class.dart';
import 'package:schema_parser/schema_type.dart';
import 'package:schema_parser/schema_enum.dart';
import 'package:schema_parser/schema_property.dart';
import 'package:schema_parser/utils.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    stdout.writeln('Please provide a file name as a command-line argument.');
    exit(1);
  }

  final inputFile = File(arguments[0]);
  final contents = inputFile.readAsStringSync();

  final json = jsonDecode(contents);
  final graph = (json['@graph'] as List).cast<Map<String, dynamic>>();

  final classes = getClasses(graph);
  final enums = getEnums(graph);
  stdout.writeln('${classes.length} classes');
  stdout.writeln('${enums.length} enums');

  // Write code for all enums
  for (final schemaEnum in enums) {
    final StringBuffer sb = StringBuffer();
    if (schemaEnum.values.isEmpty) {
      generateAbstractEnumCode(sb, schemaEnum);
    } else {
      generateEnumCode(sb, schemaEnum);
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

/// Parse all the classes from the [graph]
/// Classes are defined as classes that are not a subclass of `Enumeration`
/// This method will parse the whole [graph] and return a list of [SchemaType]
/// populated with their properties and grand parent relationships.
List<SchemaType> getClasses(List<Map<String, dynamic>> graph) {
  final properties = _getProperties(graph);
  final Map<String, SchemaType> types = {};

  for (final node in graph) {
    if (node['@type'] == 'rdfs:Class') {
      final schemaType = SchemaType.fromJson(node);
      types[schemaType.name] = schemaType;
    }
  }

  // Populate types with properties and grand parents
  for (final t in types.values) {
    t.properties.addAll(properties.where((p) => p.inClasses.contains(t.name)));
    t.properties.sort((a, b) => a.name.compareTo(b.name));

    final List<String> grandParents = [];
    for (final parent in t.parents) {
      grandParents.addAll(_getParents(parent, types));
    }

    /// There are complex relationships where a class both inherits from
    /// enumeration and other classes. The best way to handle this for now
    /// is to just represent the enumeration as an String option type
    /// See https://github.com/oddbit/flutter-schema-org/issues/1
    if (grandParents.contains('Enumeration') &&
        grandParents.where((element) => element == 'Thing').length > 1) {
      grandParents.removeWhere((element) => element == 'Enumeration');
    }

    t.grandParents.addAll(grandParents.toSet().toList()..sort());
  }

  return types.values.toList()
    ..removeWhere((e) => e.familyTree.contains('Enumeration'))
    ..removeWhere((e) => isExcludedType(e.name))
    ..sort((a, b) => a.name.compareTo(b.name));
}

/// Parse all the enums from the [graph]
/// Enums are defined as classes that are a subclass of `Enumeration`
/// Enums are like classes with potential hierarchy of parents but the final
/// inheritance class is its value.
List<SchemaEnum> getEnums(List<Map<String, dynamic>> graph) {
  Map<String, SchemaEnum> enums = {};

  // Iterate to find all enum classes
  for (var node in graph) {
    if (node['@type'] == 'rdfs:Class') {
      final schemaEnum = SchemaEnum.fromJson(node);
      enums[schemaEnum.name] = schemaEnum;
    }
  }
  // Populate enums with properties and grand parents
  for (final e in enums.values) {
    final List<String> grandParents = [];
    for (final parent in e.parents) {
      grandParents.addAll(_getParents(parent, enums));
    }

    /// Only add this schema class if it is only a direct child of Enumeration
    /// See https://github.com/oddbit/flutter-schema-org/issues/1
    if (grandParents.where((element) => element == 'Thing').length == 1) {
      e.grandParents.addAll(grandParents.toSet().toList()..sort());
    }
  }

  // Iterate again to populate all enums with their values
  for (var node in graph.where((element) => element['@type'] is String)) {
    final enumName = toTypeName(node['@type']);
    if (enums.containsKey(enumName)) {
      enums[enumName]?.values.add(SchemaEnumValue.fromJson(node));
    }
  }

  return enums.values.toList()
    ..removeWhere((e) => !e.familyTree.contains('Enumeration'))
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
