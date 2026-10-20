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
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/event.dart';

/// The act of playing/exercising/training/performing for enjoyment, leisure,
/// recreation, competition or exercise.\n\nRelated actions:\n\n*
/// [SchemaListenAction]: Unlike ListenAction (which is under ConsumeAction),
/// PlayAction refers to performing for an audience or at an event, rather
/// than consuming music.\n* [SchemaWatchAction]: Unlike WatchAction (which
/// is under ConsumeAction), PlayAction refers to showing/displaying for an
/// audience or at an event, rather than consuming visual content.
/// See https://schema.org/PlayAction
class SchemaPlayAction extends SchemaAction {
  /// An intended audience, i.e. a group for whom something was created.
  SchemaAudience? audience;

  /// Upcoming or past event associated with this place, organization, or
  /// action.
  SchemaEvent? event;

  /// Create a new instance of [SchemaPlayAction]
  SchemaPlayAction({
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
    this.audience,
    this.event,
  });

  /// Serialize [SchemaPlayAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PlayAction',
        'audience': convertToJsonLd(audience),
        'event': convertToJsonLd(event),
      });
}
