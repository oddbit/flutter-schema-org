// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/nonprofit_type.dart';

/// NLNonprofitType: Non-profit organization type originating from the
/// Netherlands.
/// See https://schema.org/NLNonprofitType
enum SchemaNLNonprofitType implements SchemaNonprofitType {
  /// NonprofitANBI: Non-profit type referring to a Public Benefit
  /// Organization (NL).
  nonprofitANBI('https://schema.org/NonprofitANBI'),

  /// NonprofitSBBI: Non-profit type referring to a Social Interest
  /// Promoting Institution (NL).
  nonprofitSBBI('https://schema.org/NonprofitSBBI');

  /// Constructor for [SchemaNLNonprofitType]
  const SchemaNLNonprofitType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaNLNonprofitType] to JSON-LD
  @override
  String toJsonLd() => value;
}
