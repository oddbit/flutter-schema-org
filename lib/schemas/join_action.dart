// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/interact_action.dart';
import 'package:schema_org/schemas/event.dart';

/// An agent joins an event/group with participants/friends at a
/// location.\n\nRelated actions:\n\n* [SchemaRegisterAction]: Unlike
/// RegisterAction, JoinAction refers to joining a group/team of people.\n*
/// [SchemaSubscribeAction]: Unlike SubscribeAction, JoinAction does not
/// imply that you'll be receiving updates.\n* [SchemaFollowAction]: Unlike
/// FollowAction, JoinAction does not imply that you'll be polling for
/// updates.
/// See https://schema.org/JoinAction
class SchemaJoinAction extends SchemaInteractAction {
  /// Upcoming or past event associated with this place, organization, or
  /// action.
  SchemaEvent? event;

  /// Create a new instance of [SchemaJoinAction]
  SchemaJoinAction({
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
    this.event,
  });

  /// Serialize [SchemaJoinAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'JoinAction',
        'event': convertToJsonLd(event),
      });
}
