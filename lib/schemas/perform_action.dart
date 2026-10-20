// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/play_action.dart';
import 'package:schema_org/schemas/entertainment_business.dart';

/// The act of participating in performance arts.
/// See https://schema.org/PerformAction
class SchemaPerformAction extends SchemaPlayAction {
  /// A sub property of location. The entertainment business where the action
  /// occurred.
  SchemaEntertainmentBusiness? entertainmentBusiness;

  /// Create a new instance of [SchemaPerformAction]
  SchemaPerformAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.audience,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.event,
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
    this.entertainmentBusiness,
  });

  /// Serialize [SchemaPerformAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PerformAction',
        'entertainmentBusiness': convertToJsonLd(entertainmentBusiness),
      });
}
