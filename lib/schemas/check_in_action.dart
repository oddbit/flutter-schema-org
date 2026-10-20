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

/// The act of an agent communicating (service provider, social media, etc)
/// their arrival by registering/confirming for a previously reserved service
/// (e.g. flight check-in) or at a place (e.g. hotel), possibly resulting in
/// a result (boarding pass, etc).\n\nRelated actions:\n\n*
/// [SchemaCheckOutAction]: The antonym of CheckInAction.\n*
/// [SchemaArriveAction]: Unlike ArriveAction, CheckInAction implies that the
/// agent is informing/confirming the start of a previously reserved
/// service.\n* [SchemaConfirmAction]: Unlike ConfirmAction, CheckInAction
/// implies that the agent is informing/confirming the *start* of a
/// previously reserved service rather than its validity/existence.
/// See https://schema.org/CheckInAction
class SchemaCheckInAction extends SchemaCommunicateAction {
  /// Create a new instance of [SchemaCheckInAction]
  SchemaCheckInAction({
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
  });

  /// Serialize [SchemaCheckInAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CheckInAction',
      });
}
