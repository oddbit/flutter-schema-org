// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/move_action.dart';
import 'package:schema_org/schemas/distance.dart';

/// The act of traveling from a fromLocation to a destination by a specified
/// mode of transport, optionally with participants.
/// See https://schema.org/TravelAction
class SchemaTravelAction extends SchemaMoveAction {
  /// The distance travelled, e.g. exercising or travelling.
  SchemaDistance? distance;

  /// Create a new instance of [SchemaTravelAction]
  SchemaTravelAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.fromLocation,
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
    super.toLocation,
    super.url,
    this.distance,
  });

  /// Serialize [SchemaTravelAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TravelAction',
        'distance': convertToJsonLd(distance),
      });
}
