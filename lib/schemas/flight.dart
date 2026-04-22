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
import 'package:schema_org/schemas/vehicle.dart';
import 'package:schema_org/schemas/airport.dart';
import 'package:schema_org/schemas/boarding_policy_type.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/person.dart';

/// An airline flight.
/// See https://schema.org/Flight
class SchemaFlight extends SchemaTrip {
  /// The kind of aircraft (e.g., "Boeing 747").
  ///
  /// Supported types: [String], [SchemaVehicle]
  dynamic aircraft;

  /// The airport where the flight terminates.
  SchemaAirport? arrivalAirport;

  /// Identifier of the flight's arrival gate.
  String? arrivalGate;

  /// Identifier of the flight's arrival terminal.
  String? arrivalTerminal;

  /// The type of boarding policy used by the airline (e.g. zone-based or
  /// group-based).
  SchemaBoardingPolicyType? boardingPolicy;

  /// 'carrier' is an out-dated term indicating the 'provider' for parcel
  /// delivery and flights.
  @Deprecated('Use [provider]. See https://schema.org/carrier')
  SchemaOrganization? carrier;

  /// The airport where the flight originates.
  SchemaAirport? departureAirport;

  /// Identifier of the flight's departure gate.
  String? departureGate;

  /// Identifier of the flight's departure terminal.
  String? departureTerminal;

  /// The estimated time the flight will take.
  ///
  /// Supported types: [SchemaDuration], [String]
  dynamic estimatedFlightDuration;

  /// The distance of the flight.
  ///
  /// Supported types: [SchemaDistance], [String]
  dynamic flightDistance;

  /// The unique identifier for a flight including the airline IATA code. For
  /// example, if describing United flight 110, where the IATA code for United
  /// is 'UA', the flightNumber is 'UA110'.
  String? flightNumber;

  /// Description of the meals that will be provided or available for purchase.
  String? mealService;

  /// An entity which offers (sells / leases / lends / loans) the services /
  /// goods. A seller may also be a provider.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic seller;

  /// The time when a passenger can check into the flight online.
  String? webCheckinTime;

  /// Create a new instance of [SchemaFlight]
  SchemaFlight({
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
    this.aircraft,
    this.arrivalAirport,
    this.arrivalGate,
    this.arrivalTerminal,
    this.boardingPolicy,
    this.carrier,
    this.departureAirport,
    this.departureGate,
    this.departureTerminal,
    this.estimatedFlightDuration,
    this.flightDistance,
    this.flightNumber,
    this.mealService,
    this.seller,
    this.webCheckinTime,
  });

  /// Serialize [SchemaFlight] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Flight',
        'aircraft': convertToJsonLd(aircraft, [String, SchemaVehicle]),
        'arrivalAirport': convertToJsonLd(arrivalAirport, [SchemaAirport]),
        'arrivalGate': convertToJsonLd(arrivalGate, [String]),
        'arrivalTerminal': convertToJsonLd(arrivalTerminal, [String]),
        'boardingPolicy':
            convertToJsonLd(boardingPolicy, [SchemaBoardingPolicyType]),
        'carrier': convertToJsonLd(carrier, [SchemaOrganization]),
        'departureAirport': convertToJsonLd(departureAirport, [SchemaAirport]),
        'departureGate': convertToJsonLd(departureGate, [String]),
        'departureTerminal': convertToJsonLd(departureTerminal, [String]),
        'estimatedFlightDuration':
            convertToJsonLd(estimatedFlightDuration, [SchemaDuration, String]),
        'flightDistance':
            convertToJsonLd(flightDistance, [SchemaDistance, String]),
        'flightNumber': convertToJsonLd(flightNumber, [String]),
        'mealService': convertToJsonLd(mealService, [String]),
        'seller': convertToJsonLd(seller, [SchemaOrganization, SchemaPerson]),
        'webCheckinTime': convertToJsonLd(webCheckinTime, [String]),
      });
}
