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
import 'package:schema_org/schemas/quantitative_value.dart';

/// A reservation to dine at a food-related business.\n\nNote: This type is
/// for information about actual reservations, e.g. in confirmation emails or
/// HTML pages with individual confirmations of reservations.
/// See https://schema.org/FoodEstablishmentReservation
class SchemaFoodEstablishmentReservation extends SchemaReservation {
  /// The endTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to end. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from January to *December*. For media, including audio
  /// and video, it's the time offset of the end of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  String? endTime;

  /// Number of people the reservation should accommodate.
  ///
  /// Supported types: [SchemaQuantitativeValue], [int]
  dynamic partySize;

  /// The startTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to start. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from *January* to December. For media, including audio
  /// and video, it's the time offset of the start of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  String? startTime;

  /// Create a new instance of [SchemaFoodEstablishmentReservation]
  SchemaFoodEstablishmentReservation({
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
    this.endTime,
    this.partySize,
    this.startTime,
  });

  /// Serialize [SchemaFoodEstablishmentReservation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'FoodEstablishmentReservation',
        'endTime': convertToJsonLd(endTime),
        'partySize': convertToJsonLd(
            partySize, (v) => v is SchemaQuantitativeValue || v is int),
        'startTime': convertToJsonLd(startTime),
      });
}
