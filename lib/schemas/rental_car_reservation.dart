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
import 'package:schema_org/schemas/place.dart';

/// A reservation for a rental car.\n\nNote: This type is for information
/// about actual reservations, e.g. in confirmation emails or HTML pages with
/// individual confirmations of reservations.
/// See https://schema.org/RentalCarReservation
class SchemaRentalCarReservation extends SchemaReservation {
  /// Where a rental car can be dropped off.
  SchemaPlace? dropoffLocation;

  /// When a rental car can be dropped off.
  String? dropoffTime;

  /// Where a taxi will pick up a passenger or a rental car can be picked up.
  SchemaPlace? pickupLocation;

  /// When a taxi will pick up a passenger or a rental car can be picked up.
  String? pickupTime;

  /// Create a new instance of [SchemaRentalCarReservation]
  SchemaRentalCarReservation({
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
    this.dropoffLocation,
    this.dropoffTime,
    this.pickupLocation,
    this.pickupTime,
  });

  /// Serialize [SchemaRentalCarReservation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'RentalCarReservation',
        'dropoffLocation': convertToJsonLd(dropoffLocation),
        'dropoffTime': convertToJsonLd(dropoffTime),
        'pickupLocation': convertToJsonLd(pickupLocation),
        'pickupTime': convertToJsonLd(pickupTime),
      });
}
