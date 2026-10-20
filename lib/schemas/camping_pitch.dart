// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/accommodation.dart';

/// A [SchemaCampingPitch] is an individual place for overnight stay in the
/// outdoors, typically being part of a larger camping site, or
/// [SchemaCampground].\n\n In British English a campsite, or campground, is
/// an area, usually divided into a number of pitches, where people can camp
/// overnight using tents or camper vans or caravans; this British English
/// use of the word is synonymous with the American English expression
/// campground. In American English the term campsite generally means an area
/// where an individual, family, group, or military unit can pitch a tent or
/// park a camper; a campground may contain many campsites. (Source:
/// Wikipedia, see
/// [https://en.wikipedia.org/wiki/Campsite](https://en.wikipedia.org/wiki/Campsite).)\n\n
/// See also the dedicated [document on the use of schema.org for marking up
/// hotels and other forms of accommodations](/docs/hotels.html).
/// See https://schema.org/CampingPitch
class SchemaCampingPitch extends SchemaAccommodation {
  /// Create a new instance of [SchemaCampingPitch]
  SchemaCampingPitch({
    super.accommodationCategory,
    super.accommodationFloorPlan,
    super.additionalProperty,
    super.additionalType,
    super.address,
    super.aggregateRating,
    super.alternateName,
    super.amenityFeature,
    super.bed,
    super.branchCode,
    super.containedIn,
    super.containedInPlace,
    super.containsPlace,
    super.description,
    super.disambiguatingDescription,
    super.event,
    super.events,
    super.faxNumber,
    super.floorLevel,
    super.floorSize,
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
    super.leaseLength,
    super.logo,
    super.longitude,
    super.mainEntityOfPage,
    super.map,
    super.maps,
    super.maximumAttendeeCapacity,
    super.name,
    super.numberOfBathroomsTotal,
    super.numberOfBedrooms,
    super.numberOfFullBathrooms,
    super.numberOfPartialBathrooms,
    super.numberOfRooms,
    super.occupancy,
    super.openingHoursSpecification,
    super.owner,
    super.permittedUsage,
    super.petsAllowed,
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
    super.yearBuilt,
  });

  /// Serialize [SchemaCampingPitch] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CampingPitch',
      });
}
