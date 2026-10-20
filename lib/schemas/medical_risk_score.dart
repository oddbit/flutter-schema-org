// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_risk_estimator.dart';

/// A simple system that adds up the number of risk factors to yield a score
/// that is associated with prognosis, e.g. CHAD score, TIMI risk score.
/// See https://schema.org/MedicalRiskScore
class SchemaMedicalRiskScore extends SchemaMedicalRiskEstimator {
  /// The algorithm or rules to follow to compute the score.
  String? algorithm;

  /// Create a new instance of [SchemaMedicalRiskScore]
  SchemaMedicalRiskScore({
    super.additionalType,
    super.alternateName,
    super.code,
    super.description,
    super.disambiguatingDescription,
    super.estimatesRiskOf,
    super.funding,
    super.guideline,
    super.identifier,
    super.image,
    super.includedRiskFactor,
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
    this.algorithm,
  });

  /// Serialize [SchemaMedicalRiskScore] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalRiskScore',
        'algorithm': convertToJsonLd(algorithm),
      });
}
