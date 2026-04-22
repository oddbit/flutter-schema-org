// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_sign.dart';

/// Vital signs are measures of various physiological functions in order to
/// assess the most basic body functions.
/// See https://schema.org/VitalSign
class SchemaVitalSign extends SchemaMedicalSign {
  /// Create a new instance of [SchemaVitalSign]
  SchemaVitalSign({
    super.additionalType,
    super.alternateName,
    super.associatedAnatomy,
    super.cause,
    super.code,
    super.description,
    super.differentialDiagnosis,
    super.disambiguatingDescription,
    super.drug,
    super.epidemiology,
    super.expectedPrognosis,
    super.funding,
    super.guideline,
    super.identifier,
    super.identifyingExam,
    super.identifyingTest,
    super.image,
    super.legalStatus,
    super.mainEntityOfPage,
    super.medicineSystem,
    super.name,
    super.naturalProgression,
    super.owner,
    super.pathophysiology,
    super.possibleComplication,
    super.possibleTreatment,
    super.potentialAction,
    super.primaryPrevention,
    super.recognizingAuthority,
    super.relevantSpecialty,
    super.riskFactor,
    super.sameAs,
    super.secondaryPrevention,
    super.signOrSymptom,
    super.stage,
    super.status,
    super.study,
    super.subjectOf,
    super.typicalTest,
    super.url,
  });

  /// Serialize [SchemaVitalSign] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'VitalSign',
      });
}
