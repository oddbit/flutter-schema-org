// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/hyper_toc_entry.dart';

/// This is the [SchemaAction] of navigating to a specific
/// [SchemastartOffset] timestamp within a [SchemaVideoObject], typically
/// represented with a URL template structure.
/// See https://schema.org/SeekToAction
class SchemaSeekToAction extends SchemaAction {
  /// The start time of the clip expressed as the number of seconds from the
  /// beginning of the work.
  ///
  /// Supported types: [SchemaHyperTocEntry], [num]
  dynamic startOffset;

  /// Create a new instance of [SchemaSeekToAction]
  SchemaSeekToAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.identifier,
    super.image,
    super.instrument,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.provider,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
    this.startOffset,
  });

  /// Serialize [SchemaSeekToAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SeekToAction',
        'startOffset': convertToJsonLd(
            startOffset, (v) => v is SchemaHyperTocEntry || v is num),
      });
}
