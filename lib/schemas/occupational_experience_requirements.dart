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

/// Indicates employment-related experience requirements, e.g.
/// [SchemamonthsOfExperience].
/// See https://schema.org/OccupationalExperienceRequirements
class SchemaOccupationalExperienceRequirements extends SchemaIntangible {
  /// Indicates the minimal number of months of experience required for a
  /// position.
  num? monthsOfExperience;

  /// Create a new instance of [SchemaOccupationalExperienceRequirements]
  SchemaOccupationalExperienceRequirements({
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
    this.monthsOfExperience,
  });

  /// Serialize [SchemaOccupationalExperienceRequirements] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'OccupationalExperienceRequirements',
        'monthsOfExperience': convertToJsonLd(monthsOfExperience, [num]),
      });
}
