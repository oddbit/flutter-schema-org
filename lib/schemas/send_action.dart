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
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// The act of physically/electronically dispatching an object for transfer
/// from an origin to a destination. Related actions:\n\n*
/// [SchemaReceiveAction]: The reciprocal of SendAction.\n*
/// [SchemaGiveAction]: Unlike GiveAction, SendAction does not imply the
/// transfer of ownership (e.g. I can send you my laptop, but I'm not
/// necessarily giving it to you).
/// See https://schema.org/SendAction
class SchemaSendAction extends SchemaTransferAction {
  /// A sub property of instrument. The method of delivery.
  SchemaDeliveryMethod? deliveryMethod;

  /// A sub property of participant. The participant who is at the receiving
  /// end of the action.
  ///
  /// Supported types: [SchemaAudience], [SchemaContactPoint],
  /// [SchemaOrganization], [SchemaPerson]
  dynamic recipient;

  /// Create a new instance of [SchemaSendAction]
  SchemaSendAction({
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
    this.recipient,
  });

  /// Serialize [SchemaSendAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SendAction',
        'deliveryMethod': convertToJsonLd(deliveryMethod),
        'recipient': convertToJsonLd(
            recipient,
            (v) =>
                v is SchemaAudience ||
                v is SchemaContactPoint ||
                v is SchemaOrganization ||
                v is SchemaPerson),
      });
}
