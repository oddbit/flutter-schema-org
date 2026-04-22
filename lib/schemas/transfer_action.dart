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
import 'package:schema_org/schemas/place.dart';

/// The act of transferring/moving (abstract or concrete) animate or
/// inanimate objects from one place to another.
/// See https://schema.org/TransferAction
class SchemaTransferAction extends SchemaAction {
  /// A sub property of location. The original location of the object or the
  /// agent before the action.
  SchemaPlace? fromLocation;

  /// A sub property of location. The final location of the object or the agent
  /// after the action.
  SchemaPlace? toLocation;

  /// Create a new instance of [SchemaTransferAction]
  SchemaTransferAction({
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
    this.fromLocation,
    this.toLocation,
  });

  /// Serialize [SchemaTransferAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TransferAction',
        'fromLocation': convertToJsonLd(fromLocation, [SchemaPlace]),
        'toLocation': convertToJsonLd(toLocation, [SchemaPlace]),
      });
}
