import 'package:schema_parser/schema_class.dart';
import 'package:schema_parser/schema_property.dart';
import 'package:schema_parser/utils.dart';

/// Represents a schema.org type
class SchemaType extends SchemaClass {
  /// Creates a new instance of [SchemaType]
  SchemaType({
    required super.name,
    required super.description,
    required super.parents,
  });

  /// Creates a new instance of [SchemaType] from a JSON object
  factory SchemaType.fromJson(Map<String, dynamic> json) {
    return SchemaType(
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
      parents: parseRelationship(json['rdfs:subClassOf']),
    );
  }

  /// The properties of this class
  /// Will be used to determine the properties that should be added on this
  /// class. Each property is defined in a [SchemaProperty] object.
  final List<SchemaProperty> properties = [];
}
