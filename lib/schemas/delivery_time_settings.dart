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
import 'package:schema_org/schemas/defined_region.dart';

/// A DeliveryTimeSettings represents re-usable pieces of shipping
/// information, relating to timing. It is designed for publication on an URL
/// that may be referenced via the [SchemashippingSettingsLink] property of
/// an [SchemaOfferShippingDetails]. Several occurrences can be published,
/// distinguished (and identified/referenced) by their different values for
/// [SchematransitTimeLabel].
/// See https://schema.org/DeliveryTimeSettings
@Deprecated(
    'Use [SchemaShippingConditions]. See https://schema.org/DeliveryTimeSettings')
class SchemaDeliveryTimeSettings extends SchemaStructuredValue {
  /// The total delay between the receipt of the order and the goods reaching
  /// the final customer.
  SchemaShippingDeliveryTime? deliveryTime;

  /// This can be marked 'true' to indicate that some published
  /// [SchemaDeliveryTimeSettings] or [SchemaShippingRateSettings] are intended
  /// to apply to all [SchemaOfferShippingDetails] published by the same
  /// merchant, when referenced by a [SchemashippingSettingsLink] in those
  /// settings. It is not meaningful to use a 'true' value for this property
  /// alongside a transitTimeLabel (for [SchemaDeliveryTimeSettings]) or
  /// shippingLabel (for [SchemaShippingRateSettings]), since this property is
  /// for use with unlabelled settings.
  bool? isUnlabelledFallback;

  /// indicates (possibly multiple) shipping destinations. These can be defined
  /// in several ways, e.g. postalCode ranges.
  SchemaDefinedRegion? shippingDestination;

  /// Label to match an [SchemaOfferShippingDetails] with a
  /// [SchemaDeliveryTimeSettings] (within the context of a
  /// [SchemashippingSettingsLink] cross-reference).
  String? transitTimeLabel;

  /// Create a new instance of [SchemaDeliveryTimeSettings]
  SchemaDeliveryTimeSettings({
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
    this.isUnlabelledFallback,
    this.shippingDestination,
    this.transitTimeLabel,
  });

  /// Serialize [SchemaDeliveryTimeSettings] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DeliveryTimeSettings',
        'deliveryTime': convertToJsonLd(deliveryTime),
        'isUnlabelledFallback': convertToJsonLd(isUnlabelledFallback),
        'shippingDestination': convertToJsonLd(shippingDestination),
        'transitTimeLabel': convertToJsonLd(transitTimeLabel),
      });
}
