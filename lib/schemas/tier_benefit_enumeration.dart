// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// An enumeration of possible benefits as part of a loyalty (members)
/// program.
/// See https://schema.org/TierBenefitEnumeration
enum SchemaTierBenefitEnumeration implements SchemaSerializable {
  /// Benefit of the tier is earning of loyalty points.
  tierBenefitLoyaltyPoints('https://schema.org/TierBenefitLoyaltyPoints'),

  /// Benefit of the tier is a members-only price.
  tierBenefitLoyaltyPrice('https://schema.org/TierBenefitLoyaltyPrice'),

  /// Benefit of the tier is members-only returns, for example free
  /// unlimited returns.
  tierBenefitLoyaltyReturns('https://schema.org/TierBenefitLoyaltyReturns'),

  /// Benefit of the tier is a members-only shipping price or speed (for
  /// example free shipping or 1-day shipping).
  tierBenefitLoyaltyShipping('https://schema.org/TierBenefitLoyaltyShipping');

  /// Constructor for [SchemaTierBenefitEnumeration]
  const SchemaTierBenefitEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaTierBenefitEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
