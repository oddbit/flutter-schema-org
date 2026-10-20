// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/status_enumeration.dart';

/// Status of a game server.
/// See https://schema.org/GameServerStatus
enum SchemaGameServerStatus implements SchemaStatusEnumeration {
  /// Game server status: OfflinePermanently. Server is offline and not
  /// available.
  offlinePermanently('https://schema.org/OfflinePermanently'),

  /// Game server status: OfflineTemporarily. Server is offline now but it
  /// can be online soon.
  offlineTemporarily('https://schema.org/OfflineTemporarily'),

  /// Game server status: Online. Server is available.
  online('https://schema.org/Online'),

  /// Game server status: OnlineFull. Server is online but unavailable. The
  /// maximum number of players has reached.
  onlineFull('https://schema.org/OnlineFull');

  /// Constructor for [SchemaGameServerStatus]
  const SchemaGameServerStatus(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaGameServerStatus] to JSON-LD
  @override
  String toJsonLd() => value;
}
