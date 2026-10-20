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
import 'package:schema_org/schemas/delivery_method.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// The act of physically/electronically taking delivery of an object that
/// has been transferred from an origin to a destination. Reciprocal of
/// SendAction.\n\nRelated actions:\n\n* [SchemaSendAction]: The reciprocal
/// of ReceiveAction.\n* [SchemaTakeAction]: Unlike TakeAction, ReceiveAction
/// does not imply that the ownership has been transferred (e.g. I can
/// receive a package, but it does not mean the package is now mine).
/// See https://schema.org/ReceiveAction
class SchemaReceiveAction extends SchemaTransferAction {
  /// A sub property of instrument. The method of delivery.
  SchemaDeliveryMethod? deliveryMethod;

  /// A sub property of participant. The participant who is at the sending end
  /// of the action.
  ///
  /// Supported types: [SchemaAudience], [SchemaOrganization], [SchemaPerson]
  dynamic sender;

  /// Create a new instance of [SchemaReceiveAction]
  SchemaReceiveAction({
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
    this.deliveryMethod,
    this.sender,
  });

  /// Serialize [SchemaReceiveAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ReceiveAction',
        'deliveryMethod': convertToJsonLd(deliveryMethod),
        'sender': convertToJsonLd(
            sender,
            (v) =>
                v is SchemaAudience ||
                v is SchemaOrganization ||
                v is SchemaPerson),
      });
}
