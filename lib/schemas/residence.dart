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
import 'package:schema_org/schemas/floor_plan.dart';

/// The place where a person lives.
/// See https://schema.org/Residence
class SchemaResidence extends SchemaPlace {
  /// A floorplan of some [SchemaAccommodation].
  SchemaFloorPlan? accommodationFloorPlan;

  /// The floor level for an [SchemaAccommodation] in a multi-storey building.
  /// Since counting systems [vary
  /// internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations),
  /// the local system should be used where possible.
  String? floorLevel;

  /// Create a new instance of [SchemaResidence]
  SchemaResidence({
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
    this.accommodationFloorPlan,
    this.floorLevel,
  });

  /// Serialize [SchemaResidence] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Residence',
        'accommodationFloorPlan': convertToJsonLd(accommodationFloorPlan),
        'floorLevel': convertToJsonLd(floorLevel),
      });
}
