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

/// An agent leaves an event / group with participants/friends at a
/// location.\n\nRelated actions:\n\n* [SchemaJoinAction]: The antonym of
/// LeaveAction.\n* [SchemaUnRegisterAction]: Unlike UnRegisterAction,
/// LeaveAction implies leaving a group/team of people rather than a service.
/// See https://schema.org/LeaveAction
class SchemaLeaveAction extends SchemaInteractAction {
  /// Upcoming or past event associated with this place, organization, or
  /// action.
  SchemaEvent? event;

  /// Create a new instance of [SchemaLeaveAction]
  SchemaLeaveAction({
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

  /// Serialize [SchemaLeaveAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'LeaveAction',
        'event': convertToJsonLd(event),
      });
}
