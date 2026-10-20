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
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/country.dart';

/// The geographic coordinates of a place or event.
/// See https://schema.org/GeoCoordinates
class SchemaGeoCoordinates extends SchemaStructuredValue {
  /// Physical address of the item.
  ///
  /// Supported types: [SchemaPostalAddress], [String]
  dynamic address;

  /// The country. Recommended to be in 2-letter [ISO 3166-1
  /// alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example
  /// "US". For backward compatibility, a 3-letter [ISO 3166-1
  /// alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code
  /// such as "SGP" or a full country name such as "Singapore" can also be
  /// used.
  ///
  /// Supported types: [SchemaCountry], [String]
  dynamic addressCountry;

  /// The elevation of a location ([WGS
  /// 84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be
  /// of the form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft')
  /// while numbers alone should be assumed to be a value in meters.
  ///
  /// Supported types: [String], [num]
  dynamic elevation;

  /// The latitude of a location. For example ```37.42242``` ([WGS
  /// 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [num]
  dynamic latitude;

  /// The longitude of a location. For example ```-122.08585``` ([WGS
  /// 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [num]
  dynamic longitude;

  /// The postal code. For example, 94043.
  String? postalCode;

  /// Create a new instance of [SchemaGeoCoordinates]
  SchemaGeoCoordinates({
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
    this.address,
    this.addressCountry,
    this.elevation,
    this.latitude,
    this.longitude,
    this.postalCode,
  });

  /// Serialize [SchemaGeoCoordinates] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'GeoCoordinates',
        'address': convertToJsonLd(
            address, (v) => v is SchemaPostalAddress || v is String),
        'addressCountry': convertToJsonLd(
            addressCountry, (v) => v is SchemaCountry || v is String),
        'elevation': convertToJsonLd(elevation, (v) => v is String || v is num),
        'latitude': convertToJsonLd(latitude, (v) => v is String || v is num),
        'longitude': convertToJsonLd(longitude, (v) => v is String || v is num),
        'postalCode': convertToJsonLd(postalCode),
      });
}
