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

/// A group of multiple reservations with common values for all
/// sub-reservations.
/// See https://schema.org/ReservationPackage
class SchemaReservationPackage extends SchemaReservation {
  /// The individual reservations included in the package. Typically a repeated
  /// property.
  SchemaReservation? subReservation;

  /// Create a new instance of [SchemaReservationPackage]
  SchemaReservationPackage({
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
    this.subReservation,
  });

  /// Serialize [SchemaReservationPackage] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ReservationPackage',
        'subReservation': convertToJsonLd(subReservation),
      });
}
