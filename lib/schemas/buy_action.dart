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

/// The act of giving money to a seller in exchange for goods or services
/// rendered. An agent buys an object, product, or service from a seller for
/// a price. Reciprocal of SellAction.
/// See https://schema.org/BuyAction
class SchemaBuyAction extends SchemaTradeAction {
  /// An entity which offers (sells / leases / lends / loans) the services /
  /// goods. A seller may also be a provider.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic seller;

  /// 'vendor' is an earlier term for 'seller'.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @Deprecated('Use [seller]. See https://schema.org/vendor')
  dynamic vendor;

  /// The warranty promise(s) included in the offer.
  @Deprecated('Use [warranty]. See https://schema.org/warrantyPromise')
  SchemaWarrantyPromise? warrantyPromise;

  /// Create a new instance of [SchemaBuyAction]
  SchemaBuyAction({
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
    this.seller,
    this.vendor,
    this.warrantyPromise,
  });

  /// Serialize [SchemaBuyAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BuyAction',
        'seller': convertToJsonLd(
            seller, (v) => v is SchemaOrganization || v is SchemaPerson),
        'vendor': convertToJsonLd(
            vendor, (v) => v is SchemaOrganization || v is SchemaPerson),
        'warrantyPromise': convertToJsonLd(warrantyPromise),
      });
}
