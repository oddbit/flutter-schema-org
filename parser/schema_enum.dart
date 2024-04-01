import 'utils.dart';

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
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
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
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
    );
  }

  /// The name of the enumeration value
  /// This will be used as the value of the enumeration in code.
  final String name;

  /// The description of the enumeration value
  /// This will be used as a code comment on the enumeration value.
  final String description;
}
