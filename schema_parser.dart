import 'dart:convert';
import 'dart:io';

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

  final StringBuffer sb = StringBuffer();
  _writeFileTop(sb);

  for (final schemaEnum in enums) {
    _writeEnumToFile(schemaEnum, sb);
  }

  // Write code for all classes
  for (final klass in classes) {
    _writeSchemaClassToFile(klass, classes, sb);
  }
  // Write to file
  final outFile = File('./lib/schema_org.dart');
  outFile.writeAsStringSync(sb.toString());
  exit(0);
}

/// Classes that will be excluded from schema generation
const List<String> _exludedClasses = [
  'Text',
  'String',
  'Integer',
  'Number',
  'int',
  'Boolean',
  'bool',
];

/// Write the top of the file
/// This will include the library import and the converter import
void _writeFileTop(StringBuffer sb) {
  sb.writeln('library schema_org;');
  sb.writeln();
  sb.writeln("import 'package:schema_org/converter.dart';");
  sb.writeln();
}

void _writeEnumToFile(SchemaEnum schemaEnum, StringBuffer sb) {
  String enumCodeName = _toSchemaTypeName(schemaEnum.name);
  if (schemaEnum.values.isEmpty) {
    stderr.writeln('Enum ${schemaEnum.name} has no values');
    return;
  }

  sb.writeln('/// ${_splitIntoLines(schemaEnum.description).join('\n/// ')}');
  sb.writeln('enum $enumCodeName {');

  // Iterate over values for enum members
  final lastValue = schemaEnum.values.last;
  for (final value in schemaEnum.values) {
    String valueName = value.name[0].toLowerCase() + value.name.substring(1);
    sb.writeln('  /// ${_splitIntoLines(value.description).join('\n  /// ')}');
    sb.write('  $valueName("https://schema.org/${schemaEnum.name}")');
    sb.writeln(value == lastValue ? ';' : ',');
    sb.writeln();
  }
  sb.writeln('  /// Constructor for [$enumCodeName]');
  sb.writeln('  const $enumCodeName(this.value);');
  sb.writeln();
  sb.writeln('  /// Enum value as a string');
  sb.writeln('  final String value;');
  sb.writeln();
  sb.writeln('  /// Serialize [$enumCodeName] to JSON-LD');
  sb.writeln('  String toJson() => value;');
  sb.writeln('}');
}

/// Generate code for [SchemaClass] and write it to the StringBuffer [sb].
/// The list of [classes] is used to determine the parent classes of the class.
void _writeSchemaClassToFile(
  SchemaClass schemaClass,
  List<SchemaClass> classes,
  StringBuffer sb,
) {
  final thisClassName = _toSchemaTypeName(schemaClass.name);
  sb.writeln();
  // Write class comment
  sb.writeln('/// ${_splitIntoLines(schemaClass.description).join('\n/// ')}');
  // Write class declaration
  sb.writeln('class $thisClassName {');

  // ------------------------------
  // Write properties

  // Get all properties including the parent properties
  final properties = List<SchemaProperty>.from(schemaClass.properties);
  for (var parent in [...schemaClass.parents, ...schemaClass.grandParents]) {
    try {
      final parentClass = classes.firstWhere((c) => c.name == parent);
      properties.addAll(parentClass.properties);
    } catch (e) {
      stderr.writeln(
          'Parent class $parent not found for class ${schemaClass.name}');
    }
  }

  for (var property in properties) {
    // Write property comment
    if (property.description.isNotEmpty) {
      final propCommentLines = _splitIntoLines(property.description);
      sb.writeln('  /// ${propCommentLines.join('\n  /// ')}');
    }

    // Write property declaration
    final declaredTypeName = _toSchemaTypeName(property.declaredType);
    sb.writeln('  $declaredTypeName? ${property.name};');
    sb.writeln();
  }

  // ------------------------------
  // Write constructor
  sb.writeln();
  sb.write('  /// Create a new instance of [${schemaClass.name}]\n');
  sb.write('  $thisClassName({');
  for (var property in schemaClass.properties) {
    sb.write('this.${property.name}, ');
  }
  sb.writeln('});');
  sb.writeln();

  // ------------------------------
  // Write toJson method
  sb.writeln('  /// Serialize [$thisClassName] to JSON-LD');
  sb.write('  Map<String, dynamic> toJson() => {');
  sb.write('\'@context\': \'https://schema.org\', ');
  sb.write('\'@type\': \'${schemaClass.name}\', ');
  for (var property in schemaClass.properties) {
    sb.write(
        '\'${property.name}\': convertToJson(${property.name}, [${property.types.join(', ')}]), ');
  }
  sb.writeln('};');

  // End class declaration
  sb.writeln('}');
  sb.writeln();
}

List<String> _splitIntoLines(String text) {
  List<String> words = text.split(' ');
  List<String> lines = [];
  StringBuffer line = StringBuffer();

  for (var word in words) {
    if ((line.length + word.length + 1) > 65) {
      // Append line to lines and start a new line
      lines.add(line.toString().replaceAll('\n', ' '));
      line.clear();
    }
    if (line.isNotEmpty) {
      line.write(' ');
    }
    line.write(word);
  }

  // Append the last line
  if (line.isNotEmpty) {
    lines.add(line.toString());
  }

  return lines;
}

/// Parse all the classes from the [graph]
/// Classes are defined as classes that are not a subclass of `Enumeration`
/// This method will parse the whole [graph] and return a list of [SchemaClass]
/// populated with their properties and grand parent relationships.
List<SchemaClass> getClasses(List<Map<String, dynamic>> graph) {
  final properties = _getProperties(graph);
  final Map<String, SchemaClass> classes = {};

  for (final node in graph) {
    if (node['@type'] == 'rdfs:Class' &&
        !_exludedClasses.contains(node['@id'])) {
      final parents = _parseRelationship(node['rdfs:subClassOf']).toSet();
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
  parents
      .addAll(currentClass.parents.where((p) => !_exludedClasses.contains(p)));

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
      if (_parseRelationship(node['rdfs:subClassOf']).contains('Enumeration')) {
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

/// Converts a schema.org schema name to a Dart type name.
/// Some common types in Schema.org can be converted to scalar Dart types:
/// - schema:Text -> String
/// - schema:Integer -> int
/// ...etc
String _getTypeDeclaration(String name) {
  final schema = name.split(':').last;
  switch (schema) {
    case 'Text':
      return 'String';
    case 'Integer':
    case 'Number':
      return 'int';
    case 'Boolean':
      return 'bool';
    default:
      return schema;
  }
}

/// Converts a schema.org schema name to a easily recognizable class name
/// This makes it easier to reference the class in code to know that it
/// refers to Schema.org classes.
String _toSchemaTypeName(String typeName) {
  switch (typeName) {
    case 'String':
    case 'int':
    case 'double':
    case 'bool':
    case 'DateTime':
    case 'dynamic':
      return typeName;
    default:
      return 'Schema$typeName';
  }
}

/// Gets the text from a schema attribute that is possibly translated
/// The parameter can be either a string or a map. If it is a string, it will
/// accept a value as `schema:Text` and return the text after the colon.
/// Example:
///  - "schema:Text" -> "Text"
///  - "rdfs:label" -> "label"
///  - "Foobar" -> "Foobar"
///
/// If it is a map, it will return the value of the `@value` key in the map.
///
/// Example:
/// "rdfs:label": {
///   "@language": "en",
///   "@value": "itemLocation"
///  }
String _getPossiblyTranslatedText(dynamic value) {
  if (value is String) {
    return value.split(':').last;
  }

  if (value is Map) {
    return value['@value'] as String;
  }

  throw Exception('Invalid text type: $value');
}

/// Parses the relationship of a schema.org property
/// There are three possible structures in `rdfs:subClassOf` for example
/// It can be non existing (null if addressed in the map), a single object or a
/// list of objects.
List<String> _parseRelationship(dynamic json) {
  return (json == null
          ? []
          : json is List
              ? json.map((item) => item['@id'] as String).toList()
              : [json['@id'] as String])
      .map((id) => _getTypeDeclaration(id))
      .toList()
    ..sort();
}

/// Represents a schema.org class
class SchemaClass {
  /// Creates a new instance of [SchemaClass]
  SchemaClass({
    required this.name,
    required this.description,
    required this.parents,
  });

  /// Creates a new instance of [SchemaClass] from a JSON object
  factory SchemaClass.fromJson(Map<String, dynamic> json) {
    return SchemaClass(
      name: _getPossiblyTranslatedText(json['rdfs:label']),
      description: _getPossiblyTranslatedText(json['rdfs:comment']),
      parents: _parseRelationship(json['rdfs:subClassOf']),
    );
  }

  /// The name of the class as it will be defined in code
  final String name;

  /// The description of the class
  /// This will be used as a class comment on the class
  final String description;

  /// The parent classes of this class
  /// Will be used to determine the parent class properties that should be
  /// added on this class.
  final List<String> parents;

  /// The grand parent classes of this class
  /// Will be used to determine the grand parent class properties that should be
  /// added on this class.
  final List<String> grandParents = [];

  /// The properties of this class
  /// Will be used to determine the properties that should be added on this
  /// class. Each property is defined in a [SchemaProperty] object.
  final List<SchemaProperty> properties = [];
}

/// Represents a schema.org property
class SchemaProperty {
  /// Creates a new instance of [SchemaProperty]
  SchemaProperty({
    required this.name,
    required this.description,
    required this.types,
    required this.inClasses,
  });

  /// Creates a new instance of [SchemaProperty] from a JSON object
  factory SchemaProperty.fromJson(Map<String, dynamic> json) {
    return SchemaProperty(
      name: _getPossiblyTranslatedText(json['rdfs:label']),
      description: _getPossiblyTranslatedText(json['rdfs:comment']),
      types: _parseRelationship(json['schema:rangeIncludes']),
      inClasses: _parseRelationship(json['schema:domainIncludes']),
    );
  }

  /// The name of the property
  /// This will be used as the property name as declared in code in the class
  final String name;

  /// The description of the property
  /// This will be used as a code comment on the property
  final String description;

  /// The types of the property
  /// These are the possible types that should be accepted on this property.
  /// It will be used to assert the type of the property in the class during
  /// instantiation and serialization to JSON.
  final List<String> types;

  /// The classes that this property belongs to
  /// A list of [SchemaClass.name] that this property belongs to.
  final List<String> inClasses;

  /// The declared type of the property
  /// This is the type that will be declared in code for the property.
  /// If the property has more than one supported type, it will be declared
  /// as `dynamic`. Otherwise it will be declared as the single type that is
  /// present in the [types] list.
  String get declaredType => types.length > 1 ? 'dynamic' : types.first;
}

/// Represents a schema.org enumeration
class SchemaEnum {
  /// Creates a new instance of [SchemaEnum]
  SchemaEnum({
    required this.name,
    required this.description,
  });

  /// Creates a new instance of [SchemaEnum] from a JSON object
  factory SchemaEnum.fromJson(Map<String, dynamic> json) {
    return SchemaEnum(
      name: _getPossiblyTranslatedText(json['rdfs:label']),
      description: _getPossiblyTranslatedText(json['rdfs:comment']),
    );
  }

  /// The name of the enum as it will be defined in code
  final String name;

  /// The description of the enum
  /// This will be used as a enum comment on the class
  final String description;

  /// The values of the enumeration
  final List<SchemaEnumValue> values = [];
}

/// Represents a schema.org enumeration value
class SchemaEnumValue {
  /// Creates a new instance of [SchemaEnumValue]
  SchemaEnumValue({
    required this.name,
    required this.description,
  });

  /// Creates a new instance of [SchemaEnumValue] from a JSON object
  factory SchemaEnumValue.fromJson(Map<String, dynamic> json) {
    return SchemaEnumValue(
      name: _getPossiblyTranslatedText(json['rdfs:label']),
      description: _getPossiblyTranslatedText(json['rdfs:comment']),
    );
  }

  /// The name of the enumeration value
  /// This will be used as the value of the enumeration in code.
  final String name;

  /// The description of the enumeration value
  /// This will be used as a code comment on the enumeration value.
  final String description;
}
