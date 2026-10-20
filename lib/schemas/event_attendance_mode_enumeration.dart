// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// An EventAttendanceModeEnumeration value is one of potentially several
/// modes of organising an event, relating to whether it is online or
/// offline.
/// See https://schema.org/EventAttendanceModeEnumeration
enum SchemaEventAttendanceModeEnumeration implements SchemaSerializable {
  /// MixedEventAttendanceMode - an event that is conducted as a
  /// combination of both offline and online modes.
  mixedEventAttendanceMode('https://schema.org/MixedEventAttendanceMode'),

  /// OfflineEventAttendanceMode - an event that is primarily conducted
  /// offline.
  offlineEventAttendanceMode('https://schema.org/OfflineEventAttendanceMode'),

  /// OnlineEventAttendanceMode - an event that is primarily conducted
  /// online.
  onlineEventAttendanceMode('https://schema.org/OnlineEventAttendanceMode');

  /// Constructor for [SchemaEventAttendanceModeEnumeration]
  const SchemaEventAttendanceModeEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaEventAttendanceModeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
