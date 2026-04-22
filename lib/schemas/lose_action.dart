// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/achieve_action.dart';
import 'package:schema_org/schemas/person.dart';

/// The act of being defeated in a competitive activity.
/// See https://schema.org/LoseAction
class SchemaLoseAction extends SchemaAchieveAction {
  /// A sub property of participant. The winner of the action.
  SchemaPerson? winner;

  /// Create a new instance of [SchemaLoseAction]
  SchemaLoseAction({
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
    this.winner,
  });

  /// Serialize [SchemaLoseAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'LoseAction',
        'winner': convertToJsonLd(winner, [SchemaPerson]),
      });
}
