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
import 'package:schema_org/schemas/eu_energy_efficiency_enumeration.dart';
import 'package:schema_org/schemas/energy_efficiency_enumeration.dart';

///
/// //www.ftc.gov/enforcement/rules/rulemaking-regulatory-reform-proceedings/energy-water-use-labeling-consumer)
/// under the Energy Policy and Conservation Act (EPCA) in the US.
/// See https://schema.org/EnergyConsumptionDetails
class SchemaEnergyConsumptionDetails extends SchemaIntangible {
  /// Specifies the most energy efficient class on the regulated EU energy
  /// consumption scale for the product category a product belongs to. For
  /// example, energy consumption for televisions placed on the market after
  /// January 1, 2020 is scaled from D to A+++.
  SchemaEUEnergyEfficiencyEnumeration? energyEfficiencyScaleMax;

  /// Specifies the least energy efficient class on the regulated EU energy
  /// consumption scale for the product category a product belongs to. For
  /// example, energy consumption for televisions placed on the market after
  /// January 1, 2020 is scaled from D to A+++.
  SchemaEUEnergyEfficiencyEnumeration? energyEfficiencyScaleMin;

  /// Defines the energy efficiency Category (which could be either a rating
  /// out of range of values or a yes/no certification) for a product according
  /// to an international energy efficiency standard.
  SchemaEnergyEfficiencyEnumeration? hasEnergyEfficiencyCategory;

  /// Create a new instance of [SchemaEnergyConsumptionDetails]
  SchemaEnergyConsumptionDetails({
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
    this.energyEfficiencyScaleMax,
    this.energyEfficiencyScaleMin,
    this.hasEnergyEfficiencyCategory,
  });

  /// Serialize [SchemaEnergyConsumptionDetails] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EnergyConsumptionDetails',
        'energyEfficiencyScaleMax': convertToJsonLd(
            energyEfficiencyScaleMax, [SchemaEUEnergyEfficiencyEnumeration]),
        'energyEfficiencyScaleMin': convertToJsonLd(
            energyEfficiencyScaleMin, [SchemaEUEnergyEfficiencyEnumeration]),
        'hasEnergyEfficiencyCategory': convertToJsonLd(
            hasEnergyEfficiencyCategory, [SchemaEnergyEfficiencyEnumeration]),
      });
}
