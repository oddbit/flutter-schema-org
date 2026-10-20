// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/choose_action.dart';
import 'package:schema_org/schemas/person.dart';

/// The act of expressing a preference from a fixed/finite/structured set of
/// choices/options.
/// See https://schema.org/VoteAction
class SchemaVoteAction extends SchemaChooseAction {
  /// A sub property of object. The candidate subject of this action.
  SchemaPerson? candidate;

  /// Create a new instance of [SchemaVoteAction]
  SchemaVoteAction({
    super.actionOption,
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
    super.option,
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
    this.candidate,
  });

  /// Serialize [SchemaVoteAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'VoteAction',
        'candidate': convertToJsonLd(candidate),
      });
}
