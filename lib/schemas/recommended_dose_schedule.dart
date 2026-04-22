// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/dose_schedule.dart';

/// A recommended dosing schedule for a drug or supplement as prescribed or
/// recommended by an authority or by the drug/supplement's manufacturer.
/// Capture the recommending authority in the recognizingAuthority property
/// of MedicalEntity.
/// See https://schema.org/RecommendedDoseSchedule
class SchemaRecommendedDoseSchedule extends SchemaDoseSchedule {
  /// Create a new instance of [SchemaRecommendedDoseSchedule]
  SchemaRecommendedDoseSchedule({
    super.additionalType,
    super.alternateName,
    super.code,
    super.description,
    super.disambiguatingDescription,
    super.doseUnit,
    super.doseValue,
    super.frequency,
    super.funding,
    super.guideline,
    super.identifier,
    super.image,
    super.legalStatus,
    super.mainEntityOfPage,
    super.medicineSystem,
    super.name,
    super.owner,
    super.potentialAction,
    super.recognizingAuthority,
    super.relevantSpecialty,
    super.sameAs,
    super.study,
    super.subjectOf,
    super.targetPopulation,
    super.url,
  });

  /// Serialize [SchemaRecommendedDoseSchedule] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'RecommendedDoseSchedule',
      });
}
