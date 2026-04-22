// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/video_game.dart';
import 'package:schema_org/schemas/game_server_status.dart';

/// Server that provides game interaction in a multiplayer game.
/// See https://schema.org/GameServer
class SchemaGameServer extends SchemaIntangible {
  /// Video game which is played on this server.
  SchemaVideoGame? game;

  /// Number of players on the server.
  int? playersOnline;

  /// Status of a game server.
  SchemaGameServerStatus? serverStatus;

  /// Create a new instance of [SchemaGameServer]
  SchemaGameServer({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.game,
    this.playersOnline,
    this.serverStatus,
  });

  /// Serialize [SchemaGameServer] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'GameServer',
        'game': convertToJsonLd(game, [SchemaVideoGame]),
        'playersOnline': convertToJsonLd(playersOnline, [int]),
        'serverStatus': convertToJsonLd(serverStatus, [SchemaGameServerStatus]),
      });
}
