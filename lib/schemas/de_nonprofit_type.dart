// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/nonprofit_type.dart';

/// Non-profit organization type originating from Germany in accordance with
/// article 52 of the German fiscal code (Abgabenverordnung or AO).
/// See https://schema.org/DENonprofitType
enum SchemaDENonprofitType implements SchemaNonprofitType {
  /// Non-profit type referring to a charitable Cooperative (German
  /// Genossenschaft) that has been recognized by the tax authorities as a
  /// charitable non-profit.
  dECooperativeCharity('https://schema.org/DENonprofitType'),

  /// Non-profit type referring to a charitable Foundation (German
  /// Stiftung) that has been recognized by the tax authorities as a
  /// charitable non-profit.
  dEFoundationCharity('https://schema.org/DENonprofitType'),

  /// Non-profit type referring to a charitable Joint Stock Company (German
  /// gAG gemeinnützige Aktiengesellschaft) that has been recognized by the
  /// tax authorities as a charitable non-profit.
  dEJointStockCompanyCharity('https://schema.org/DENonprofitType'),

  /// Non-profit type referring to a charitable Common Stock Company
  /// (German gGmbH or gemeinnützige Gesellschaft mit beschränkter Haftung)
  /// that has been recognized by the tax authorities as a charitable
  /// non-profit.
  dELimitedLiabilityCharity('https://schema.org/DENonprofitType'),

  /// Non-profit type referring to a charitable association that is not
  /// registered with the German association register (gemeinnütziger
  /// Verein) and has been recognized by the tax authorities as a
  /// charitable non-profit.
  dENotRegisteredAssociationCharity('https://schema.org/DENonprofitType'),

  /// Non-profit type referring to a charitable government owned juridical
  /// person (German Körperschaft öffentlichen Rechts) that has been
  /// recognized by the tax authorities as a charitable non-profit.
  dEPublicCharity('https://schema.org/DENonprofitType'),

  /// Non-profit type referring to a charitable association that is
  /// registered with the German association register (german
  /// gemeinnütziger e.v. or gemeinnütziger eingetragener Verein) and has
  /// been recognized by the tax authorities as a charitable non-profit.
  dERegisteredAssociationCharity('https://schema.org/DENonprofitType');

  /// Constructor for [SchemaDENonprofitType]
  const SchemaDENonprofitType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDENonprofitType] to JSON-LD
  @override
  String toJsonLd() => value;
}
