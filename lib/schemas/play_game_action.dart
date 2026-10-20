// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/consume_action.dart';
import 'package:schema_org/schemas/game_availability_enumeration.dart';

/// The act of playing a video game.
/// See https://schema.org/PlayGameAction
class SchemaPlayGameAction extends SchemaConsumeAction {
  /// Indicates the availability type of the game content associated with this
  /// action, such as whether it is a full version or a demo.
  ///
  /// Supported types: [SchemaGameAvailabilityEnumeration], [String]
  dynamic gameAvailabilityType;

  /// Create a new instance of [SchemaPlayGameAction]
  SchemaPlayGameAction({
    super.actionAccessibilityRequirement,
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.expectsAcceptanceOf,
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
    this.gameAvailabilityType,
  });

  /// Serialize [SchemaPlayGameAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PlayGameAction',
        'gameAvailabilityType': convertToJsonLd(gameAvailabilityType,
            (v) => v is SchemaGameAvailabilityEnumeration || v is String),
      });
}
