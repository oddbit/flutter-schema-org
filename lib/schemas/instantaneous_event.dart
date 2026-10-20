// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/thing.dart';

/// An event with no duration, like for instance a computer log entry.
/// See https://schema.org/InstantaneousEvent
class SchemaInstantaneousEvent extends SchemaStructuredValue {
  /// Data associated with the event, like for instance a log message.
  SchemaThing? data;

  /// The source or cause of the event.
  SchemaThing? source;

  /// The instant the event occured.
  String? timestamp;

  /// Create a new instance of [SchemaInstantaneousEvent]
  SchemaInstantaneousEvent({
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
    this.data,
    this.source,
    this.timestamp,
  });

  /// Serialize [SchemaInstantaneousEvent] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'InstantaneousEvent',
        'data': convertToJsonLd(data),
        'source': convertToJsonLd(source),
        'timestamp': convertToJsonLd(timestamp),
      });
}
