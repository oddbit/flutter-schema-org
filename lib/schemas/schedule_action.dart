// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/plan_action.dart';

/// Scheduling future actions, events, or tasks.\n\nRelated actions:\n\n*
/// [SchemaReserveAction]: Unlike ReserveAction, ScheduleAction allocates
/// future actions (e.g. an event, a task, etc) towards a time slot / spatial
/// allocation.
/// See https://schema.org/ScheduleAction
class SchemaScheduleAction extends SchemaPlanAction {
  /// Create a new instance of [SchemaScheduleAction]
  SchemaScheduleAction({
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
    super.scheduledTime,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
  });

  /// Serialize [SchemaScheduleAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ScheduleAction',
      });
}
