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
import 'package:schema_org/schemas/shipping_delivery_time.dart';
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/shipping_service.dart';
import 'package:schema_org/schemas/defined_region.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/shipping_rate_settings.dart';
import 'package:schema_org/schemas/member_program_tier.dart';
import 'package:schema_org/schemas/mass.dart';

/// $15 in 1-2 days.
/// See https://schema.org/OfferShippingDetails
class SchemaOfferShippingDetails extends SchemaStructuredValue {
  /// The total delay between the receipt of the order and the goods reaching
  /// the final customer.
  SchemaShippingDeliveryTime? deliveryTime;

  /// The depth of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic depth;

  /// Indicates when shipping to a particular [SchemashippingDestination] is
  /// not available.
  bool? doesNotShip;

  /// Specification of a shipping service offered by the organization.
  SchemaShippingService? hasShippingService;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic height;

  /// indicates (possibly multiple) shipping destinations. These can be defined
  /// in several ways, e.g. postalCode ranges.
  SchemaDefinedRegion? shippingDestination;

  /// Indicates the origin of a shipment, i.e. where it should be coming from.
  SchemaDefinedRegion? shippingOrigin;

  /// The shipping rate is the cost of shipping to the specified destination.
  /// Typically, the maxValue and currency values (of the
  /// [SchemaMonetaryAmount]) are most appropriate.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaShippingRateSettings]
  dynamic shippingRate;

  /// The membership program tier(s) an Offer (or a PriceSpecification,
  /// OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid
  /// for.
  SchemaMemberProgramTier? validForMemberTier;

  /// The weight of the product or person.
  ///
  /// Supported types: [SchemaMass], [SchemaQuantitativeValue]
  dynamic weight;

  /// The width of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic width;

  /// Create a new instance of [SchemaOfferShippingDetails]
  SchemaOfferShippingDetails({
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
    this.deliveryTime,
    this.depth,
    this.doesNotShip,
    this.hasShippingService,
    this.height,
    this.shippingDestination,
    this.shippingOrigin,
    this.shippingRate,
    this.validForMemberTier,
    this.weight,
    this.width,
  });

  /// Serialize [SchemaOfferShippingDetails] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'OfferShippingDetails',
        'deliveryTime':
            convertToJsonLd(deliveryTime, [SchemaShippingDeliveryTime]),
        'depth':
            convertToJsonLd(depth, [SchemaDistance, SchemaQuantitativeValue]),
        'doesNotShip': convertToJsonLd(doesNotShip, [bool]),
        'hasShippingService':
            convertToJsonLd(hasShippingService, [SchemaShippingService]),
        'height':
            convertToJsonLd(height, [SchemaDistance, SchemaQuantitativeValue]),
        'shippingDestination':
            convertToJsonLd(shippingDestination, [SchemaDefinedRegion]),
        'shippingOrigin':
            convertToJsonLd(shippingOrigin, [SchemaDefinedRegion]),
        'shippingRate': convertToJsonLd(
            shippingRate, [SchemaMonetaryAmount, SchemaShippingRateSettings]),
        'validForMemberTier':
            convertToJsonLd(validForMemberTier, [SchemaMemberProgramTier]),
        'weight':
            convertToJsonLd(weight, [SchemaMass, SchemaQuantitativeValue]),
        'width':
            convertToJsonLd(width, [SchemaDistance, SchemaQuantitativeValue]),
      });
}
