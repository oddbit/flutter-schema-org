// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/react_action.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// An agent approves/certifies/likes/supports/sanctions an object.
/// See https://schema.org/EndorseAction
class SchemaEndorseAction extends SchemaReactAction {
  /// A sub property of participant. The person/organization being supported.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic endorsee;

  /// Create a new instance of [SchemaEndorseAction]
  SchemaEndorseAction({
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
    this.endorsee,
  });

  /// Serialize [SchemaEndorseAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EndorseAction',
        'endorsee':
            convertToJsonLd(endorsee, [SchemaOrganization, SchemaPerson]),
      });
}
