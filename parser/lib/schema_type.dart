// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'package:schema_parser/schema_class.dart';
import 'package:schema_parser/schema_property.dart';
import 'package:schema_parser/utils.dart';

/// Represents a concrete Schema.org type (anything that is not an
/// `Enumeration`).
///
/// Properties are populated after construction by the CLI, which walks the
/// full Schema.org graph and attaches each `rdf:Property` whose domain
/// includes this type.
class SchemaType extends SchemaClass {
  /// Creates a new instance of [SchemaType].
  SchemaType({
    required super.name,
    required super.description,
    required super.parents,
    super.supersededBy,
  });

  /// Creates a new instance of [SchemaType] from a JSON-LD node.
  factory SchemaType.fromJson(Map<String, dynamic> json) {
    return SchemaType(
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
      parents: parseRelationship(json['rdfs:subClassOf']),
      supersededBy: parseRelationship(json['schema:supersededBy']),
    );
  }

  /// Properties attached directly to this class.
  ///
  /// Populated by the caller after all properties have been parsed. The
  /// code generator also pulls in inherited properties when emitting the
  /// Dart class, so concrete subclasses expose the flattened property set.
  final List<SchemaProperty> properties = [];
}
