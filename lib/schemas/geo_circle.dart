// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/geo_coordinates.dart';
import 'package:schema_org/schemas/distance.dart';

/// A GeoCircle is a GeoShape representing a circular geographic area. As it
/// is a GeoShape it provides the simple textual property 'circle', but also
/// allows the combination of postalCode alongside geoRadius. The center of
/// the circle can be indicated via the 'geoMidpoint' property, or more
/// approximately using 'address', 'postalCode'.
/// See https://schema.org/GeoCircle
class SchemaGeoCircle extends SchemaGeoShape {
  /// Indicates the GeoCoordinates at the centre of a GeoShape, e.g. GeoCircle.
  SchemaGeoCoordinates? geoMidpoint;

  /// Indicates the approximate radius of a GeoCircle (metres unless indicated
  /// otherwise via Distance notation).
  ///
  /// Supported types: [SchemaDistance], [String], [num]
  dynamic geoRadius;

  /// Create a new instance of [SchemaGeoCircle]
  SchemaGeoCircle({
    super.additionalType,
    super.address,
    super.addressCountry,
    super.alternateName,
    super.box,
    super.circle,
    super.description,
    super.disambiguatingDescription,
    super.elevation,
    super.identifier,
    super.image,
    super.line,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.polygon,
    super.postalCode,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.geoMidpoint,
    this.geoRadius,
  });

  /// Serialize [SchemaGeoCircle] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'GeoCircle',
        'geoMidpoint': convertToJsonLd(geoMidpoint),
        'geoRadius': convertToJsonLd(
            geoRadius, (v) => v is SchemaDistance || v is String || v is num),
      });
}
