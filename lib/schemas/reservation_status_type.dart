// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/status_enumeration.dart';

/// Enumerated status values for Reservation.
/// See https://schema.org/ReservationStatusType
enum SchemaReservationStatusType implements SchemaStatusEnumeration {
  /// The status for a previously confirmed reservation that is now
  /// cancelled.
  reservationCancelled('https://schema.org/ReservationCancelled'),

  /// The status of a confirmed reservation.
  reservationConfirmed('https://schema.org/ReservationConfirmed'),

  /// The status of a reservation on hold pending an update like credit
  /// card number or flight changes.
  reservationHold('https://schema.org/ReservationHold'),

  /// The status of a reservation when a request has been sent, but not
  /// confirmed.
  reservationPending('https://schema.org/ReservationPending');

  /// Constructor for [SchemaReservationStatusType]
  const SchemaReservationStatusType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaReservationStatusType] to JSON-LD
  @override
  String toJsonLd() => value;
}
