// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/delivery_method.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';

/// The price for the delivery of an offer using a particular delivery
/// method.
/// See https://schema.org/DeliveryChargeSpecification
class SchemaDeliveryChargeSpecification extends SchemaPriceSpecification {
  /// The delivery method(s) to which the delivery charge or payment charge
  /// specification applies.
  SchemaDeliveryMethod? appliesToDeliveryMethod;

  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  dynamic areaServed;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
  /// GeoShape for the geo-political region(s) for which the offer or delivery
  /// charge specification is valid.\n\nSee also [SchemaineligibleRegion].
  ///
  /// Supported types: [SchemaGeoShape], [SchemaPlace], [String]
  dynamic eligibleRegion;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
  /// GeoShape for the geo-political region(s) for which the offer or delivery
  /// charge specification is not valid, e.g. a region where the transaction is
  /// not allowed.\n\nSee also [SchemaeligibleRegion].
  ///
  /// Supported types: [SchemaGeoShape], [SchemaPlace], [String]
  dynamic ineligibleRegion;

  /// Create a new instance of [SchemaDeliveryChargeSpecification]
  SchemaDeliveryChargeSpecification({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.eligibleQuantity,
    super.eligibleTransactionVolume,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.maxPrice,
    super.membershipPointsEarned,
    super.minPrice,
    super.name,
    super.owner,
    super.potentialAction,
    super.price,
    super.priceCurrency,
    super.sameAs,
    super.subjectOf,
    super.url,
    super.validForMemberTier,
    super.validFrom,
    super.validThrough,
    super.valueAddedTaxIncluded,
    this.appliesToDeliveryMethod,
    this.areaServed,
    this.eligibleRegion,
    this.ineligibleRegion,
  });

  /// Serialize [SchemaDeliveryChargeSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DeliveryChargeSpecification',
        'appliesToDeliveryMethod': convertToJsonLd(appliesToDeliveryMethod),
        'areaServed': convertToJsonLd(
            areaServed,
            (v) =>
                v is SchemaAdministrativeArea ||
                v is SchemaGeoShape ||
                v is SchemaPlace ||
                v is String),
        'eligibleRegion': convertToJsonLd(eligibleRegion,
            (v) => v is SchemaGeoShape || v is SchemaPlace || v is String),
        'ineligibleRegion': convertToJsonLd(ineligibleRegion,
            (v) => v is SchemaGeoShape || v is SchemaPlace || v is String),
      });
}
