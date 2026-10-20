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
import 'package:schema_org/schemas/boat_terminal.dart';

/// A trip on a commercial ferry line.
/// See https://schema.org/BoatTrip
class SchemaBoatTrip extends SchemaTrip {
  /// The terminal or port from which the boat arrives.
  SchemaBoatTerminal? arrivalBoatTerminal;

  /// The terminal or port from which the boat departs.
  SchemaBoatTerminal? departureBoatTerminal;

  /// Create a new instance of [SchemaBoatTrip]
  SchemaBoatTrip({
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
    this.arrivalBoatTerminal,
    this.departureBoatTerminal,
  });

  /// Serialize [SchemaBoatTrip] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BoatTrip',
        'arrivalBoatTerminal': convertToJsonLd(arrivalBoatTerminal),
        'departureBoatTerminal': convertToJsonLd(departureBoatTerminal),
      });
}
