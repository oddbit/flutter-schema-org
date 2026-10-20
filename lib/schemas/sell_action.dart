// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/trade_action.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/warranty_promise.dart';

/// The act of taking money from a buyer in exchange for goods or services
/// rendered. An agent sells an object, product, or service to a buyer for a
/// price. Reciprocal of BuyAction.
/// See https://schema.org/SellAction
class SchemaSellAction extends SchemaTradeAction {
  /// A sub property of participant. The participant/person/organization that
  /// bought the object.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic buyer;

  /// The warranty promise(s) included in the offer.
  @Deprecated('Use [warranty]. See https://schema.org/warrantyPromise')
  SchemaWarrantyPromise? warrantyPromise;

  /// Create a new instance of [SchemaSellAction]
  SchemaSellAction({
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
    super.price,
    super.priceCurrency,
    super.priceSpecification,
    super.provider,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
    this.buyer,
    this.warrantyPromise,
  });

  /// Serialize [SchemaSellAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SellAction',
        'buyer': convertToJsonLd(
            buyer, (v) => v is SchemaOrganization || v is SchemaPerson),
        'warrantyPromise': convertToJsonLd(warrantyPromise),
      });
}
