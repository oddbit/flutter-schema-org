// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/monetary_amount.dart';

/// A DatedMoneySpecification represents monetary values with optional start
/// and end dates. For example, this could represent an employee's salary
/// over a specific period of time. __Note:__ This type has been superseded
/// by [SchemaMonetaryAmount], use of that type is recommended.
/// See https://schema.org/DatedMoneySpecification
@Deprecated(
    'Use [SchemaMonetaryAmount]. See https://schema.org/DatedMoneySpecification')
class SchemaDatedMoneySpecification extends SchemaStructuredValue {
  /// The amount of money.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  dynamic amount;

  /// The currency in which the monetary amount is expressed.\n\nUse standard
  /// formats: [ISO 4217 currency
  /// format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR".
  String? currency;

  /// The end date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? endDate;

  /// The start date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? startDate;

  /// Create a new instance of [SchemaDatedMoneySpecification]
  SchemaDatedMoneySpecification({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.amount,
    this.currency,
    this.endDate,
    this.startDate,
  });

  /// Serialize [SchemaDatedMoneySpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DatedMoneySpecification',
        'amount': convertToJsonLd(
            amount, (v) => v is SchemaMonetaryAmount || v is num),
        'currency': convertToJsonLd(currency),
        'endDate': convertToJsonLd(endDate),
        'startDate': convertToJsonLd(startDate),
      });
}
