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
import 'package:schema_org/schemas/health_plan_cost_sharing_specification.dart';

/// For a given health insurance plan, the specification for costs and
/// coverage of prescription drugs.
/// See https://schema.org/HealthPlanFormulary
class SchemaHealthPlanFormulary extends SchemaIntangible {
  /// The costs to the patient for services under this network or formulary.
  ///
  /// Supported types: [SchemaHealthPlanCostSharingSpecification], [bool]
  dynamic healthPlanCostSharing;

  /// The tier(s) of drugs offered by this formulary or insurance plan.
  String? healthPlanDrugTier;

  /// Whether prescriptions can be delivered by mail.
  bool? offersPrescriptionByMail;

  /// Create a new instance of [SchemaHealthPlanFormulary]
  SchemaHealthPlanFormulary({
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
    this.healthPlanCostSharing,
    this.healthPlanDrugTier,
    this.offersPrescriptionByMail,
  });

  /// Serialize [SchemaHealthPlanFormulary] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HealthPlanFormulary',
        'healthPlanCostSharing': convertToJsonLd(healthPlanCostSharing,
            [SchemaHealthPlanCostSharingSpecification, bool]),
        'healthPlanDrugTier': convertToJsonLd(healthPlanDrugTier, [String]),
        'offersPrescriptionByMail':
            convertToJsonLd(offersPrescriptionByMail, [bool]),
      });
}
