// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

/// Base class shared by [SchemaType] (regular classes) and `SchemaEnum`
/// (enumerations).
///
/// Captures the identity, human-readable description and declared
/// inheritance relationships of a Schema.org node. The full ancestry is
/// stored in two buckets so direct parents and transitive ones can be
/// inspected separately; see [familyTree] for the merged view.
abstract class SchemaClass {
  /// Creates a new instance of [SchemaClass].
  SchemaClass({
    required this.name,
    required this.description,
    required this.parents,
    this.supersededBy = const [],
  });

  /// The class name as it will appear in generated code.
  final String name;

  /// Human-readable description, used as a class doc comment.
  final String description;

  /// Direct parents declared on the Schema.org node (`rdfs:subClassOf`).
  final List<String> parents;

  /// Transitive ancestors computed by the parser as it walks the graph.
  ///
  /// Populated after construction because the full graph must be loaded
  /// before the ancestry of any single node can be resolved.
  final List<String> grandParents = [];

  /// Replacements declared via `schema:supersededBy`. When non-empty the
  /// code generator annotates the emitted class / enum with `@Deprecated`
  /// and points callers at the replacement(s).
  final List<String> supersededBy;

  /// Whether Schema.org has marked this node as deprecated.
  bool get isDeprecated => supersededBy.isNotEmpty;

  /// Full ancestry (direct + transitive), deduplicated.
  List<String> get familyTree => <String>{...parents, ...grandParents}.toList();
}
