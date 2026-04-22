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
import 'package:schema_org/schemas/medical_risk_factor.dart';

/// Any rule set or interactive tool for estimating the risk of developing a
/// complication or condition.
/// See https://schema.org/MedicalRiskEstimator
class SchemaMedicalRiskEstimator extends SchemaMedicalEntity {
  /// The condition, complication, or symptom whose risk is being estimated.
  SchemaMedicalEntity? estimatesRiskOf;

  /// A modifiable or non-modifiable risk factor included in the calculation,
  /// e.g. age, coexisting condition.
  SchemaMedicalRiskFactor? includedRiskFactor;

  /// Create a new instance of [SchemaMedicalRiskEstimator]
  SchemaMedicalRiskEstimator({
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
    this.estimatesRiskOf,
    this.includedRiskFactor,
  });

  /// Serialize [SchemaMedicalRiskEstimator] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalRiskEstimator',
        'estimatesRiskOf':
            convertToJsonLd(estimatesRiskOf, [SchemaMedicalEntity]),
        'includedRiskFactor':
            convertToJsonLd(includedRiskFactor, [SchemaMedicalRiskFactor]),
      });
}
