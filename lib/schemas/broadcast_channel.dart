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
import 'package:schema_org/schemas/broadcast_frequency_specification.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/cable_or_satellite_service.dart';
import 'package:schema_org/schemas/broadcast_service.dart';

/// A unique instance of a BroadcastService on a CableOrSatelliteService
/// lineup.
/// See https://schema.org/BroadcastChannel
class SchemaBroadcastChannel extends SchemaIntangible {
  /// The unique address by which the BroadcastService can be identified in a
  /// provider lineup. In US, this is typically a number.
  String? broadcastChannelId;

  /// The frequency used for over-the-air broadcasts. Numeric values or simple
  /// ranges, e.g. 87-99. In addition a shortcut idiom is supported for
  /// frequencies of AM and FM radio channels, e.g. "87 FM".
  ///
  /// Supported types: [SchemaBroadcastFrequencySpecification], [String]
  dynamic broadcastFrequency;

  /// The type of service required to have access to the channel (e.g. Standard
  /// or Premium).
  String? broadcastServiceTier;

  /// Genre of the creative work, broadcast channel or group.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic genre;

  /// The CableOrSatelliteService offering the channel.
  SchemaCableOrSatelliteService? inBroadcastLineup;

  /// The BroadcastService offered on this channel.
  SchemaBroadcastService? providesBroadcastService;

  /// Create a new instance of [SchemaBroadcastChannel]
  SchemaBroadcastChannel({
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
    this.broadcastChannelId,
    this.broadcastFrequency,
    this.broadcastServiceTier,
    this.genre,
    this.inBroadcastLineup,
    this.providesBroadcastService,
  });

  /// Serialize [SchemaBroadcastChannel] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BroadcastChannel',
        'broadcastChannelId': convertToJsonLd(broadcastChannelId, [String]),
        'broadcastFrequency': convertToJsonLd(broadcastFrequency,
            [SchemaBroadcastFrequencySpecification, String]),
        'broadcastServiceTier': convertToJsonLd(broadcastServiceTier, [String]),
        'genre': convertToJsonLd(genre, [SchemaDefinedTerm, String]),
        'inBroadcastLineup':
            convertToJsonLd(inBroadcastLineup, [SchemaCableOrSatelliteService]),
        'providesBroadcastService':
            convertToJsonLd(providesBroadcastService, [SchemaBroadcastService]),
      });
}
