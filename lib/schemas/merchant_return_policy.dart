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
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/country.dart';
import 'package:schema_org/schemas/return_fees_enumeration.dart';
import 'package:schema_org/schemas/return_label_source_enumeration.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/offer_item_condition.dart';
import 'package:schema_org/schemas/refund_type_enumeration.dart';
import 'package:schema_org/schemas/return_method_enumeration.dart';
import 'package:schema_org/schemas/merchant_return_enumeration.dart';
import 'package:schema_org/schemas/merchant_return_policy_seasonal_override.dart';
import 'package:schema_org/schemas/member_program_tier.dart';

/// A MerchantReturnPolicy provides information about product return policies
/// associated with an [SchemaOrganization], [SchemaProduct], or
/// [SchemaOffer].
/// See https://schema.org/MerchantReturnPolicy
class SchemaMerchantReturnPolicy extends SchemaIntangible {
  /// A property-value pair representing an additional characteristic of the
  /// entity, e.g. a product feature or another characteristic for which there
  /// is no matching property in schema.org.\n\nNote: Publishers should be
  /// aware that applications designed to use specific schema.org properties
  /// (e.g. https://schema.org/width, https://schema.org/color,
  /// https://schema.org/gtin13, ...) will typically expect such data to be
  /// provided using those properties, rather than using the generic
  /// property/value mechanism.
  SchemaPropertyValue? additionalProperty;

  /// A country where a particular merchant return policy applies to, for
  /// example the two-letter ISO 3166-1 alpha-2 country code.
  ///
  /// Supported types: [SchemaCountry], [String]
  dynamic applicableCountry;

  /// The type of return fees if the product is returned due to customer
  /// remorse.
  SchemaReturnFeesEnumeration? customerRemorseReturnFees;

  /// The method (from an enumeration) by which the customer obtains a return
  /// shipping label for a product returned due to customer remorse.
  SchemaReturnLabelSourceEnumeration? customerRemorseReturnLabelSource;

  /// The amount of shipping costs if a product is returned due to customer
  /// remorse. Applicable when property [SchemacustomerRemorseReturnFees]
  /// equals [SchemaReturnShippingFees].
  SchemaMonetaryAmount? customerRemorseReturnShippingFeesAmount;

  /// Are in-store returns offered? (For more advanced return methods use the
  /// [SchemareturnMethod] property.)
  bool? inStoreReturnsOffered;

  /// A predefined value from OfferItemCondition specifying the condition of
  /// the product or service, or the products or services included in the
  /// offer. Also used for product return policies to specify the condition of
  /// products accepted for returns.
  SchemaOfferItemCondition? itemCondition;

  /// The type of return fees for returns of defect products.
  SchemaReturnFeesEnumeration? itemDefectReturnFees;

  /// The method (from an enumeration) by which the customer obtains a return
  /// shipping label for a defect product.
  SchemaReturnLabelSourceEnumeration? itemDefectReturnLabelSource;

  /// Amount of shipping costs for defect product returns. Applicable when
  /// property [SchemaitemDefectReturnFees] equals [SchemaReturnShippingFees].
  SchemaMonetaryAmount? itemDefectReturnShippingFeesAmount;

  /// Specifies either a fixed return date or the number of days (from the
  /// delivery date) that a product can be returned. Used when the
  /// [SchemareturnPolicyCategory] property is specified as
  /// [SchemaMerchantReturnFiniteReturnWindow].
  ///
  /// Supported types: [String], [int]
  dynamic merchantReturnDays;

  /// Specifies a Web page or service by URL, for product returns.
  String? merchantReturnLink;

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

  /// The method (from an enumeration) by which the customer obtains a return
  /// shipping label for a product returned for any reason.
  SchemaReturnLabelSourceEnumeration? returnLabelSource;

  /// The type of return method offered, specified from an enumeration.
  SchemaReturnMethodEnumeration? returnMethod;

  /// Specifies an applicable return policy (from an enumeration).
  SchemaMerchantReturnEnumeration? returnPolicyCategory;

  /// The country where the product has to be sent to for returns, for example
  /// "Ireland" using the [Schemaname] property of [SchemaCountry]. You can
  /// also provide the two-letter [ISO 3166-1 alpha-2 country
  /// code](http://en.wikipedia.org/wiki/ISO_3166-1). Note that this can be
  /// different from the country where the product was originally shipped from
  /// or sent to.
  ///
  /// Supported types: [SchemaCountry], [String]
  dynamic returnPolicyCountry;

  /// Seasonal override of a return policy.
  SchemaMerchantReturnPolicySeasonalOverride? returnPolicySeasonalOverride;

  /// Amount of shipping costs for product returns (for any reason). Applicable
  /// when property [SchemareturnFees] equals [SchemaReturnShippingFees].
  SchemaMonetaryAmount? returnShippingFeesAmount;

  /// The membership program tier(s) an Offer (or a PriceSpecification,
  /// OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid
  /// for.
  SchemaMemberProgramTier? validForMemberTier;

  /// Create a new instance of [SchemaMerchantReturnPolicy]
  SchemaMerchantReturnPolicy({
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
    this.additionalProperty,
    this.applicableCountry,
    this.customerRemorseReturnFees,
    this.customerRemorseReturnLabelSource,
    this.customerRemorseReturnShippingFeesAmount,
    this.inStoreReturnsOffered,
    this.itemCondition,
    this.itemDefectReturnFees,
    this.itemDefectReturnLabelSource,
    this.itemDefectReturnShippingFeesAmount,
    this.merchantReturnDays,
    this.merchantReturnLink,
    this.refundType,
    this.restockingFee,
    this.returnFees,
    this.returnLabelSource,
    this.returnMethod,
    this.returnPolicyCategory,
    this.returnPolicyCountry,
    this.returnPolicySeasonalOverride,
    this.returnShippingFeesAmount,
    this.validForMemberTier,
  });

  /// Serialize [SchemaMerchantReturnPolicy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MerchantReturnPolicy',
        'additionalProperty': convertToJsonLd(additionalProperty),
        'applicableCountry': convertToJsonLd(
            applicableCountry, (v) => v is SchemaCountry || v is String),
        'customerRemorseReturnFees': convertToJsonLd(customerRemorseReturnFees),
        'customerRemorseReturnLabelSource':
            convertToJsonLd(customerRemorseReturnLabelSource),
        'customerRemorseReturnShippingFeesAmount':
            convertToJsonLd(customerRemorseReturnShippingFeesAmount),
        'inStoreReturnsOffered': convertToJsonLd(inStoreReturnsOffered),
        'itemCondition': convertToJsonLd(itemCondition),
        'itemDefectReturnFees': convertToJsonLd(itemDefectReturnFees),
        'itemDefectReturnLabelSource':
            convertToJsonLd(itemDefectReturnLabelSource),
        'itemDefectReturnShippingFeesAmount':
            convertToJsonLd(itemDefectReturnShippingFeesAmount),
        'merchantReturnDays':
            convertToJsonLd(merchantReturnDays, (v) => v is String || v is int),
        'merchantReturnLink': convertToJsonLd(merchantReturnLink),
        'refundType': convertToJsonLd(refundType),
        'restockingFee': convertToJsonLd(
            restockingFee, (v) => v is SchemaMonetaryAmount || v is num),
        'returnFees': convertToJsonLd(returnFees),
        'returnLabelSource': convertToJsonLd(returnLabelSource),
        'returnMethod': convertToJsonLd(returnMethod),
        'returnPolicyCategory': convertToJsonLd(returnPolicyCategory),
        'returnPolicyCountry': convertToJsonLd(
            returnPolicyCountry, (v) => v is SchemaCountry || v is String),
        'returnPolicySeasonalOverride':
            convertToJsonLd(returnPolicySeasonalOverride),
        'returnShippingFeesAmount': convertToJsonLd(returnShippingFeesAmount),
        'validForMemberTier': convertToJsonLd(validForMemberTier),
      });
}
