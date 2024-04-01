import 'dart:convert';
import 'dart:io';

import 'code_generator.dart';
import 'schema_class.dart';
import 'schema_enum.dart';
import 'schema_property.dart';
import 'utils.dart';

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
    generateFileTop(sb);
    generateEnumCode(schemaEnum, sb);
    writeToFile(schemaEnum.name, sb);
  }

  // Write code for all classes
  for (final schemaClass in classes) {
    final StringBuffer sb = StringBuffer();
    generateFileTop(sb);
    generateClassCode(schemaClass, classes, sb);
    writeToFile(schemaClass.name, sb);
  }

  exit(0);
}

/// Parse all the classes from the [graph]
/// Classes are defined as classes that are not a subclass of `Enumeration`
/// This method will parse the whole [graph] and return a list of [SchemaClass]
/// populated with their properties and grand parent relationships.
List<SchemaClass> getClasses(List<Map<String, dynamic>> graph) {
  final properties = _getProperties(graph);
  final Map<String, SchemaClass> classes = {};

  for (final node in graph) {
    if (node['@type'] == 'rdfs:Class') {
      final parents = parseRelationship(node['rdfs:subClassOf']).toSet();
      if (!parents.contains('Enumeration')) {
        final klass = SchemaClass.fromJson(node);
        classes[klass.name] = klass;
      }
    }
  }

  // Populate classes with properties and grand parents
  for (final c in classes.values) {
    c.properties.addAll(properties.where((p) => p.inClasses.contains(c.name)));
    c.properties.sort((a, b) => a.name.compareTo(b.name));

    final List<String> grandParents = [];
    for (final parent in c.parents) {
      grandParents.addAll(_getParents(parent, classes));
    }

    c.grandParents.addAll(grandParents.toSet().toList()..sort());
  }

  return classes.values.toList()..sort((a, b) => a.name.compareTo(b.name));
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

/// Parse all the enums from the [graph]
/// Enums are defined as classes that are a subclass of `Enumeration`
List<SchemaEnum> getEnums(List<Map<String, dynamic>> graph) {
  Map<String, SchemaEnum> enums = {};

  // Iterate to find all enum classes
  for (var node in graph) {
    if (node['@type'] == 'rdfs:Class') {
      if (parseRelationship(node['rdfs:subClassOf']).contains('Enumeration')) {
        enums[node['@id']] = SchemaEnum.fromJson(node);
      }
    }
  }

  // Iterate again to populate all enums with their values
  for (var node in graph) {
    final enumClassName = node['@type'];
    if (enums.containsKey(enumClassName)) {
      enums[enumClassName]?.values.add(SchemaEnumValue.fromJson(node));
    }
  }

  return enums.values.toList()
    ..sort((a, b) => a.name.compareTo(b.name))
    ..forEach((e) => e.values.sort((a, b) => a.name.compareTo(b.name)));
}

/// Parse all the properties from the [graph]
List<SchemaProperty> _getProperties(List<Map<String, dynamic>> graph) {
  final properties = <SchemaProperty>[];
  for (final node in graph) {
    if (node['@type'] == 'rdf:Property') {
      properties.add(SchemaProperty.fromJson(node));
    }
  }

  return properties..sort((a, b) => a.name.compareTo(b.name));
}
