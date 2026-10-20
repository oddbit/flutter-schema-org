// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/update_action.dart';
import 'package:schema_org/schemas/thing.dart';

/// The act of editing a recipient by replacing an old object with a new
/// object.
/// See https://schema.org/ReplaceAction
class SchemaReplaceAction extends SchemaUpdateAction {
  /// A sub property of object. The object that is being replaced.
  SchemaThing? replacee;

  /// A sub property of object. The object that replaces.
  SchemaThing? replacer;

  /// Create a new instance of [SchemaReplaceAction]
  SchemaReplaceAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.collection,
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
    super.targetCollection,
    super.url,
    this.replacee,
    this.replacer,
  });

  /// Serialize [SchemaReplaceAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ReplaceAction',
        'replacee': convertToJsonLd(replacee),
        'replacer': convertToJsonLd(replacer),
      });
}
