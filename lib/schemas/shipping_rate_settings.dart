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
import 'package:schema_org/schemas/delivery_charge_specification.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/defined_region.dart';

/// A ShippingRateSettings represents re-usable pieces of shipping
/// information. It is designed for publication on an URL that may be
/// referenced via the [SchemashippingSettingsLink] property of an
/// [SchemaOfferShippingDetails]. Several occurrences can be published,
/// distinguished and matched (i.e. identified/referenced) by their different
/// values for [SchemashippingLabel].
/// See https://schema.org/ShippingRateSettings
class SchemaShippingRateSettings extends SchemaStructuredValue {
  /// Indicates when shipping to a particular [SchemashippingDestination] is
  /// not available.
  bool? doesNotShip;

  /// A monetary value above (or at) which the shipping rate becomes free.
  /// Intended to be used via an [SchemaOfferShippingDetails] with
  /// [SchemashippingSettingsLink] matching this [SchemaShippingRateSettings].
  ///
  /// Supported types: [SchemaDeliveryChargeSpecification],
  /// [SchemaMonetaryAmount]
  dynamic freeShippingThreshold;

  /// This can be marked 'true' to indicate that some published
  /// [SchemaDeliveryTimeSettings] or [SchemaShippingRateSettings] are intended
  /// to apply to all [SchemaOfferShippingDetails] published by the same
  /// merchant, when referenced by a [SchemashippingSettingsLink] in those
  /// settings. It is not meaningful to use a 'true' value for this property
  /// alongside a transitTimeLabel (for [SchemaDeliveryTimeSettings]) or
  /// shippingLabel (for [SchemaShippingRateSettings]), since this property is
  /// for use with unlabelled settings.
  bool? isUnlabelledFallback;

  /// The minimum order value required for this shipping rate to apply.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification],
  /// [num]
  dynamic minimumOrderValue;

  /// Value representing the fraction of the value of the order that is charged
  /// as shipping cost. Example: 0.10 would mean shipping rate is 10% of the
  /// total order value.
  num? orderPercentage;

  /// indicates (possibly multiple) shipping destinations. These can be defined
  /// in several ways, e.g. postalCode ranges.
  SchemaDefinedRegion? shippingDestination;

  /// Label to match an [SchemaOfferShippingDetails] with a
  /// [SchemaShippingRateSettings] (within the context of a
  /// [SchemashippingSettingsLink] cross-reference).
  String? shippingLabel;

  /// The shipping rate is the cost of shipping to the specified destination.
  /// Typically, the maxValue and currency values (of the
  /// [SchemaMonetaryAmount]) are most appropriate.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaShippingRateSettings]
  dynamic shippingRate;

  /// Value representing the fraction of the weight that is used to compute the
  /// shipping price. Example: 0.10 and a shipping weight of 15kg would add
  /// $1.5 to the order price, where the $ is the currency of the order.
  num? weightPercentage;

  /// Create a new instance of [SchemaShippingRateSettings]
  SchemaShippingRateSettings({
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
    this.doesNotShip,
    this.freeShippingThreshold,
    this.isUnlabelledFallback,
    this.minimumOrderValue,
    this.orderPercentage,
    this.shippingDestination,
    this.shippingLabel,
    this.shippingRate,
    this.weightPercentage,
  });

  /// Serialize [SchemaShippingRateSettings] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ShippingRateSettings',
        'doesNotShip': convertToJsonLd(doesNotShip),
        'freeShippingThreshold': convertToJsonLd(
            freeShippingThreshold,
            (v) =>
                v is SchemaDeliveryChargeSpecification ||
                v is SchemaMonetaryAmount),
        'isUnlabelledFallback': convertToJsonLd(isUnlabelledFallback),
        'minimumOrderValue': convertToJsonLd(
            minimumOrderValue,
            (v) =>
                v is SchemaMonetaryAmount ||
                v is SchemaPriceSpecification ||
                v is num),
        'orderPercentage': convertToJsonLd(orderPercentage),
        'shippingDestination': convertToJsonLd(shippingDestination),
        'shippingLabel': convertToJsonLd(shippingLabel),
        'shippingRate': convertToJsonLd(
            shippingRate,
            (v) =>
                v is SchemaMonetaryAmount || v is SchemaShippingRateSettings),
        'weightPercentage': convertToJsonLd(weightPercentage),
      });
}
