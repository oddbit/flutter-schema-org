// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/reservation.dart';
import 'package:schema_org/schemas/qualitative_value.dart';

/// This type is for information about actual reservations, e.g. in
/// confirmation emails or HTML pages with individual confirmations of
/// reservations. For offers of tickets, use [SchemaOffer].
/// See https://schema.org/FlightReservation
class SchemaFlightReservation extends SchemaReservation {
  /// The airline-specific indicator of boarding order / preference.
  String? boardingGroup;

  /// The priority status assigned to a passenger for security or boarding
  /// (e.g. FastTrack or Priority).
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic passengerPriorityStatus;

  /// The passenger's sequence number as assigned by the airline.
  String? passengerSequenceNumber;

  /// The type of security screening the passenger is subject to.
  String? securityScreening;

  /// Create a new instance of [SchemaFlightReservation]
  SchemaFlightReservation({
    super.additionalType,
    super.alternateName,
    super.bookingAgent,
    super.bookingTime,
    super.broker,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.modifiedTime,
    super.name,
    super.owner,
    super.potentialAction,
    super.priceCurrency,
    super.programMembershipUsed,
    super.provider,
    super.reservationFor,
    super.reservationId,
    super.reservationStatus,
    super.reservedTicket,
    super.sameAs,
    super.subjectOf,
    super.totalPrice,
    super.underName,
    super.url,
    this.boardingGroup,
    this.passengerPriorityStatus,
    this.passengerSequenceNumber,
    this.securityScreening,
  });

  /// Serialize [SchemaFlightReservation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'FlightReservation',
        'boardingGroup': convertToJsonLd(boardingGroup, [String]),
        'passengerPriorityStatus': convertToJsonLd(
            passengerPriorityStatus, [SchemaQualitativeValue, String]),
        'passengerSequenceNumber':
            convertToJsonLd(passengerSequenceNumber, [String]),
        'securityScreening': convertToJsonLd(securityScreening, [String]),
      });
}
