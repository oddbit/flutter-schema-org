// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/country.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/postal_code_range_specification.dart';

/// A DefinedRegion is a geographic area defined by potentially arbitrary
/// (rather than political, administrative or natural geographical) criteria.
/// Properties are provided for defining a region by reference to sets of
/// postal codes.
///
/// Examples: a delivery destination when shopping. Region where regional
/// pricing is configured.
///
/// Requirement 1: Country: US States: "NY", "CA"
///
/// Requirement 2: Country: US PostalCode Set: { [94000-94585], [97000,
/// 97999], [13000, 13599]} { [12345, 12345], [78945, 78945], } Region =
/// state, canton, prefecture, autonomous community...
/// See https://schema.org/DefinedRegion
class SchemaDefinedRegion extends SchemaPlace implements SchemaStructuredValue {
  /// The country. Recommended to be in 2-letter [ISO 3166-1
  /// alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example
  /// "US". For backward compatibility, a 3-letter [ISO 3166-1
  /// alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code
  /// such as "SGP" or a full country name such as "Singapore" can also be
  /// used.
  ///
  /// Supported types: [SchemaCountry], [String]
  dynamic addressCountry;

  /// The region in which the locality is, and which is in the country. For
  /// example, California or another appropriate first-level [Administrative
  /// division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country)
  /// such as the Province in Italy or Region in Germany.
  ///
  /// Supported types: [SchemaAdministrativeArea], [String]
  dynamic addressRegion;

  /// The postal code. For example, 94043.
  String? postalCode;

  /// A defined range of postal codes indicated by a common textual prefix.
  /// Used for non-numeric systems such as UK.
  String? postalCodePrefix;

  /// A defined range of postal codes.
  SchemaPostalCodeRangeSpecification? postalCodeRange;

  /// Create a new instance of [SchemaDefinedRegion]
  SchemaDefinedRegion({
    super.additionalProperty,
    super.additionalType,
    super.address,
    super.aggregateRating,
    super.alternateName,
    super.amenityFeature,
    super.branchCode,
    super.containedIn,
    super.containedInPlace,
    super.containsPlace,
    super.description,
    super.disambiguatingDescription,
    super.event,
    super.events,
    super.faxNumber,
    super.geo,
    super.geoContains,
    super.geoCoveredBy,
    super.geoCovers,
    super.geoCrosses,
    super.geoDisjoint,
    super.geoEquals,
    super.geoIntersects,
    super.geoOverlaps,
    super.geoTouches,
    super.geoWithin,
    super.globalLocationNumber,
    super.hasCertification,
    super.hasDriveThroughService,
    super.hasGS1DigitalLink,
    super.hasMap,
    super.identifier,
    super.image,
    super.isAccessibleForFree,
    super.isicV4,
    super.keywords,
    super.latitude,
    super.logo,
    super.longitude,
    super.mainEntityOfPage,
    super.map,
    super.maps,
    super.maximumAttendeeCapacity,
    super.name,
    super.openingHoursSpecification,
    super.owner,
    super.photo,
    super.photos,
    super.potentialAction,
    super.publicAccess,
    super.review,
    super.reviews,
    super.sameAs,
    super.slogan,
    super.smokingAllowed,
    super.specialOpeningHoursSpecification,
    super.subjectOf,
    super.telephone,
    super.tourBookingPage,
    super.url,
    this.addressCountry,
    this.addressRegion,
    this.postalCode,
    this.postalCodePrefix,
    this.postalCodeRange,
  });

  /// Serialize [SchemaDefinedRegion] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DefinedRegion',
        'addressCountry': convertToJsonLd(
            addressCountry, (v) => v is SchemaCountry || v is String),
        'addressRegion': convertToJsonLd(
            addressRegion, (v) => v is SchemaAdministrativeArea || v is String),
        'postalCode': convertToJsonLd(postalCode),
        'postalCodePrefix': convertToJsonLd(postalCodePrefix),
        'postalCodeRange': convertToJsonLd(postalCodeRange),
      });
}
