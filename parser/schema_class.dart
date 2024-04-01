import 'schema_property.dart';
import 'utils.dart';

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
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
      parents: parseRelationship(json['rdfs:subClassOf']),
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
