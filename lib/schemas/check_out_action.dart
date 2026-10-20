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
/// their departure of a previously reserved service (e.g. flight check-in)
/// or place (e.g. hotel).\n\nRelated actions:\n\n* [SchemaCheckInAction]:
/// The antonym of CheckOutAction.\n* [SchemaDepartAction]: Unlike
/// DepartAction, CheckOutAction implies that the agent is
/// informing/confirming the end of a previously reserved service.\n*
/// [SchemaCancelAction]: Unlike CancelAction, CheckOutAction implies that
/// the agent is informing/confirming the end of a previously reserved
/// service.
/// See https://schema.org/CheckOutAction
class SchemaCheckOutAction extends SchemaCommunicateAction {
  /// Create a new instance of [SchemaCheckOutAction]
  SchemaCheckOutAction({
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

  /// Serialize [SchemaCheckOutAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CheckOutAction',
      });
}
