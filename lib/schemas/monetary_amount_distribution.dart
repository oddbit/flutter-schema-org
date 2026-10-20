// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/quantitative_value_distribution.dart';

/// A statistical distribution of monetary amounts.
/// See https://schema.org/MonetaryAmountDistribution
class SchemaMonetaryAmountDistribution
    extends SchemaQuantitativeValueDistribution {
  /// The currency in which the monetary amount is expressed.\n\nUse standard
  /// formats: [ISO 4217 currency
  /// format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR".
  String? currency;

  /// Create a new instance of [SchemaMonetaryAmountDistribution]
  SchemaMonetaryAmountDistribution({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.duration,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.median,
    super.name,
    super.owner,
    super.percentile10,
    super.percentile25,
    super.percentile75,
    super.percentile90,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.currency,
  });

  /// Serialize [SchemaMonetaryAmountDistribution] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MonetaryAmountDistribution',
        'currency': convertToJsonLd(currency),
      });
}
