// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/assess_action.dart';
import 'package:schema_org/schemas/thing.dart';

/// The act of expressing a preference from a set of options or a large or
/// unbounded set of choices/options.
/// See https://schema.org/ChooseAction
class SchemaChooseAction extends SchemaAssessAction {
  /// A sub property of object. The options subject to this action.
  ///
  /// Supported types: [String], [SchemaThing]
  dynamic actionOption;

  /// A sub property of object. The options subject to this action.
  ///
  /// Supported types: [String], [SchemaThing]
  @Deprecated('Use [actionOption]. See https://schema.org/option')
  dynamic option;

  /// Create a new instance of [SchemaChooseAction]
  SchemaChooseAction({
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
    this.actionOption,
    this.option,
  });

  /// Serialize [SchemaChooseAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ChooseAction',
        'actionOption': convertToJsonLd(actionOption, [String, SchemaThing]),
        'option': convertToJsonLd(option, [String, SchemaThing]),
      });
}
