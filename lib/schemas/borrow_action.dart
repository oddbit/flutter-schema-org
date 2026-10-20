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
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// The act of obtaining an object under an agreement to return it at a later
/// date. Reciprocal of LendAction.\n\nRelated actions:\n\n*
/// [SchemaLendAction]: Reciprocal of BorrowAction.
/// See https://schema.org/BorrowAction
class SchemaBorrowAction extends SchemaTransferAction {
  /// A sub property of participant. The person that lends the object being
  /// borrowed.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic lender;

  /// Create a new instance of [SchemaBorrowAction]
  SchemaBorrowAction({
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
    this.lender,
  });

  /// Serialize [SchemaBorrowAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BorrowAction',
        'lender': convertToJsonLd(
            lender, (v) => v is SchemaOrganization || v is SchemaPerson),
      });
}
