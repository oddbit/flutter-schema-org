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
import 'package:schema_org/schemas/refund_type_enumeration.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/return_fees_enumeration.dart';
import 'package:schema_org/schemas/return_method_enumeration.dart';
import 'package:schema_org/schemas/merchant_return_enumeration.dart';

/// A seasonal override of a return policy, for example used for holidays.
/// See https://schema.org/MerchantReturnPolicySeasonalOverride
class SchemaMerchantReturnPolicySeasonalOverride extends SchemaIntangible {
  /// The end date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? endDate;

  /// Specifies either a fixed return date or the number of days (from the
  /// delivery date) that a product can be returned. Used when the
  /// [SchemareturnPolicyCategory] property is specified as
  /// [SchemaMerchantReturnFiniteReturnWindow].
  ///
  /// Supported types: [String], [int]
  dynamic merchantReturnDays;

  /// A refund type, from an enumerated list.
  SchemaRefundTypeEnumeration? refundType;

  /// Use [SchemaMonetaryAmount] to specify a fixed restocking fee for product
  /// returns, or use [SchemaNumber] to specify a percentage of the product
  /// price paid by the customer.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  dynamic restockingFee;

  /// The type of return fees for purchased products (for any return reason).
  SchemaReturnFeesEnumeration? returnFees;

  /// The type of return method offered, specified from an enumeration.
  SchemaReturnMethodEnumeration? returnMethod;

  /// Specifies an applicable return policy (from an enumeration).
  SchemaMerchantReturnEnumeration? returnPolicyCategory;

  /// Amount of shipping costs for product returns (for any reason). Applicable
  /// when property [SchemareturnFees] equals [SchemaReturnShippingFees].
  SchemaMonetaryAmount? returnShippingFeesAmount;

  /// The start date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? startDate;

  /// Create a new instance of [SchemaMerchantReturnPolicySeasonalOverride]
  SchemaMerchantReturnPolicySeasonalOverride({
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
    this.endDate,
    this.merchantReturnDays,
    this.refundType,
    this.restockingFee,
    this.returnFees,
    this.returnMethod,
    this.returnPolicyCategory,
    this.returnShippingFeesAmount,
    this.startDate,
  });

  /// Serialize [SchemaMerchantReturnPolicySeasonalOverride] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MerchantReturnPolicySeasonalOverride',
        'endDate': convertToJsonLd(endDate),
        'merchantReturnDays':
            convertToJsonLd(merchantReturnDays, (v) => v is String || v is int),
        'refundType': convertToJsonLd(refundType),
        'restockingFee': convertToJsonLd(
            restockingFee, (v) => v is SchemaMonetaryAmount || v is num),
        'returnFees': convertToJsonLd(returnFees),
        'returnMethod': convertToJsonLd(returnMethod),
        'returnPolicyCategory': convertToJsonLd(returnPolicyCategory),
        'returnShippingFeesAmount': convertToJsonLd(returnShippingFeesAmount),
        'startDate': convertToJsonLd(startDate),
      });
}
