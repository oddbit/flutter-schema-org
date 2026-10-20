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
import 'package:schema_org/schemas/bus_station.dart';
import 'package:schema_org/schemas/bus_stop.dart';

/// A trip on a commercial bus line.
/// See https://schema.org/BusTrip
class SchemaBusTrip extends SchemaTrip {
  /// The stop or station from which the bus arrives.
  ///
  /// Supported types: [SchemaBusStation], [SchemaBusStop]
  dynamic arrivalBusStop;

  /// The name of the bus (e.g. Bolt Express).
  String? busName;

  /// The unique identifier for the bus.
  String? busNumber;

  /// The stop or station from which the bus departs.
  ///
  /// Supported types: [SchemaBusStation], [SchemaBusStop]
  dynamic departureBusStop;

  /// Create a new instance of [SchemaBusTrip]
  SchemaBusTrip({
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
    this.arrivalBusStop,
    this.busName,
    this.busNumber,
    this.departureBusStop,
  });

  /// Serialize [SchemaBusTrip] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BusTrip',
        'arrivalBusStop': convertToJsonLd(
            arrivalBusStop, (v) => v is SchemaBusStation || v is SchemaBusStop),
        'busName': convertToJsonLd(busName),
        'busNumber': convertToJsonLd(busNumber),
        'departureBusStop': convertToJsonLd(departureBusStop,
            (v) => v is SchemaBusStation || v is SchemaBusStop),
      });
}
