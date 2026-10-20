// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_intangible.dart';

/// A stage of a medical condition, such as 'Stage IIIa'.
/// See https://schema.org/MedicalConditionStage
class SchemaMedicalConditionStage extends SchemaMedicalIntangible {
  /// The stage represented as a number, e.g. 3.
  num? stageAsNumber;

  /// The substage, e.g. 'a' for Stage IIIa.
  String? subStageSuffix;

  /// Create a new instance of [SchemaMedicalConditionStage]
  SchemaMedicalConditionStage({
    super.additionalType,
    super.alternateName,
    super.code,
    super.description,
    super.disambiguatingDescription,
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
    super.url,
    this.stageAsNumber,
    this.subStageSuffix,
  });

  /// Serialize [SchemaMedicalConditionStage] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalConditionStage',
        'stageAsNumber': convertToJsonLd(stageAsNumber),
        'subStageSuffix': convertToJsonLd(subStageSuffix),
      });
}
