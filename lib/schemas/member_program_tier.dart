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
import 'package:schema_org/schemas/tier_benefit_enumeration.dart';
import 'package:schema_org/schemas/credit_card.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/unit_price_specification.dart';
import 'package:schema_org/schemas/member_program.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// A MemberProgramTier specifies a tier under a loyalty (member) program,
/// for example "gold".
/// See https://schema.org/MemberProgramTier
class SchemaMemberProgramTier extends SchemaIntangible {
  /// A member benefit for a particular tier of a loyalty program.
  SchemaTierBenefitEnumeration? hasTierBenefit;

  /// a CreditCard if the tier requires sign up for a credit card, A
  /// UnitPriceSpecification if the user is required to pay a (periodic) fee,
  /// or a MonetaryAmount if the user needs to spend a minimum amount to join
  /// the tier. If a tier is free to join then this property does not need to
  /// be specified.
  ///
  /// Supported types: [SchemaCreditCard], [SchemaMonetaryAmount], [String],
  /// [SchemaUnitPriceSpecification]
  dynamic hasTierRequirement;

  /// The member program this tier is a part of.
  SchemaMemberProgram? isTierOf;

  /// The number of membership points earned by the member. If necessary, the
  /// unitText can be used to express the units the points are issued in. (E.g.
  /// stars, miles, etc.)
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic membershipPointsEarned;

  /// Create a new instance of [SchemaMemberProgramTier]
  SchemaMemberProgramTier({
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
    this.hasTierBenefit,
    this.hasTierRequirement,
    this.isTierOf,
    this.membershipPointsEarned,
  });

  /// Serialize [SchemaMemberProgramTier] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MemberProgramTier',
        'hasTierBenefit':
            convertToJsonLd(hasTierBenefit, [SchemaTierBenefitEnumeration]),
        'hasTierRequirement': convertToJsonLd(hasTierRequirement, [
          SchemaCreditCard,
          SchemaMonetaryAmount,
          String,
          SchemaUnitPriceSpecification
        ]),
        'isTierOf': convertToJsonLd(isTierOf, [SchemaMemberProgram]),
        'membershipPointsEarned': convertToJsonLd(
            membershipPointsEarned, [SchemaQuantitativeValue, num]),
      });
}
