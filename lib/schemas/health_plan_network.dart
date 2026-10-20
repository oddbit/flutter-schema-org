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

/// A US-style health insurance plan network.
/// See https://schema.org/HealthPlanNetwork
class SchemaHealthPlanNetwork extends SchemaIntangible {
  /// The costs to the patient for services under this network or formulary.
  ///
  /// Supported types: [SchemaHealthPlanCostSharingSpecification], [bool]
  dynamic healthPlanCostSharing;

  /// Name or unique ID of network. (Networks are often reused across different
  /// insurance plans.)
  String? healthPlanNetworkId;

  /// The tier(s) for this network.
  String? healthPlanNetworkTier;

  /// Create a new instance of [SchemaHealthPlanNetwork]
  SchemaHealthPlanNetwork({
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
    this.healthPlanNetworkId,
    this.healthPlanNetworkTier,
  });

  /// Serialize [SchemaHealthPlanNetwork] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HealthPlanNetwork',
        'healthPlanCostSharing': convertToJsonLd(healthPlanCostSharing,
            (v) => v is SchemaHealthPlanCostSharingSpecification || v is bool),
        'healthPlanNetworkId': convertToJsonLd(healthPlanNetworkId),
        'healthPlanNetworkTier': convertToJsonLd(healthPlanNetworkTier),
      });
}
