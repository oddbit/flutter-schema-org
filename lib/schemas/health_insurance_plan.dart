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
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/health_plan_formulary.dart';
import 'package:schema_org/schemas/health_plan_network.dart';

/// A US-style health insurance plan, including PPOs, EPOs, and HMOs.
/// See https://schema.org/HealthInsurancePlan
class SchemaHealthInsurancePlan extends SchemaIntangible {
  /// The URL that goes directly to the summary of benefits and coverage for
  /// the specific standard plan or plan variation.
  String? benefitsSummaryUrl;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoint;

  /// TODO.
  String? healthPlanDrugOption;

  /// The tier(s) of drugs offered by this formulary or insurance plan.
  String? healthPlanDrugTier;

  /// The 14-character, HIOS-generated Plan ID number. (Plan IDs must be
  /// unique, even across different markets.)
  String? healthPlanId;

  /// The URL that goes directly to the plan brochure for the specific standard
  /// plan or plan variation.
  String? healthPlanMarketingUrl;

  /// Formularies covered by this plan.
  SchemaHealthPlanFormulary? includesHealthPlanFormulary;

  /// Networks covered by this plan.
  SchemaHealthPlanNetwork? includesHealthPlanNetwork;

  /// The standard for interpreting the Plan ID. The preferred is "HIOS". See
  /// the Centers for Medicare & Medicaid Services for more details.
  String? usesHealthPlanIdStandard;

  /// Create a new instance of [SchemaHealthInsurancePlan]
  SchemaHealthInsurancePlan({
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
    this.benefitsSummaryUrl,
    this.contactPoint,
    this.healthPlanDrugOption,
    this.healthPlanDrugTier,
    this.healthPlanId,
    this.healthPlanMarketingUrl,
    this.includesHealthPlanFormulary,
    this.includesHealthPlanNetwork,
    this.usesHealthPlanIdStandard,
  });

  /// Serialize [SchemaHealthInsurancePlan] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HealthInsurancePlan',
        'benefitsSummaryUrl': convertToJsonLd(benefitsSummaryUrl, [String]),
        'contactPoint': convertToJsonLd(contactPoint, [SchemaContactPoint]),
        'healthPlanDrugOption': convertToJsonLd(healthPlanDrugOption, [String]),
        'healthPlanDrugTier': convertToJsonLd(healthPlanDrugTier, [String]),
        'healthPlanId': convertToJsonLd(healthPlanId, [String]),
        'healthPlanMarketingUrl':
            convertToJsonLd(healthPlanMarketingUrl, [String]),
        'includesHealthPlanFormulary': convertToJsonLd(
            includesHealthPlanFormulary, [SchemaHealthPlanFormulary]),
        'includesHealthPlanNetwork': convertToJsonLd(
            includesHealthPlanNetwork, [SchemaHealthPlanNetwork]),
        'usesHealthPlanIdStandard':
            convertToJsonLd(usesHealthPlanIdStandard, [String]),
      });
}
