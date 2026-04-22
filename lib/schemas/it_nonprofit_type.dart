// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/nonprofit_type.dart';

/// Non-profit organization type originating from Italy.
/// See https://schema.org/ITNonprofitType
enum SchemaITNonprofitType implements SchemaNonprofitType {
  /// Non-profit type referring to Cooperatives with charitable missions
  /// (Ital. Cooperativa Sociale) according to Italian Law 112 of 2017.
  iTCooperativeCharity('https://schema.org/ITNonprofitType'),

  /// Non-profit type referring to associations providing financial aid to
  /// people need (Ital. Società di mutuo soccorso or SOMS) according to
  /// Italian Law 3818 of 1886.
  iTMutualAidCharity('https://schema.org/ITNonprofitType'),

  /// Non-profit type referring to companies with charitable missions
  /// (Ital. Imprese Sociali or IS) according to Italian Law 112 of 2017.
  iTSocialCompanyCharity('https://schema.org/ITNonprofitType'),

  /// Non-profit type referring to associations promoting charitable causes
  /// (Ital. Associazioni di promozione sociale or APS) according to
  /// Italian Law 383 of 2000.
  iTSocialPromotionCharity('https://schema.org/ITNonprofitType'),

  /// Non-profit type referring to Companies that organize sports
  /// activities for the public or inscribed members (Ital. Società
  /// Sportiva Dilettantistica or SSD) according to Italian Law 289 of
  /// 2002.
  iTSportCompanyCharity('https://schema.org/ITNonprofitType'),

  /// Non-profit type referring to associations organising charitable
  /// volunteer activities (Ital. Organizzazioni di volontariato or ODV)
  /// according to Italian Law 266 of 1991.
  iTVolunteerAssociationCharity('https://schema.org/ITNonprofitType');

  /// Constructor for [SchemaITNonprofitType]
  const SchemaITNonprofitType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaITNonprofitType] to JSON-LD
  @override
  String toJsonLd() => value;
}
