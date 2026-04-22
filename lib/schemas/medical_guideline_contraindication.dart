// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_guideline.dart';

/// A guideline contraindication that designates a process as harmful and
/// where quality of the data supporting the contraindication is sound.
/// See https://schema.org/MedicalGuidelineContraindication
class SchemaMedicalGuidelineContraindication extends SchemaMedicalGuideline {
  /// Create a new instance of [SchemaMedicalGuidelineContraindication]
  SchemaMedicalGuidelineContraindication({
    super.additionalType,
    super.alternateName,
    super.code,
    super.description,
    super.disambiguatingDescription,
    super.evidenceLevel,
    super.evidenceOrigin,
    super.funding,
    super.guideline,
    super.guidelineDate,
    super.guidelineSubject,
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
    super.url,
  });

  /// Serialize [SchemaMedicalGuidelineContraindication] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalGuidelineContraindication',
      });
}
