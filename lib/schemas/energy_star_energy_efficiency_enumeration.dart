// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/energy_efficiency_enumeration.dart';

/// Used to indicate whether a product is EnergyStar certified.
/// See https://schema.org/EnergyStarEnergyEfficiencyEnumeration
enum SchemaEnergyStarEnergyEfficiencyEnumeration
    implements SchemaEnergyEfficiencyEnumeration {
  /// Represents EnergyStar certification.
  energyStarCertified('https://schema.org/EnergyStarCertified');

  /// Constructor for [SchemaEnergyStarEnergyEfficiencyEnumeration]
  const SchemaEnergyStarEnergyEfficiencyEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaEnergyStarEnergyEfficiencyEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
