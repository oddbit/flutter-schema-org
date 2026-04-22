// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

/// This method will return `true` if the provided type is one of the built in
/// data types in schema.org, which is translated to scalar types in dart.
bool isExcludedType(String type) => toTypeName(type) != type;

/// Converts a schema.org schema name to a Dart type name.
///
/// Schema.org defines a small set of [primitive DataTypes](https://schema.org/DataType)
/// that map to Dart scalars:
///
/// | Schema.org         | Dart     | Notes                                       |
/// |--------------------|----------|---------------------------------------------|
/// | Text / URL         | `String` | URLs are represented as strings, not `Uri`. |
/// | CssSelectorType    | `String` |                                             |
/// | PronounceableText  | `String` |                                             |
/// | XPathType          | `String` |                                             |
/// | Date / Time        | `String` | ISO 8601 encoded — no native `DateTime`.    |
/// | DateTime           | `String` | Same — serialized as ISO 8601 string.       |
/// | Integer            | `int`    |                                             |
/// | Number             | `num`    | Superclass of int and Float in Schema.org.  |
/// | Float              | `double` |                                             |
/// | Boolean            | `bool`   |                                             |
///
/// All other types are preserved by name so they can be referenced as Dart
/// classes (prefixed with `Schema` by the code generator).
String toTypeName(String typeName) {
  final name = typeName.split(':').last;
  switch (name) {
    case 'String':
    case 'Text':
    case 'URL':
    case 'CssSelectorType':
    case 'PronounceableText':
    case 'XPathType':
      return 'String';
    case 'Date':
    case 'Time':
    case 'DateTime':
      return 'String';
    case 'Integer':
      return 'int';
    case 'Number':
      return 'num';
    case 'Float':
      return 'double';
    case 'Boolean':
      return 'bool';
    case 'dynamic':
      return 'dynamic';
    default:
      return name;
  }
}

/// Reads a Schema.org attribute that may be either a plain string or a
/// localized map.
///
/// If [value] is a string, the portion after the first `:` is returned so
/// prefixed identifiers resolve cleanly:
///
///  - `"schema:Text"` → `"Text"`
///  - `"rdfs:label"`  → `"label"`
///  - `"Foobar"`      → `"Foobar"`
///
/// If [value] is a map it is assumed to be a JSON-LD language container and
/// the `@value` entry is returned, e.g.
/// `{"@language": "en", "@value": "itemLocation"}` → `"itemLocation"`.
String getPossiblyTranslatedText(dynamic value) {
  // Some nodes in the upstream distribution ship without a description or
  // label. Treat missing values as an empty string rather than crashing
  // the whole parse — an empty comment is harmless; aborting a 4000-node
  // generation for one ungraceful property is not.
  if (value == null) return '';

  if (value is String) {
    return value.split(':').last;
  }

  if (value is Map) {
    return (value['@value'] as String?) ?? '';
  }

  throw Exception('Invalid text type: $value');
}

/// Parses the relationship of a schema.org property.
///
/// There are three possible shapes in e.g. `rdfs:subClassOf`: it may be
/// missing (null), a single object, or a list of objects. Each entry has
/// an `@id` that identifies the target type. The result is normalized to
/// Dart type names (via [toTypeName]), deduplicated and sorted so that
/// downstream comparisons are stable across parser runs.
///
/// Identifiers that carry a namespace prefix other than `schema:` (for
/// example `fibo-fnd-agr-ctr:MutualContractualAgreement` in the Schema.org
/// dump) are dropped. Those foreign nodes are not part of the generated
/// Dart vocabulary, and letting them leak into the parent/range lists
/// would produce unresolved imports and dangling `extends` targets.
List<String> parseRelationship(dynamic json) {
  final raw = json == null
      ? <String>[]
      : json is List
          ? json.map((item) => item['@id'] as String).toList()
          : [json['@id'] as String];

  final filtered = raw.where((id) {
    final colonIndex = id.indexOf(':');
    if (colonIndex < 0) return true;
    return id.substring(0, colonIndex) == 'schema';
  });

  return filtered.map(toTypeName).toSet().toList()..sort();
}

/// Converts a Schema.org class name into a Dart-friendly snake_case file
/// name.
///
/// Dart library file names cannot start with a digit, so class names that
/// begin with a number are prefixed with `schema_` (see
/// [linter issue 3009](https://github.com/dart-lang/linter/issues/3009)).
///
/// Examples:
///  - `MyClass`        → `my_class.dart`
///  - `APICredentials` → `api_credentials.dart`
///  - `3DModel`        → `schema_3d_model.dart`
String classToFileName(String input) {
  final result = StringBuffer();

  // If the first character is a number, prepend 'schema_'
  if (input.isNotEmpty && RegExp(r'^[0-9]').hasMatch(input)) {
    result.write('schema_');
  }

  for (int i = 0; i < input.length; i++) {
    if (i > 0 &&
        input[i].toUpperCase() == input[i] &&
        input[i - 1].toUpperCase() != input[i - 1]) {
      result.write('_');
    }
    result.write(input[i]);
  }

  final snakeCase = result
      .toString()
      .replaceAllMapped(
          RegExp(r'([A-Z]+)([A-Z][a-z])'), (Match m) => '${m[1]}_${m[2]}')
      .toLowerCase();

  return '$snakeCase.dart';
}
