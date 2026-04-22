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
import 'package:schema_org/schemas/price_specification.dart';

/// A description of costs to the patient under a given network or formulary.
/// See https://schema.org/HealthPlanCostSharingSpecification
class SchemaHealthPlanCostSharingSpecification extends SchemaIntangible {
  /// Is this a closed set?
  String? healthPlanCoinsuranceOption;

  /// The rate of coinsurance expressed as a number between 0.0 and 1.0.
  num? healthPlanCoinsuranceRate;

  /// The copay amount.
  SchemaPriceSpecification? healthPlanCopay;

  /// Is this a closed set?
  String? healthPlanCopayOption;

  /// The category or type of pharmacy associated with this cost sharing.
  String? healthPlanPharmacyCategory;

  /// Create a new instance of [SchemaHealthPlanCostSharingSpecification]
  SchemaHealthPlanCostSharingSpecification({
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
    this.healthPlanCoinsuranceOption,
    this.healthPlanCoinsuranceRate,
    this.healthPlanCopay,
    this.healthPlanCopayOption,
    this.healthPlanPharmacyCategory,
  });

  /// Serialize [SchemaHealthPlanCostSharingSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HealthPlanCostSharingSpecification',
        'healthPlanCoinsuranceOption':
            convertToJsonLd(healthPlanCoinsuranceOption, [String]),
        'healthPlanCoinsuranceRate':
            convertToJsonLd(healthPlanCoinsuranceRate, [num]),
        'healthPlanCopay':
            convertToJsonLd(healthPlanCopay, [SchemaPriceSpecification]),
        'healthPlanCopayOption':
            convertToJsonLd(healthPlanCopayOption, [String]),
        'healthPlanPharmacyCategory':
            convertToJsonLd(healthPlanPharmacyCategory, [String]),
      });
}
