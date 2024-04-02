/// Base class for schema types and enums
abstract class SchemaClass {
  /// Creates a new instance of [SchemaClass]
  SchemaClass({
    required this.name,
    required this.description,
    required this.parents,
  });

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

  /// Get a list of all parent relationships
  List<String> get familyTree => <String>{...parents, ...grandParents}.toList();
}
