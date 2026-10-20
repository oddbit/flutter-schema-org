// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/transfer_action.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// The act of transferring ownership of an object to a destination.
/// Reciprocal of TakeAction.\n\nRelated actions:\n\n* [SchemaTakeAction]:
/// Reciprocal of GiveAction.\n* [SchemaSendAction]: Unlike SendAction,
/// GiveAction implies that ownership is being transferred (e.g. I may send
/// my laptop to you, but that doesn't mean I'm giving it to you).
/// See https://schema.org/GiveAction
class SchemaGiveAction extends SchemaTransferAction {
  /// A sub property of participant. The participant who is at the receiving
  /// end of the action.
  ///
  /// Supported types: [SchemaAudience], [SchemaContactPoint],
  /// [SchemaOrganization], [SchemaPerson]
  dynamic recipient;

  /// Create a new instance of [SchemaGiveAction]
  SchemaGiveAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.fromLocation,
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
    super.toLocation,
    super.url,
    this.recipient,
  });

  /// Serialize [SchemaGiveAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'GiveAction',
        'recipient': convertToJsonLd(
            recipient,
            (v) =>
                v is SchemaAudience ||
                v is SchemaContactPoint ||
                v is SchemaOrganization ||
                v is SchemaPerson),
      });
}
