// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/radio_channel.dart';

/// A radio channel that uses FM.
/// See https://schema.org/FMRadioChannel
class SchemaFMRadioChannel extends SchemaRadioChannel {
  /// Create a new instance of [SchemaFMRadioChannel]
  SchemaFMRadioChannel({
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

  /// Serialize [SchemaFMRadioChannel] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'FMRadioChannel',
      });
}
