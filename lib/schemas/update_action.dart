// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/thing.dart';

/// The act of managing by changing/editing the state of the object.
/// See https://schema.org/UpdateAction
class SchemaUpdateAction extends SchemaAction {
  /// A sub property of object. The collection target of the action.
  @Deprecated('Use [targetCollection]. See https://schema.org/collection')
  SchemaThing? collection;

  /// A sub property of object. The collection target of the action.
  SchemaThing? targetCollection;

  /// Create a new instance of [SchemaUpdateAction]
  SchemaUpdateAction({
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
    this.collection,
    this.targetCollection,
  });

  /// Serialize [SchemaUpdateAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'UpdateAction',
        'collection': convertToJsonLd(collection, [SchemaThing]),
        'targetCollection': convertToJsonLd(targetCollection, [SchemaThing]),
      });
}
