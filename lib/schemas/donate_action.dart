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
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// The act of providing goods, services, or money without compensation,
/// often for philanthropic reasons.
/// See https://schema.org/DonateAction
class SchemaDonateAction extends SchemaTransferAction {
  /// The offer price of a product, or of a price component when attached to
  /// PriceSpecification and its subtypes.\n\nUsage guidelines:\n\n* Use the
  /// [SchemapriceCurrency] property (with standard formats: [ISO 4217 currency
  /// format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR") instead of including
  /// [ambiguous
  /// symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign)
  /// such as '$' in the value.\n* Use '.' (Unicode 'FULL STOP' (U+002E))
  /// rather than ',' to indicate a decimal point. Avoid using these symbols as
  /// a readability separator.\n* Note that both
  /// [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute)
  /// and Microdata syntax allow the use of a "content=" attribute for
  /// publishing simple machine-readable values alongside more human-friendly
  /// formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030)
  /// to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode
  /// symbols.
  ///
  /// Supported types: [String], [num]
  dynamic price;

  /// The currency of the price, or a price component when attached to
  /// [SchemaPriceSpecification] and its subtypes.\n\nUse standard formats:
  /// [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g.
  /// "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR".
  String? priceCurrency;

  /// One or more detailed price specifications, indicating the unit price and
  /// delivery or payment charges.
  SchemaPriceSpecification? priceSpecification;

  /// A sub property of participant. The participant who is at the receiving
  /// end of the action.
  ///
  /// Supported types: [SchemaAudience], [SchemaContactPoint],
  /// [SchemaOrganization], [SchemaPerson]
  dynamic recipient;

  /// Create a new instance of [SchemaDonateAction]
  SchemaDonateAction({
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
    this.price,
    this.priceCurrency,
    this.priceSpecification,
    this.recipient,
  });

  /// Serialize [SchemaDonateAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DonateAction',
        'price': convertToJsonLd(price, (v) => v is String || v is num),
        'priceCurrency': convertToJsonLd(priceCurrency),
        'priceSpecification': convertToJsonLd(priceSpecification),
        'recipient': convertToJsonLd(
            recipient,
            (v) =>
                v is SchemaAudience ||
                v is SchemaContactPoint ||
                v is SchemaOrganization ||
                v is SchemaPerson),
      });
}
