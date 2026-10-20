// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/fulfillment_type_enumeration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/service_period.dart';
import 'package:schema_org/schemas/shipping_conditions.dart';
import 'package:schema_org/schemas/member_program_tier.dart';

/// ShippingService represents the criteria used to determine if and how an
/// offer could be shipped to a customer.
/// See https://schema.org/ShippingService
class SchemaShippingService extends SchemaStructuredValue {
  /// Type of fulfillment applicable to the [SchemaShippingService].
  SchemaFulfillmentTypeEnumeration? fulfillmentType;

  /// The typical delay between the receipt of the order and the goods either
  /// leaving the warehouse or being prepared for pickup, in case the delivery
  /// method is on site pickup.
  ///
  /// In the context of [SchemaShippingDeliveryTime], Typical properties:
  /// minValue, maxValue, unitCode (d for DAY). This is by common convention
  /// assumed to mean business days (if a unitCode is used, coded as "d"), i.e.
  /// only counting days when the business normally operates.
  ///
  /// In the context of [SchemaShippingService], use the [SchemaServicePeriod]
  /// format, that contains the same information in a structured form, with
  /// cut-off time, business days and duration.
  ///
  /// Supported types: [SchemaQuantitativeValue], [SchemaServicePeriod]
  dynamic handlingTime;

  /// The conditions (constraints, price) applicable to the
  /// [SchemaShippingService].
  SchemaShippingConditions? shippingConditions;

  /// The membership program tier(s) an Offer (or a PriceSpecification,
  /// OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid
  /// for.
  SchemaMemberProgramTier? validForMemberTier;

  /// Create a new instance of [SchemaShippingService]
  SchemaShippingService({
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
    this.fulfillmentType,
    this.handlingTime,
    this.shippingConditions,
    this.validForMemberTier,
  });

  /// Serialize [SchemaShippingService] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ShippingService',
        'fulfillmentType': convertToJsonLd(fulfillmentType),
        'handlingTime': convertToJsonLd(handlingTime,
            (v) => v is SchemaQuantitativeValue || v is SchemaServicePeriod),
        'shippingConditions': convertToJsonLd(shippingConditions),
        'validForMemberTier': convertToJsonLd(validForMemberTier),
      });
}
