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
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/qualitative_value.dart';

/// The frequency in MHz and the modulation used for a particular
/// BroadcastService.
/// See https://schema.org/BroadcastFrequencySpecification
class SchemaBroadcastFrequencySpecification extends SchemaIntangible {
  /// The frequency in MHz for a particular broadcast.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic broadcastFrequencyValue;

  /// The modulation (e.g. FM, AM, etc) used by a particular broadcast service.
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic broadcastSignalModulation;

  /// The subchannel used for the broadcast.
  String? broadcastSubChannel;

  /// Create a new instance of [SchemaBroadcastFrequencySpecification]
  SchemaBroadcastFrequencySpecification({
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
    this.broadcastFrequencyValue,
    this.broadcastSignalModulation,
    this.broadcastSubChannel,
  });

  /// Serialize [SchemaBroadcastFrequencySpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BroadcastFrequencySpecification',
        'broadcastFrequencyValue': convertToJsonLd(broadcastFrequencyValue,
            (v) => v is SchemaQuantitativeValue || v is num),
        'broadcastSignalModulation': convertToJsonLd(broadcastSignalModulation,
            (v) => v is SchemaQualitativeValue || v is String),
        'broadcastSubChannel': convertToJsonLd(broadcastSubChannel),
      });
}
