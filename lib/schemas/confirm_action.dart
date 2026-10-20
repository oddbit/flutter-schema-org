// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/inform_action.dart';

/// The act of notifying someone that a future event/action is going to
/// happen as expected.\n\nRelated actions:\n\n* [SchemaCancelAction]: The
/// antonym of ConfirmAction.
/// See https://schema.org/ConfirmAction
class SchemaConfirmAction extends SchemaInformAction {
  /// Create a new instance of [SchemaConfirmAction]
  SchemaConfirmAction({
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
    super.event,
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

  /// Serialize [SchemaConfirmAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ConfirmAction',
      });
}
