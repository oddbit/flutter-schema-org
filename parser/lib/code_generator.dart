// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'dart:io';

import 'schema_type.dart';
import 'schema_enum.dart';
import 'schema_property.dart';
import 'utils.dart';

/// File header emitted at the top of every generated schema file.
///
/// The header preserves Oddbit's copyright and points downstream readers to
/// the licence and attribution files. It is emitted by all generators so
/// that regenerating the schemas does not strip attribution.
///
/// The `ignore_for_file` directive silences the analyzer's
/// `deprecated_member_use_from_same_package` lint: when a class forwards
/// a deprecated inherited field via `super.<name>` the analyzer flags the
/// forwarding site, not the caller. We still want the `@Deprecated`
/// annotation to warn actual callers — so we suppress only the internal
/// forwarding noise in generated code.
const String _generatedFileHeader = '''
// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package
''';

/// Dart built-in types that must not be emitted as `import 'package:...'`.
const List<String> _excludedImports = [
  'String',
  'int',
  'num',
  'double',
  'bool',
  'dynamic'
];

/// Output directory for generated schema files.
///
/// Defaults to `../lib/schemas` (relative to the parser working directory,
/// preserving the original behaviour) but can be overridden from the CLI
/// so regenerating into a scratch directory works without shell tricks.
String outputDirectory = '../lib/schemas';

void writeToFile(StringBuffer sb, String schemaName) {
  final directory = Directory(outputDirectory);

  if (!directory.existsSync()) {
    directory.createSync(recursive: true);
  }

  final fileName = classToFileName(schemaName);
  File('${directory.path}/$fileName').writeAsStringSync(sb.toString());
}

/// Generate a Dart `enum` that implements [SchemaSerializable] (directly or
/// via an abstract parent enumeration).
///
/// Schema.org enumerations carry their values as separate nodes (see
/// `SchemaEnumValue`). For each value we emit a member whose associated
/// string value is the enumeration URL — this is what the `toJsonLd` getter
/// emits when the enum participates in serialization.
///
/// [abstractEnumNames] is the set of enum names that were emitted as
/// *abstract classes* (no values of their own). A Dart enum can implement
/// an abstract class but cannot implement another enum, so this set tells
/// the generator when falling back to `implements SchemaSerializable` is
/// the only valid option (e.g. for enumerations whose Schema.org parent
/// is itself a concrete enumeration like `SizeSystemEnumeration`).
void generateEnumCode(
  StringBuffer sb,
  SchemaEnum schemaEnum, {
  Set<String> abstractEnumNames = const {},
}) {
  sb.write(_generatedFileHeader);
  sb.writeln();

  final parentName = schemaEnum.parents.isNotEmpty
      ? schemaEnum.parents.first
      : null;
  final canImplementParent =
      schemaEnum.implementsParent && abstractEnumNames.contains(parentName);

  if (canImplementParent) {
    _writeImportStatement(parentName!, sb);
  } else {
    sb.writeln("import 'package:schema_org/src/schema_serializable.dart';");
  }

  String enumCodeName = _toCodeName(schemaEnum.name);
  if (schemaEnum.values.isEmpty) {
    stderr.writeln('Enum ${schemaEnum.name} has no values');
    return;
  }

  // -----------------------------------------------------------
  // Write code for the enum

  _writeCodeComment(sb, schemaEnum.description);
  sb.writeln('/// See https://schema.org/${schemaEnum.name}');
  if (schemaEnum.isDeprecated) {
    sb.writeln(_deprecationAnnotation(
      subject: schemaEnum.name,
      supersededBy: schemaEnum.supersededBy,
    ));
  }
  sb.write('enum $enumCodeName');
  if (canImplementParent) {
    sb.write(' implements ${_toCodeName(parentName!)}');
  } else {
    sb.write(' implements SchemaSerializable');
  }
  sb.writeln(' {');

  // Iterate over values for enum members.
  final lastValue = schemaEnum.values.last;
  for (final value in schemaEnum.values) {
    String valueName = value.name[0].toLowerCase() + value.name.substring(1);
    _writeCodeComment(sb, value.description, 1);
    if (value.isDeprecated) {
      // Indent to two spaces so the annotation sits on the enum value,
      // not the enclosing declaration. Enum value replacements are
      // sibling members (not Dart classes), so they stay unprefixed.
      sb.writeln('  ${_deprecationAnnotation(
        subject: value.name,
        supersededBy: value.supersededBy,
        context: schemaEnum.name,
        replacementsAreClasses: false,
      )}');
    }
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
  // Every concrete enum must override the abstract `toJsonLd` contract,
  // whether it is inherited from [SchemaSerializable] directly or via an
  // abstract parent enumeration (which also declares the method).
  sb.writeln('  @override');
  sb.writeln('  String toJsonLd() => value;');
  sb.writeln('}');
}

/// Generate an abstract class representing the inheritance structure of a
/// Schema.org enumeration that has no values declared directly (for
/// example, `StatusEnumeration`).
///
/// The abstract parent declares the serialization contract so concrete
/// enumerations that implement it are forced to produce a JSON-LD value.
void generateAbstractEnumCode(StringBuffer sb, SchemaEnum schemaEnum) {
  sb.write(_generatedFileHeader);
  sb.writeln();
  sb.writeln("import 'package:schema_org/src/schema_serializable.dart';");

  String enumCodeName = _toCodeName(schemaEnum.name);

  _writeCodeComment(sb, schemaEnum.description);
  sb.writeln('/// See https://schema.org/${schemaEnum.name}');
  if (schemaEnum.isDeprecated) {
    sb.writeln(_deprecationAnnotation(
      subject: schemaEnum.name,
      supersededBy: schemaEnum.supersededBy,
    ));
  }
  sb.writeln('abstract class $enumCodeName implements SchemaSerializable {}');
}

/// Generate code for [SchemaType] and write it to the StringBuffer [sb].
///
/// The emitted class uses real Dart inheritance: it `extends` its first
/// Schema.org parent (so `SchemaPerson is SchemaThing` holds at compile
/// time) and `implements` any additional parents. Only properties
/// declared directly by this class — plus properties introduced by
/// implemented (non-extended) parents — are re-declared; the rest are
/// inherited via the extends chain. `toJsonLd()` merges `super.toJsonLd()`
/// with the fields declared on this class and overrides `@type`.
///
/// The root of the hierarchy (`Thing`) has no parents and therefore
/// `implements SchemaSerializable` directly and declares every one of its
/// fields itself.
///
/// Dart has no union types, so properties with multiple possible
/// Schema.org ranges are declared as `dynamic` and validated at
/// serialization time by `convertToJsonLd`.
void generateClassCode(
  StringBuffer sb,
  SchemaType schemaClass,
  List<SchemaType> classes,
) {
  sb.write(_generatedFileHeader);
  sb.writeln();

  final classCodeName = _toCodeName(schemaClass.name);
  final parents = schemaClass.parents;

  // Only concrete classes are valid `extends` targets. Abstract parents
  // (e.g. `SchemaMedicalEnumeration`, which is emitted as an empty
  // abstract class under /schemas but lives in the enum set) do not
  // carry an implementation of `toJsonLd` and must be implemented, not
  // extended. Pick the first concrete parent available and push the
  // rest onto the implements list.
  final classNames = classes.map((c) => c.name).toSet();
  String? extendsParentName;
  final implementsParentNames = <String>[];
  for (final p in parents) {
    if (extendsParentName == null && classNames.contains(p)) {
      extendsParentName = p;
    } else {
      implementsParentNames.add(p);
    }
  }
  final hasExtends = extendsParentName != null;

  // Partition properties into "inherited via extends" (not re-declared)
  // and "declared on this class" (own + anything implemented parents add
  // that extends doesn't already cover).
  final inheritedNames = hasExtends
      ? _transitivePropertyNames(extendsParentName, classes)
      : <String>{};

  // Seed the `seen` set with everything inherited via `extends` so we
  // don't redeclare a field the parent already provides. Without this
  // classes like `WorkBasedProgram` end up with `occupationalCategory`
  // both inherited and redeclared, which the analyzer then rejects as a
  // duplicate_definition.
  final declaredProperties = <SchemaProperty>[];
  final seenNames = <String>{...inheritedNames};
  for (final p in schemaClass.properties) {
    if (seenNames.add(p.name)) declaredProperties.add(p);
  }
  for (final parentName in implementsParentNames) {
    for (final p in _transitiveProperties(parentName, classes)) {
      if (seenNames.add(p.name)) declaredProperties.add(p);
    }
  }

  // ---------------------------------------------------------------
  // Imports

  if (!hasExtends) {
    sb.writeln("import 'package:schema_org/src/schema_serializable.dart';");
  }
  sb.writeln("import 'package:schema_org/src/utils.dart';");
  if (hasExtends) {
    _writeImportStatement(extendsParentName, sb);
  }
  for (final parent in implementsParentNames) {
    _writeImportStatement(parent, sb);
  }
  // Property type imports — only covering the types we declare here.
  declaredProperties
      .expand((p) => p.schemaTypes)
      .toSet()
      .where((t) => !_excludedImports.contains(t))
      .forEach((t) => _writeImportStatement(t, sb));

  // ---------------------------------------------------------------
  // Class header

  sb.writeln();
  _writeCodeComment(sb, schemaClass.description);
  sb.writeln('/// See https://schema.org/${schemaClass.name}');
  if (schemaClass.isDeprecated) {
    sb.writeln(_deprecationAnnotation(
      subject: schemaClass.name,
      supersededBy: schemaClass.supersededBy,
    ));
  }
  sb.write('class $classCodeName');
  if (hasExtends) {
    sb.write(' extends ${_toCodeName(extendsParentName)}');
    if (implementsParentNames.isNotEmpty) {
      final impls =
          implementsParentNames.map(_toCodeName).toList()..sort();
      sb.write(' implements ${impls.join(', ')}');
    }
  } else {
    sb.write(' implements SchemaSerializable');
  }
  sb.writeln(' {');

  // ---------------------------------------------------------------
  // Property fields

  for (final property in declaredProperties) {
    final supportedTypes = property.schemaTypes.map(_toCodeName).toList();
    final propertyDescription = supportedTypes.length == 1
        ? property.description
        : '''${property.description}

        Supported types: ${supportedTypes.map((t) => '[$t]').join(', ')}
        ''';
    if (propertyDescription.isNotEmpty) {
      _writeCodeComment(sb, propertyDescription);
    }
    if (property.isDeprecated) {
      sb.writeln('  ${_deprecationAnnotation(
        subject: property.name,
        supersededBy: property.supersededBy,
        replacementsAreClasses: false,
      )}');
    }

    final declaredTypeName = _toCodeName(property.declaredType);
    final nullable = property.isNullable ? '?' : '';
    sb.writeln('  $declaredTypeName$nullable ${property.name};');
    sb.writeln();
  }

  // ---------------------------------------------------------------
  // Constructor

  sb.writeln();
  sb.writeln('  /// Create a new instance of [$classCodeName]');
  // Super-forwarded parameters for fields inherited via extends. Sorting
  // keeps the signature stable across runs.
  final inheritedNamesSorted = inheritedNames.toList()..sort();
  final hasParams =
      inheritedNamesSorted.isNotEmpty || declaredProperties.isNotEmpty;
  if (hasParams) {
    sb.write('  $classCodeName({');
    for (final name in inheritedNamesSorted) {
      sb.write('super.$name, ');
    }
    for (final property in declaredProperties) {
      sb.write('this.${property.name}, ');
    }
    sb.writeln('});');
  } else {
    // Avoid emitting `Name({});` — Dart rejects an empty named parameter
    // block. Plain parameterless constructor when we have nothing to
    // forward or declare.
    sb.writeln('  $classCodeName();');
  }
  sb.writeln();

  // ---------------------------------------------------------------
  // toJsonLd

  sb.writeln('  /// Serialize [$classCodeName] to JSON-LD');
  sb.writeln('  @override');
  sb.writeln('  Map<String, dynamic> toJsonLd() => removeEmpty({');
  if (hasExtends) {
    // Spread the parent's output first so inherited fields flow through,
    // then override `@type` to identify this concrete class.
    sb.writeln('    ...super.toJsonLd(),');
    sb.writeln('    \'@type\': \'${schemaClass.name}\',');
  } else {
    sb.writeln('    \'@context\': \'https://schema.org\',');
    sb.writeln('    \'@type\': \'${schemaClass.name}\',');
  }
  for (final property in declaredProperties) {
    final propertyTypes =
        property.schemaTypes.map(_toCodeName).toList().join(', ');
    sb.writeln(
      '    \'${property.name}\': convertToJsonLd(${property.name}, [$propertyTypes]),',
    );
  }
  sb.writeln('});');

  sb.writeln('}');
  sb.writeln();
}

/// Collect every property name transitively visible on [className] via the
/// Schema.org inheritance graph. Used to decide which fields the current
/// class inherits (and therefore should not redeclare) when it extends
/// another class.
Set<String> _transitivePropertyNames(
  String className,
  List<SchemaType> classes,
) =>
    _transitiveProperties(className, classes).map((p) => p.name).toSet();

/// Collect every [SchemaProperty] that is transitively visible on
/// [className]. The result preserves the first occurrence of each
/// property name so that the property's declared types flow through from
/// the most authoritative declaration.
Iterable<SchemaProperty> _transitiveProperties(
  String className,
  List<SchemaType> classes,
) sync* {
  final seen = <String>{};
  final start = classes.where((c) => c.name == className).toList();
  if (start.isEmpty) return;
  final origin = start.first;

  for (final p in origin.properties) {
    if (seen.add(p.name)) yield p;
  }
  for (final ancestorName in origin.familyTree) {
    final ancestor =
        classes.where((c) => c.name == ancestorName).toList();
    if (ancestor.isEmpty) continue;
    for (final p in ancestor.first.properties) {
      if (seen.add(p.name)) yield p;
    }
  }
}

/// Render a single-line `@Deprecated(...)` annotation for a node flagged
/// with `schema:supersededBy`.
///
/// [subject] is the name of the item being deprecated (a class name,
/// property name, or enum value name).
/// [supersededBy] holds the replacement name(s) declared by Schema.org.
/// [context], when supplied, is the enclosing schema the subject belongs
/// to (e.g. the parent enum name for enum-value deprecations).
/// [replacementsAreClasses] controls whether the replacement names are
/// turned into `SchemaFoo` class references. Class and enum deprecations
/// point at other classes, so the `Schema` prefix makes navigation work;
/// property and enum-value deprecations point at sibling members that are
/// *not* types and must stay unprefixed.
String _deprecationAnnotation({
  required String subject,
  required List<String> supersededBy,
  String? context,
  bool replacementsAreClasses = true,
}) {
  final replacements = replacementsAreClasses
      ? (supersededBy.map(_toCodeName).toList()..sort())
      : (List<String>.from(supersededBy)..sort());
  final replacementHint = replacements.isEmpty
      ? ''
      : 'Use ${replacements.map((r) => '[$r]').join(', ')}. ';
  final schemaName = context ?? subject;
  return "@Deprecated('${replacementHint}See https://schema.org/$schemaName')";
}

/// Split a text into lines of max 80 characters.
/// This splits long texts into arrays that can be written as code comments.
void _writeCodeComment(StringBuffer sb, String text, [int indent = 0]) {
  const lineLength = 80;
  final defaultClassReferenceRegExp = RegExp(r'\[\[(.*?)\]\]');
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
        // lineLength - 3 to account for '/// ', plus indent spaces.
        sb.writeln(line.toString());
        line.clear();
        line.write('$indentSpaces/// ');
      }
      if (line.length > (4 + indent * 2) && word != '\n') {
        // 4 to account for '/// ', plus indent spaces.
        line.write(' ');
      }
      if (word != '\n') {
        line.write(word);
      }
    }
    if (line.isNotEmpty) {
      sb.writeln(line.toString());
    }
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
    case 'num':
    case 'double':
    case 'bool':
    case 'dynamic':
      return name;
    default:
      return 'Schema$name';
  }
}
