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

/// A complex mathematical calculation requiring an online calculator, used
/// to assess prognosis. Note: use the url property of Thing to record any
/// URLs for online calculators.
/// See https://schema.org/MedicalRiskCalculator
class SchemaMedicalRiskCalculator extends SchemaMedicalRiskEstimator {
  /// Create a new instance of [SchemaMedicalRiskCalculator]
  SchemaMedicalRiskCalculator({
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
  });

  /// Serialize [SchemaMedicalRiskCalculator] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalRiskCalculator',
      });
}
