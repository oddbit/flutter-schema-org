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
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/opening_hours_specification.dart';
import 'package:schema_org/schemas/defined_region.dart';
import 'package:schema_org/schemas/shipping_rate_settings.dart';
import 'package:schema_org/schemas/service_period.dart';
import 'package:schema_org/schemas/mass.dart';

/// ShippingConditions represent a set of constraints and information about
/// the conditions of shipping a product. Such conditions may apply to only a
/// subset of the products being shipped, depending on aspects of the product
/// like weight, size, price, destination, and others. All the specified
/// conditions must be met for this ShippingConditions to apply.
/// See https://schema.org/ShippingConditions
class SchemaShippingConditions extends SchemaStructuredValue {
  /// The depth of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic depth;

  /// Indicates when shipping to a particular [SchemashippingDestination] is
  /// not available.
  bool? doesNotShip;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic height;

  /// Limits the number of items being shipped for which these conditions
  /// apply.
  SchemaQuantitativeValue? numItems;

  /// Minimum and maximum order value for which these shipping conditions are
  /// valid.
  SchemaMonetaryAmount? orderValue;

  /// Limited period during which these shipping conditions apply.
  SchemaOpeningHoursSpecification? seasonalOverride;

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

  /// minValue, maxValue, unitCode (d for DAY).
  ///
  /// In the context of [SchemaShippingConditions], use the
  /// [SchemaServicePeriod]. It has a duration (as a [SchemaQuantitativeValue])
  /// and also business days and a cut-off time.
  ///
  /// Supported types: [SchemaQuantitativeValue], [SchemaServicePeriod]
  dynamic transitTime;

  /// The weight of the product or person.
  ///
  /// Supported types: [SchemaMass], [SchemaQuantitativeValue]
  dynamic weight;

  /// The width of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic width;

  /// Create a new instance of [SchemaShippingConditions]
  SchemaShippingConditions({
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
    this.depth,
    this.doesNotShip,
    this.height,
    this.numItems,
    this.orderValue,
    this.seasonalOverride,
    this.shippingDestination,
    this.shippingOrigin,
    this.shippingRate,
    this.transitTime,
    this.weight,
    this.width,
  });

  /// Serialize [SchemaShippingConditions] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ShippingConditions',
        'depth':
            convertToJsonLd(depth, [SchemaDistance, SchemaQuantitativeValue]),
        'doesNotShip': convertToJsonLd(doesNotShip, [bool]),
        'height':
            convertToJsonLd(height, [SchemaDistance, SchemaQuantitativeValue]),
        'numItems': convertToJsonLd(numItems, [SchemaQuantitativeValue]),
        'orderValue': convertToJsonLd(orderValue, [SchemaMonetaryAmount]),
        'seasonalOverride': convertToJsonLd(
            seasonalOverride, [SchemaOpeningHoursSpecification]),
        'shippingDestination':
            convertToJsonLd(shippingDestination, [SchemaDefinedRegion]),
        'shippingOrigin':
            convertToJsonLd(shippingOrigin, [SchemaDefinedRegion]),
        'shippingRate': convertToJsonLd(
            shippingRate, [SchemaMonetaryAmount, SchemaShippingRateSettings]),
        'transitTime': convertToJsonLd(
            transitTime, [SchemaQuantitativeValue, SchemaServicePeriod]),
        'weight':
            convertToJsonLd(weight, [SchemaMass, SchemaQuantitativeValue]),
        'width':
            convertToJsonLd(width, [SchemaDistance, SchemaQuantitativeValue]),
      });
}
