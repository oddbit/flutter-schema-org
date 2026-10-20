// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Indicates whether this game is multi-player, co-op or single-player.
/// See https://schema.org/GamePlayMode
enum SchemaGamePlayMode implements SchemaSerializable {
  /// Play mode: CoOp. Co-operative games, where you play on the same team
  /// with friends.
  coOp('https://schema.org/CoOp'),

  /// Play mode: MultiPlayer. Requiring or allowing multiple human players
  /// to play simultaneously.
  multiPlayer('https://schema.org/MultiPlayer'),

  /// Play mode: SinglePlayer. Which is played by a lone player.
  singlePlayer('https://schema.org/SinglePlayer');

  /// Constructor for [SchemaGamePlayMode]
  const SchemaGamePlayMode(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaGamePlayMode] to JSON-LD
  @override
  String toJsonLd() => value;
}
