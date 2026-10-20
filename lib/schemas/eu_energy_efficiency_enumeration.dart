// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/energy_efficiency_enumeration.dart';

/// Enumerates the EU energy efficiency classes A-G as well as A+, A++, and
/// A+++ as defined in EU directive 2017/1369.
/// See https://schema.org/EUEnergyEfficiencyEnumeration
enum SchemaEUEnergyEfficiencyEnumeration
    implements SchemaEnergyEfficiencyEnumeration {
  /// Represents EU Energy Efficiency Class A as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryA('https://schema.org/EUEnergyEfficiencyCategoryA'),

  /// Represents EU Energy Efficiency Class A+ as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryA1Plus(
      'https://schema.org/EUEnergyEfficiencyCategoryA1Plus'),

  /// Represents EU Energy Efficiency Class A++ as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryA2Plus(
      'https://schema.org/EUEnergyEfficiencyCategoryA2Plus'),

  /// Represents EU Energy Efficiency Class A+++ as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryA3Plus(
      'https://schema.org/EUEnergyEfficiencyCategoryA3Plus'),

  /// Represents EU Energy Efficiency Class B as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryB('https://schema.org/EUEnergyEfficiencyCategoryB'),

  /// Represents EU Energy Efficiency Class C as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryC('https://schema.org/EUEnergyEfficiencyCategoryC'),

  /// Represents EU Energy Efficiency Class D as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryD('https://schema.org/EUEnergyEfficiencyCategoryD'),

  /// Represents EU Energy Efficiency Class E as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryE('https://schema.org/EUEnergyEfficiencyCategoryE'),

  /// Represents EU Energy Efficiency Class F as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryF('https://schema.org/EUEnergyEfficiencyCategoryF'),

  /// Represents EU Energy Efficiency Class G as defined in EU energy
  /// labeling regulations.
  eUEnergyEfficiencyCategoryG('https://schema.org/EUEnergyEfficiencyCategoryG');

  /// Constructor for [SchemaEUEnergyEfficiencyEnumeration]
  const SchemaEUEnergyEfficiencyEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaEUEnergyEfficiencyEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
