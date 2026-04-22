// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/add_action.dart';
import 'package:schema_org/schemas/place.dart';

/// The act of adding at a specific location in an ordered collection.
/// See https://schema.org/InsertAction
class SchemaInsertAction extends SchemaAddAction {
  /// A sub property of location. The final location of the object or the agent
  /// after the action.
  SchemaPlace? toLocation;

  /// Create a new instance of [SchemaInsertAction]
  SchemaInsertAction({
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
    this.toLocation,
  });

  /// Serialize [SchemaInsertAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'InsertAction',
        'toLocation': convertToJsonLd(toLocation, [SchemaPlace]),
      });
}
