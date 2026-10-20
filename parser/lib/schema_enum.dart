// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'package:schema_parser/schema_class.dart';
import 'utils.dart';

/// Represents a Schema.org enumeration node (any class that sits below
/// `Enumeration` in the graph).
///
/// Enumerations come in three shapes, and the getters below classify each
/// node so the code generator can pick the right template:
///
/// - **concrete enum** — a direct child of `Enumeration` with declared
///   values (e.g. `BookFormatType`). Emitted as a Dart `enum`.
/// - **abstract parent** — a direct child of `Enumeration` without values
///   (e.g. `StatusEnumeration`). Emitted as an abstract class so concrete
///   enums can implement it.
/// - **concrete child** — an enumeration that extends another enumeration
///   (not `Enumeration` directly) and declares its own values (e.g.
///   `ActionStatusType implements StatusEnumeration`).
class SchemaEnum extends SchemaClass {
  /// Creates a new instance of [SchemaEnum].
  SchemaEnum({
    required super.name,
    required super.description,
    required super.parents,
    super.supersededBy,
  });

  /// Creates a new instance of [SchemaEnum] from a JSON-LD node.
  factory SchemaEnum.fromJson(Map<String, dynamic> json) {
    return SchemaEnum(
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
      parents: parseRelationship(json['rdfs:subClassOf']),
      supersededBy: parseRelationship(json['schema:supersededBy']),
    );
  }

  /// Whether this enumeration is an abstract grouping without its own
  /// values (a direct child of `Enumeration` with nothing declared under
  /// it).
  bool get isAbstract => parents.first == 'Enumeration' && values.isEmpty;

  /// Whether this enumeration declares concrete values.
  bool get implementsValues => values.isNotEmpty;

  /// Whether this enumeration is a concrete child of another abstract
  /// enumeration (i.e. its parent is not `Enumeration` itself) *and* it
  /// declares values. The generated enum will `implements` the parent.
  bool get implementsParent =>
      parents.first != 'Enumeration' && implementsValues;

  /// Declared enumeration values. Populated after construction by the
  /// parser as it encounters `@type: schema:<ThisEnum>` nodes.
  final List<SchemaEnumValue> values = [];
}

/// Represents a single value within a [SchemaEnum].
class SchemaEnumValue {
  /// Creates a new instance of [SchemaEnumValue].
  SchemaEnumValue({
    required this.id,
    required this.name,
    required this.description,
    this.supersededBy = const [],
  });

  /// Creates a new instance of [SchemaEnumValue] from a JSON-LD node.
  factory SchemaEnumValue.fromJson(Map<String, dynamic> json) {
    return SchemaEnumValue(
      id: (json['@id'] as String).split(':').last,
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
      supersededBy: parseRelationship(json['schema:supersededBy']),
    );
  }

  /// Schema.org identifier of this member (e.g. `InStock`), which forms
  /// its canonical URL `https://schema.org/<id>`.
  final String id;

  /// Enumeration value name — lower-camel-cased to form the Dart member.
  final String name;

  /// Human-readable description of this value, used as a doc comment.
  final String description;

  /// Replacements declared via `schema:supersededBy`. When non-empty the
  /// generator annotates the emitted enum member with `@Deprecated`.
  final List<String> supersededBy;

  /// Whether Schema.org has marked this enum value as deprecated.
  bool get isDeprecated => supersededBy.isNotEmpty;
}
