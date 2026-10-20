// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/communicate_action.dart';
import 'package:schema_org/schemas/event.dart';

/// The act of asking someone to attend an event. Reciprocal of RsvpAction.
/// See https://schema.org/InviteAction
class SchemaInviteAction extends SchemaCommunicateAction {
  /// Upcoming or past event associated with this place, organization, or
  /// action.
  SchemaEvent? event;

  /// Create a new instance of [SchemaInviteAction]
  SchemaInviteAction({
    super.about,
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
    super.inLanguage,
    super.instrument,
    super.language,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.provider,
    super.recipient,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
    this.event,
  });

  /// Serialize [SchemaInviteAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'InviteAction',
        'event': convertToJsonLd(event),
      });
}
