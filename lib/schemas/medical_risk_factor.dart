// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_entity.dart';

/// A risk factor is anything that increases a person's likelihood of
/// developing or contracting a disease, medical condition, or complication.
/// See https://schema.org/MedicalRiskFactor
class SchemaMedicalRiskFactor extends SchemaMedicalEntity {
  /// The condition, complication, etc. influenced by this factor.
  SchemaMedicalEntity? increasesRiskOf;

  /// Create a new instance of [SchemaMedicalRiskFactor]
  SchemaMedicalRiskFactor({
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
    this.increasesRiskOf,
  });

  /// Serialize [SchemaMedicalRiskFactor] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalRiskFactor',
        'increasesRiskOf': convertToJsonLd(increasesRiskOf),
      });
}
