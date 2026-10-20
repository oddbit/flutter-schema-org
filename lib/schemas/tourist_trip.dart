// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/trip.dart';
import 'package:schema_org/schemas/audience.dart';

/// A tourist trip. A created itinerary of visits to one or more places of
/// interest ([SchemaTouristAttraction]/[SchemaTouristDestination]) often
/// linked by a similar theme, geographic area, or interest to a particular
/// [SchematouristType]. The [UNWTO](http://www2.unwto.org/) defines tourism
/// trip as the Trip taken by visitors. (See examples below.)
/// See https://schema.org/TouristTrip
class SchemaTouristTrip extends SchemaTrip {
  /// Attraction suitable for type(s) of tourist. E.g. children, visitors from
  /// a particular country, etc.
  ///
  /// Supported types: [SchemaAudience], [String]
  dynamic touristType;

  /// Create a new instance of [SchemaTouristTrip]
  SchemaTouristTrip({
    super.additionalType,
    super.alternateName,
    super.arrivalTime,
    super.departureTime,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.itinerary,
    super.mainEntityOfPage,
    super.name,
    super.offers,
    super.owner,
    super.partOfTrip,
    super.potentialAction,
    super.provider,
    super.sameAs,
    super.subTrip,
    super.subjectOf,
    super.tripOrigin,
    super.url,
    this.touristType,
  });

  /// Serialize [SchemaTouristTrip] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TouristTrip',
        'touristType': convertToJsonLd(
            touristType, (v) => v is SchemaAudience || v is String),
      });
}
