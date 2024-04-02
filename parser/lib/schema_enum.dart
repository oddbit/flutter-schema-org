import 'package:schema_parser/schema_class.dart';
import 'utils.dart';

/// Represents a schema.org enumeration
class SchemaEnum extends SchemaClass {
  /// Creates a new instance of [SchemaEnum]
  SchemaEnum({
    required super.name,
    required super.description,
    required super.parents,
  });

  /// Creates a new instance of [SchemaEnum] from a JSON object
  factory SchemaEnum.fromJson(Map<String, dynamic> json) {
    return SchemaEnum(
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
      parents: parseRelationship(json['rdfs:subClassOf']),
    );
  }

  bool get isAbstract => parents.first == 'Enumeration' && values.isEmpty;
  bool get implementsValues => values.isNotEmpty;
  bool get implementsParent =>
      parents.first != 'Enumeration' && implementsValues;
  bool get isEnumValue => parents.first != 'Enumeration' && values.isEmpty;

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
