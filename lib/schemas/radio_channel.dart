// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/broadcast_channel.dart';

/// A unique instance of a radio BroadcastService on a
/// CableOrSatelliteService lineup.
/// See https://schema.org/RadioChannel
class SchemaRadioChannel extends SchemaBroadcastChannel {
  /// Create a new instance of [SchemaRadioChannel]
  SchemaRadioChannel({
    super.additionalType,
    super.alternateName,
    super.broadcastChannelId,
    super.broadcastFrequency,
    super.broadcastServiceTier,
    super.description,
    super.disambiguatingDescription,
    super.genre,
    super.identifier,
    super.image,
    super.inBroadcastLineup,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.providesBroadcastService,
    super.sameAs,
    super.subjectOf,
    super.url,
  });

  /// Serialize [SchemaRadioChannel] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'RadioChannel',
      });
}
