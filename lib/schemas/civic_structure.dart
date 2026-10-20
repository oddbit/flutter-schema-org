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

/// A public structure, such as a town hall or concert hall.
/// See https://schema.org/CivicStructure
class SchemaCivicStructure extends SchemaPlace {
  /// The general opening hours for a business. Opening hours can be specified
  /// as a weekly time range, starting with days, then times per day. Multiple
  /// days can be listed with commas ',' separating each day. Day or time
  /// ranges are specified using a hyphen '-'.\n\n* Days are specified using
  /// the following two-letter combinations: ```Mo```, ```Tu```, ```We```,
  /// ```Th```, ```Fr```, ```Sa```, ```Su```.\n* Times are specified using
  /// 24:00 format. For example, 3pm is specified as ```15:00```, 10am as
  /// ```10:00```. \n* Here is an example: <code>&lt;time
  /// itemprop="openingHours" datetime=&quot;Tu,Th
  /// 16:00-20:00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.\n*
  /// If a business is open 7 days a week, then it can be specified as
  /// <code>&lt;time itemprop=&quot;openingHours&quot;
  /// datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all
  /// day&lt;/time&gt;</code>.
  String? openingHours;

  /// Create a new instance of [SchemaCivicStructure]
  SchemaCivicStructure({
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
    this.openingHours,
  });

  /// Serialize [SchemaCivicStructure] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CivicStructure',
        'openingHours': convertToJsonLd(openingHours),
      });
}
