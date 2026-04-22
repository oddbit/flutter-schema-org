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
import 'package:schema_org/schemas/train_station.dart';

/// A trip on a commercial train line.
/// See https://schema.org/TrainTrip
class SchemaTrainTrip extends SchemaTrip {
  /// The platform where the train arrives.
  String? arrivalPlatform;

  /// The station where the train trip ends.
  SchemaTrainStation? arrivalStation;

  /// The platform from which the train departs.
  String? departurePlatform;

  /// The station from which the train departs.
  SchemaTrainStation? departureStation;

  /// The name of the train (e.g. The Orient Express).
  String? trainName;

  /// The unique identifier for the train.
  String? trainNumber;

  /// Create a new instance of [SchemaTrainTrip]
  SchemaTrainTrip({
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
    this.arrivalPlatform,
    this.arrivalStation,
    this.departurePlatform,
    this.departureStation,
    this.trainName,
    this.trainNumber,
  });

  /// Serialize [SchemaTrainTrip] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TrainTrip',
        'arrivalPlatform': convertToJsonLd(arrivalPlatform, [String]),
        'arrivalStation': convertToJsonLd(arrivalStation, [SchemaTrainStation]),
        'departurePlatform': convertToJsonLd(departurePlatform, [String]),
        'departureStation':
            convertToJsonLd(departureStation, [SchemaTrainStation]),
        'trainName': convertToJsonLd(trainName, [String]),
        'trainNumber': convertToJsonLd(trainNumber, [String]),
      });
}
