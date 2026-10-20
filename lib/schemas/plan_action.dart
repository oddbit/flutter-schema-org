// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/organize_action.dart';

/// The act of planning the execution of an
/// event/task/action/reservation/plan to a future date.
/// See https://schema.org/PlanAction
class SchemaPlanAction extends SchemaOrganizeAction {
  /// The time the object is scheduled to.
  String? scheduledTime;

  /// Create a new instance of [SchemaPlanAction]
  SchemaPlanAction({
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
    this.scheduledTime,
  });

  /// Serialize [SchemaPlanAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PlanAction',
        'scheduledTime': convertToJsonLd(scheduledTime),
      });
}
