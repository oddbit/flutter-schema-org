import 'package:schema_parser/utils.dart';

/// Represents a schema.org property
class SchemaProperty {
  /// Creates a new instance of [SchemaProperty]
  SchemaProperty({
    required this.name,
    required this.description,
    required this.schemaTypes,
    required this.inClasses,
  }) : declaredTypes = schemaTypes.map((t) => toTypeName(t)).toSet().toList();

  /// Creates a new instance of [SchemaProperty] from a JSON object
  factory SchemaProperty.fromJson(Map<String, dynamic> json) {
    return SchemaProperty(
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
      schemaTypes: parseRelationship(json['schema:rangeIncludes']),
      inClasses: parseRelationship(json['schema:domainIncludes']),
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
  final List<String> schemaTypes;

  /// The classes that this property belongs to
  /// A list of [SchemaClass.name] that this property belongs to.
  final List<String> inClasses;

  final List<String> declaredTypes;

  /// The declared type of the property
  /// This is the type that will be declared in code for the property.
  /// If the property has more than one supported type, it will be declared
  /// as `dynamic`. Otherwise it will be declared as the single type that is
  /// present in the [schemaTypes] list.
  String get declaredType =>
      declaredTypes.length > 1 ? 'dynamic' : schemaTypes.first;

  /// Whether the property is nullable
  /// Currently theres no way to determine if a property is nullable or not
  /// apart from that dynamic types can't be declared nullable
  bool get isNullable => declaredType != 'dynamic';
}
