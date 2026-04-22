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

/// The geographic shape of a place. A GeoShape can be described using
/// several properties whose values are based on latitude/longitude pairs.
/// Either whitespace or commas can be used to separate latitude and
/// longitude; whitespace should be used when writing a list of several such
/// points.
/// See https://schema.org/GeoShape
class SchemaGeoShape extends SchemaStructuredValue {
  /// Physical address of the item.
  ///
  /// Supported types: [SchemaPostalAddress], [String]
  dynamic address;

  /// //en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or
  /// a full country name such as "Singapore" can also be used.
  ///
  /// Supported types: [SchemaCountry], [String]
  dynamic addressCountry;

  /// A box is the area enclosed by the rectangle formed by two points. The
  /// first point is the lower corner, the second point is the upper corner. A
  /// box is expressed as two points separated by a space character.
  String? box;

  /// A circle is the circular region of a specified radius centered at a
  /// specified latitude and longitude. A circle is expressed as a pair
  /// followed by a radius in meters.
  String? circle;

  /// //en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of the
  /// form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while
  /// numbers alone should be assumed to be a value in meters.
  ///
  /// Supported types: [String], [num]
  dynamic elevation;

  /// A line is a point-to-point path consisting of two or more points. A line
  /// is expressed as a series of two or more point objects separated by space.
  String? line;

  /// A polygon is the area enclosed by a point-to-point path for which the
  /// starting and ending points are the same. A polygon is expressed as a
  /// series of four or more space delimited points where the first and final
  /// points are identical.
  String? polygon;

  /// The postal code. For example, 94043.
  String? postalCode;

  /// Create a new instance of [SchemaGeoShape]
  SchemaGeoShape({
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
    this.box,
    this.circle,
    this.elevation,
    this.line,
    this.polygon,
    this.postalCode,
  });

  /// Serialize [SchemaGeoShape] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'GeoShape',
        'address': convertToJsonLd(address, [SchemaPostalAddress, String]),
        'addressCountry':
            convertToJsonLd(addressCountry, [SchemaCountry, String]),
        'box': convertToJsonLd(box, [String]),
        'circle': convertToJsonLd(circle, [String]),
        'elevation': convertToJsonLd(elevation, [String, num]),
        'line': convertToJsonLd(line, [String]),
        'polygon': convertToJsonLd(polygon, [String]),
        'postalCode': convertToJsonLd(postalCode, [String]),
      });
}
