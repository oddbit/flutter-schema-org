import 'dart:io';

import 'schema_type.dart';
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

void writeToFile(StringBuffer sb, String schemaName) {
  final directory = Directory('../lib/schemas');

  if (!directory.existsSync()) {
    directory.createSync();
  }

  final fileName = classToFileName(schemaName);
  File('${directory.path}/$fileName').writeAsStringSync(sb.toString());
}

void generateEnumCode(StringBuffer sb, SchemaEnum schemaEnum) {
  if (schemaEnum.implementsParent) {
    _writeImportStatement(schemaEnum.parents.first, sb);
  } else {
    sb.writeln("import 'package:schema_org/src/schema_serializable.dart';");
  }

  String enumCodeName = _toCodeName(schemaEnum.name);
  if (schemaEnum.values.isEmpty) {
    stderr.writeln('Enum ${schemaEnum.name} has no values');
    return;
  }

  // -----------------------------------------------------------
  // Write code for the class

  _writeCodeComment(sb, schemaEnum.description);
  sb.writeln('/// See https://schema.org/${schemaEnum.name}');
  sb.write('enum $enumCodeName');
  if (schemaEnum.implementsParent) {
    sb.write(' implements ${_toCodeName(schemaEnum.parents.first)}');
  } else {
    sb.write(' implements SchemaSerializable');
  }
  sb.writeln(' {');

  // Iterate over values for enum members
  final lastValue = schemaEnum.values.last;
  for (final value in schemaEnum.values) {
    String valueName = value.name[0].toLowerCase() + value.name.substring(1);
    _writeCodeComment(sb, value.description, 1);
    sb.write('  $valueName(\'https://schema.org/${schemaEnum.name}\')');
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
  if (!schemaEnum.implementsParent) {
    sb.writeln('  @override');
  }
  sb.writeln('  String toJsonLd() => value;');
  sb.writeln('}');
}

/// Generate an abstract class to represent inheritance structure of an
/// enum that doesn't define any values directly in schema.org
void generateAbstractEnumCode(StringBuffer sb, SchemaEnum schemaEnum) {
  String enumCodeName = _toCodeName(schemaEnum.name);

  // -----------------------------------------------------------
  // Write code for the class

  _writeCodeComment(sb, schemaEnum.description);
  sb.writeln('/// See https://schema.org/${schemaEnum.name}');
  sb.writeln('abstract class $enumCodeName {}');
}

/// Generate code for [SchemaType] and write it to the StringBuffer [sb].
/// The list of [classes] is used to determine the parent classes of the class.
void generateClassCode(
  StringBuffer sb,
  SchemaType schemaClass,
  List<SchemaType> classes,
) {
  sb.writeln("import 'package:schema_org/src/schema_serializable.dart';");
  sb.writeln("import 'package:schema_org/src/utils.dart';");

  final classCodeName = _toCodeName(schemaClass.name);

  // Get all properties including the parent properties
  final properties = List<SchemaProperty>.from(schemaClass.properties);
  for (final parent in schemaClass.familyTree) {
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
  sb.writeln('class $classCodeName implements SchemaSerializable {');

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
  sb.writeln('  @override');
  sb.writeln('  Map<String, dynamic> toJsonLd() => removeEmpty({');
  sb.writeln('    \'@context\': \'https://schema.org\', ');
  sb.writeln('    \'@type\': \'${schemaClass.name}\', ');
  for (var property in properties) {
    final propertyTypes =
        property.schemaTypes.map((t) => _toCodeName(t)).toList().join(', ');
    sb.writeln(
      '    \'${property.name}\': convertToJsonLd(${property.name}, [$propertyTypes]), ',
    );
  }
  sb.writeln('});');

  // End class declaration
  sb.writeln('}');
  sb.writeln();
}

/// Split a text into lines of max 80 characters
/// This splits long texts into arrays that can be written as code comments.
void _writeCodeComment(StringBuffer sb, String text, [int indent = 0]) {
  const lineLength = 80;
  RegExp defaultClassReferenceRegExp = RegExp(r'\[\[(.*?)\]\]');
  String sanitized =
      text.replaceAllMapped(defaultClassReferenceRegExp, (match) {
    String matchedString = match.group(1)!;
    return "[${_toCodeName(matchedString)}]";
  }).trim();

  List<String> paragraphs = sanitized.split('\n\n');

  String indentSpaces = ' ' * indent * 2;

  for (var i = 0; i < paragraphs.length; i++) {
    var paragraph = paragraphs[i];
    List<String> words =
        paragraph.split(RegExp(r'\s')).where((e) => e.isNotEmpty).toList();

    StringBuffer line = StringBuffer('$indentSpaces/// ');

    for (var word in words) {
      if (word == '\n' ||
          (line.length + word.length + 1) > (lineLength - 3 - indent * 2)) {
        // lineLength - 3 to account for '/// ', plus indent spaces
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
    // Write the last line if it's not empty
    if (line.isNotEmpty) {
      sb.writeln(line.toString());
    }
    // Add a blank comment line between paragraphs, but not after the last paragraph
    if (i < paragraphs.length - 1) {
      sb.writeln('$indentSpaces/// ');
    }
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
