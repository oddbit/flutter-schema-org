// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/property.dart';

/// The ConstraintNode type is provided to support usecases in which a node
/// in a structured data graph is described with properties which appear to
/// describe a single entity, but are being used in a situation where they
/// serve a more abstract purpose. A [SchemaConstraintNode] can be described
/// using [SchemaconstraintProperty] and [SchemanumConstraints]. These
/// constraint properties can serve a variety of purposes, and their values
/// may sometimes be understood to indicate sets of possible values rather
/// than single, exact and specific values.
/// See https://schema.org/ConstraintNode
class SchemaConstraintNode extends SchemaIntangible {
  /// Indicates a property used as a constraint. For example, in the definition
  /// of a [SchemaStatisticalVariable]. The value is a property, either from
  /// within Schema.org or from other compatible (e.g. RDF) systems such as
  /// DataCommons.org or Wikidata.org.
  ///
  /// Supported types: [SchemaProperty], [String]
  dynamic constraintProperty;

  /// Indicates the number of constraints property values defined for a
  /// particular [SchemaConstraintNode] such as [SchemaStatisticalVariable].
  /// This helps applications understand if they have access to a sufficiently
  /// complete description of a [SchemaStatisticalVariable] or other construct
  /// that is defined using properties on template-style nodes.
  int? numConstraints;

  /// Create a new instance of [SchemaConstraintNode]
  SchemaConstraintNode({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.constraintProperty,
    this.numConstraints,
  });

  /// Serialize [SchemaConstraintNode] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ConstraintNode',
        'constraintProperty':
            convertToJsonLd(constraintProperty, [SchemaProperty, String]),
        'numConstraints': convertToJsonLd(numConstraints, [int]),
      });
}
