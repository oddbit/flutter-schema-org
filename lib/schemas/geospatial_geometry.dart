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
import 'package:schema_org/schemas/place.dart';

/// (Eventually to be defined as) a supertype of GeoShape designed to
/// accommodate definitions from Geo-Spatial best practices.
/// See https://schema.org/GeospatialGeometry
class SchemaGeospatialGeometry extends SchemaIntangible {
  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a containing geometry to a contained geometry. "a
  /// contains b iff no points of b lie in the exterior of a, and at least one
  /// point of the interior of b lies in the interior of a". As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoContains;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a geometry to another that covers it. As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoCoveredBy;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a covering geometry to a covered geometry. "Every
  /// point of b is a point of (the interior or boundary of) a". As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoCovers;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a geometry to another that crosses it: "a crosses b:
  /// they have some but not all interior points in common, and the dimension
  /// of the intersection is less than that of at least one of them". As
  /// defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoCrosses;

  /// Represents spatial relations in which two geometries (or the places they
  /// represent) are topologically disjoint: "they have no point in common.
  /// They form a set of disconnected geometries." (A symmetric relationship,
  /// as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoDisjoint;

  /// Represents spatial relations in which two geometries (or the places they
  /// represent) are topologically equal, as defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM). "Two geometries are
  /// topologically equal if their interiors intersect and no part of the
  /// interior or boundary of one geometry intersects the exterior of the
  /// other" (a symmetric relationship).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoEquals;

  /// Represents spatial relations in which two geometries (or the places they
  /// represent) have at least one point in common. As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoIntersects;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a geometry to another that geospatially overlaps it,
  /// i.e. they have some but not all points in common. As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoOverlaps;

  /// Represents spatial relations in which two geometries (or the places they
  /// represent) touch: "they have at least one boundary point in common, but
  /// no interior points." (A symmetric relationship, as defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoTouches;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a geometry to one that contains it, i.e. it is
  /// inside (i.e. within) its interior. As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoWithin;

  /// Create a new instance of [SchemaGeospatialGeometry]
  SchemaGeospatialGeometry({
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
    this.geoContains,
    this.geoCoveredBy,
    this.geoCovers,
    this.geoCrosses,
    this.geoDisjoint,
    this.geoEquals,
    this.geoIntersects,
    this.geoOverlaps,
    this.geoTouches,
    this.geoWithin,
  });

  /// Serialize [SchemaGeospatialGeometry] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'GeospatialGeometry',
        'geoContains': convertToJsonLd(geoContains,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoCoveredBy': convertToJsonLd(geoCoveredBy,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoCovers': convertToJsonLd(geoCovers,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoCrosses': convertToJsonLd(geoCrosses,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoDisjoint': convertToJsonLd(geoDisjoint,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoEquals': convertToJsonLd(geoEquals,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoIntersects': convertToJsonLd(geoIntersects,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoOverlaps': convertToJsonLd(geoOverlaps,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoTouches': convertToJsonLd(geoTouches,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoWithin': convertToJsonLd(geoWithin,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
      });
}
