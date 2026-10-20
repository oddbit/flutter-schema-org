// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/people_audience.dart';

/// A set of characteristics describing parents, who can be interested in
/// viewing some content.
/// See https://schema.org/ParentAudience
class SchemaParentAudience extends SchemaPeopleAudience {
  /// Maximal age of the child.
  num? childMaxAge;

  /// Minimal age of the child.
  num? childMinAge;

  /// Create a new instance of [SchemaParentAudience]
  SchemaParentAudience({
    super.additionalType,
    super.alternateName,
    super.audienceType,
    super.description,
    super.disambiguatingDescription,
    super.geographicArea,
    super.healthCondition,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.requiredGender,
    super.requiredMaxAge,
    super.requiredMinAge,
    super.sameAs,
    super.subjectOf,
    super.suggestedAge,
    super.suggestedGender,
    super.suggestedMaxAge,
    super.suggestedMeasurement,
    super.suggestedMinAge,
    super.url,
    this.childMaxAge,
    this.childMinAge,
  });

  /// Serialize [SchemaParentAudience] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ParentAudience',
        'childMaxAge': convertToJsonLd(childMaxAge),
        'childMinAge': convertToJsonLd(childMinAge),
      });
}
