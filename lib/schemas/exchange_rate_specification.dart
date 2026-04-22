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
import 'package:schema_org/schemas/unit_price_specification.dart';
import 'package:schema_org/schemas/monetary_amount.dart';

/// A structured value representing exchange rate.
/// See https://schema.org/ExchangeRateSpecification
class SchemaExchangeRateSpecification extends SchemaStructuredValue {
  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? currency;

  /// The current price of a currency.
  SchemaUnitPriceSpecification? currentExchangeRate;

  /// The difference between the price at which a broker or other intermediary
  /// buys and sells foreign currency.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  dynamic exchangeRateSpread;

  /// Create a new instance of [SchemaExchangeRateSpecification]
  SchemaExchangeRateSpecification({
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
    this.currency,
    this.currentExchangeRate,
    this.exchangeRateSpread,
  });

  /// Serialize [SchemaExchangeRateSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ExchangeRateSpecification',
        'currency': convertToJsonLd(currency, [String]),
        'currentExchangeRate': convertToJsonLd(
            currentExchangeRate, [SchemaUnitPriceSpecification]),
        'exchangeRateSpread':
            convertToJsonLd(exchangeRateSpread, [SchemaMonetaryAmount, num]),
      });
}
