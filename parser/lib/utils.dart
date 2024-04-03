/// This method will return `true` if the provided type is one of the built in
/// data types in schema.org, which is translated to scalar types in dart.
bool isExcludedType(String type) => toTypeName(type) != type;

/// Converts a schema.org schema name to a easily recognizable class name
/// This makes it easier to reference the class in code to know that it
/// refers to Schema.org classes.
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
    case 'Number':
      return 'int';
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
String getPossiblyTranslatedText(dynamic value) {
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
List<String> parseRelationship(dynamic json) {
  return (json == null
          ? []
          : json is List
              ? json.map((item) => item['@id'] as String).toList()
              : [json['@id'] as String])
      .map((id) => toTypeName(id))
      .toList()
    ..sort();
}

// /// Converts a schema.org schema name to a Dart type name.
// /// Some common types in Schema.org can be converted to scalar Dart types:
// /// - schema:Text -> String
// /// - schema:Integer -> int
// /// ...etc
// String getTypeDeclaration(String name) {
//   final schema = name.split(':').last;
//   switch (schema) {
//     case 'Text':
//       return 'String';
//     case 'Integer':
//     case 'Number':
//       return 'int';
//     case 'Boolean':
//       return 'bool';
//     default:
//       return schema;
//   }
// }

/// Convert class names into dart naming standard names
/// This will convert the class name into a snake case file name and dart files
/// [should not start with a number](https://github.com/dart-lang/linter/issues/3009)
///
/// Example
///  - MyClass => my_class.dart
///  - APICredentials => api_credentials.dart
///  - 3DModel => schema_3d_model.dart
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
