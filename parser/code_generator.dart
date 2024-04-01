import 'dart:io';

import 'schema_class.dart';
import 'schema_enum.dart';
import 'schema_property.dart';
import 'utils.dart';

/// Classes that should be excluded from schema generation and import statements
const List<String> _excludedImports = [
  'String',
  'int',
  'bool',
  'double',
  'dynamic'
];

void writeToFile(String schemaName, StringBuffer sb) {
  final directory = Directory('../lib/schemas');

  if (!directory.existsSync()) {
    directory.createSync();
  }

  final fileName = classToFileName(schemaName);
  File('${directory.path}/$fileName').writeAsStringSync(sb.toString());
}

/// Write the top of the file
/// This will include the library import and the converter import
void generateFileTop(StringBuffer sb) {
  sb.writeln('library schema_org;');
  sb.writeln();
  sb.writeln("import 'package:schema_org/utils.dart';");
}

/// Generate code for [SchemaEnum] and write it to the StringBuffer [sb].
void generateEnumCode(SchemaEnum schemaEnum, StringBuffer sb) {
  String enumCodeName = _toCodeName(schemaEnum.name);
  if (schemaEnum.values.isEmpty) {
    stderr.writeln('Enum ${schemaEnum.name} has no values');
    return;
  }

  // -----------------------------------------------------------
  // Write code for the class

  _writeCodeComment(sb, schemaEnum.description);
  sb.writeln('/// See https://schema.org/${schemaEnum.name}');
  sb.writeln('enum $enumCodeName {');

  // Iterate over values for enum members
  final lastValue = schemaEnum.values.last;
  for (final value in schemaEnum.values) {
    String valueName = value.name[0].toLowerCase() + value.name.substring(1);
    _writeCodeComment(sb, value.description, 1);
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
  sb.writeln('  String toJsonLd() => value;');
  sb.writeln('}');
}

/// Generate code for [SchemaClass] and write it to the StringBuffer [sb].
/// The list of [classes] is used to determine the parent classes of the class.
void generateClassCode(
  SchemaClass schemaClass,
  List<SchemaClass> classes,
  StringBuffer sb,
) {
  final classCodeName = _toCodeName(schemaClass.name);
  final familyTree = [...schemaClass.parents, ...schemaClass.grandParents];

  // Get all properties including the parent properties
  final properties = List<SchemaProperty>.from(schemaClass.properties);
  for (final parent in familyTree) {
    try {
      final parentClass = classes.firstWhere((c) => c.name == parent);
      for (final property in parentClass.properties) {
        if (!properties.any((p) => p.name == property.name)) {
          properties.add(property);
        }
      }
    } catch (e) {
      stderr.writeln(
          'Parent class $parent not found for class ${schemaClass.name}');
    }
  }

  // -----------------------------------------------------------
  // Write import statements for all parents and types
  properties
      .expand((p) => p.schemaTypes)
      .toSet()
      .where((element) => !_excludedImports.contains(element))
      .forEach((type) => _writeImportStatement(type, sb));

  // -----------------------------------------------------------
  // Write code for the class

  sb.writeln();
  // Write class comment
  _writeCodeComment(sb, schemaClass.description);
  sb.writeln('/// See https://schema.org/${schemaClass.name}');
  // Write class declaration
  sb.writeln('class $classCodeName {');

  // -----------------------------------------------------------
  // Write properties

  for (var property in properties) {
    // Write property comment and clarify which types are supported if the type
    // has been defined as dynamic due to multiple type possibilities.
    final propertyDescription = property.schemaTypes.length == 1
        ? property.description
        : '${property.description}.\n\nSupported types: ${property.schemaTypes.map((p) => '[$p]').join(', ')}';

    if (propertyDescription.isNotEmpty) {
      _writeCodeComment(sb, propertyDescription);
    }

    // Write property declaration
    final declaredTypeName = _toCodeName(property.declaredType);
    sb.writeln(
      '  $declaredTypeName${property.isNullable ? '?' : ''} ${property.name};',
    );
    sb.writeln();
  }

  // -----------------------------------------------------------
  // Write constructor
  sb.writeln();
  sb.write('  /// Create a new instance of [$classCodeName]\n');
  sb.write('  $classCodeName({');
  for (final property in properties) {
    sb.write('this.${property.name}, ');
  }
  sb.writeln('});');
  sb.writeln();

  // -----------------------------------------------------------
  // Write toJson method
  sb.writeln('  /// Serialize [$classCodeName] to JSON-LD');
  sb.write('  Map<String, dynamic> toJsonLd() => {');
  sb.write('\'@context\': \'https://schema.org\', ');
  sb.write('\'@type\': \'${schemaClass.name}\', ');
  for (var property in properties) {
    final propertyTypes =
        property.schemaTypes.map((t) => _toCodeName(t)).toList().join(', ');
    sb.write(
      '\'${property.name}\': convertToJsonLd(${property.name}, [$propertyTypes]), ',
    );
  }
  sb.writeln('};');

  // End class declaration
  sb.writeln('}');
  sb.writeln();
}

/// Split a text into lines of 65 characters
/// This splits long texts into arrays that can be written as code comments.
void _writeCodeComment(StringBuffer sb, String text, [int indent = 0]) {
  final sanitized = text.replaceAll(RegExp(r' +'), ' ').trim();
  List<String> words = sanitized.split(RegExp(r' |\n|\.\s'));

  String indentSpaces = ' ' * indent * 2;
  StringBuffer line = StringBuffer('$indentSpaces/// ');

  for (var word in words) {
    if (word == '\n' || (line.length + word.length + 1) > (68 + indent * 2)) {
      // 68 to account for '/// ', plus indent spaces
      // Append line to sb and start a new line
      sb.writeln(line.toString());
      line.clear();
      line.write('$indentSpaces/// ');
    }
    if (line.length > (4 + indent * 2) && word != '\n') {
      // 4 to account for '/// ', plus indent spaces
      line.write(' ');
    }
    if (word != '\n') {
      line.write(word);
    }
  }

  // Sanitize and append the last line if not empty
  final sanitizedLine = line.toString().trim();
  if (sanitizedLine.isNotEmpty) {
    sb.writeln(sanitizedLine);
  }
}

void _writeImportStatement(String typeName, StringBuffer sb) {
  if (!_toCodeName(typeName).startsWith('Schema')) return;

  sb.writeln(
      "import 'package:schema_org/schemas/${classToFileName(typeName)}';");
}

String _toCodeName(name) {
  switch (name) {
    case 'String':
    case 'int':
    case 'double':
    case 'bool':
    case 'dynamic':
      return name;
    default:
      return 'Schema$name';
  }
}
