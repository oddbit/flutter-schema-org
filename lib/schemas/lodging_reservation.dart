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
import 'package:schema_org/schemas/quantitative_value.dart';

/// A reservation for lodging at a hotel, motel, inn, etc.\n\nNote: This type
/// is for information about actual reservations, e.g. in confirmation emails
/// or HTML pages with individual confirmations of reservations.
/// See https://schema.org/LodgingReservation
class SchemaLodgingReservation extends SchemaReservation {
  /// The earliest someone may check into a lodging establishment.
  String? checkinTime;

  /// The latest someone may check out of a lodging establishment.
  String? checkoutTime;

  /// A full description of the lodging unit.
  String? lodgingUnitDescription;

  /// Textual description of the unit type (including suite vs. room, size of
  /// bed, etc.).
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic lodgingUnitType;

  /// The number of adults staying in the unit.
  ///
  /// Supported types: [SchemaQuantitativeValue], [int]
  dynamic numAdults;

  /// The number of children staying in the unit.
  ///
  /// Supported types: [SchemaQuantitativeValue], [int]
  dynamic numChildren;

  /// Create a new instance of [SchemaLodgingReservation]
  SchemaLodgingReservation({
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
    this.checkinTime,
    this.checkoutTime,
    this.lodgingUnitDescription,
    this.lodgingUnitType,
    this.numAdults,
    this.numChildren,
  });

  /// Serialize [SchemaLodgingReservation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'LodgingReservation',
        'checkinTime': convertToJsonLd(checkinTime),
        'checkoutTime': convertToJsonLd(checkoutTime),
        'lodgingUnitDescription': convertToJsonLd(lodgingUnitDescription),
        'lodgingUnitType': convertToJsonLd(
            lodgingUnitType, (v) => v is SchemaQualitativeValue || v is String),
        'numAdults': convertToJsonLd(
            numAdults, (v) => v is SchemaQuantitativeValue || v is int),
        'numChildren': convertToJsonLd(
            numChildren, (v) => v is SchemaQuantitativeValue || v is int),
      });
}
