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
import 'package:schema_org/schemas/qualitative_value.dart';

/// A monetary value or range. This type can be used to describe an amount of
/// money such as $50 USD, or a range as in describing a bank account being
/// suitable for a balance between £1,000 and £1,000,000 GBP, or the value of
/// a salary, etc. It is recommended to use [SchemaPriceSpecification] Types
/// to describe the price of an Offer, Invoice, etc.
/// See https://schema.org/MonetaryAmount
class SchemaMonetaryAmount extends SchemaStructuredValue {
  /// The currency in which the monetary amount is expressed.\n\nUse standard
  /// formats: [ISO 4217 currency
  /// format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR".
  String? currency;

  /// The upper value of some characteristic or property.
  num? maxValue;

  /// The lower value of some characteristic or property.
  num? minValue;

  /// The date when the item becomes valid.
  String? validFrom;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  String? validThrough;

  /// The value of a [SchemaQuantitativeValue] (including [SchemaObservation])
  /// or property value node.\n\n* For [SchemaQuantitativeValue] and
  /// [SchemaMonetaryAmount], the recommended type for values is 'Number'.\n*
  /// For [SchemaPropertyValue], it can be 'Text', 'Number', 'Boolean',
  /// 'StructuredValue' or 'QualitativeValue'.\n* Use values from 0123456789
  /// (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than
  /// superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP'
  /// (U+002E)) rather than ',' to indicate a decimal point. Avoid using these
  /// symbols as a readability separator.
  ///
  /// Supported types: [SchemaQualitativeValue], [String],
  /// [SchemaStructuredValue], [bool], [num]
  dynamic value;

  /// Create a new instance of [SchemaMonetaryAmount]
  SchemaMonetaryAmount({
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
    this.maxValue,
    this.minValue,
    this.validFrom,
    this.validThrough,
    this.value,
  });

  /// Serialize [SchemaMonetaryAmount] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MonetaryAmount',
        'currency': convertToJsonLd(currency),
        'maxValue': convertToJsonLd(maxValue),
        'minValue': convertToJsonLd(minValue),
        'validFrom': convertToJsonLd(validFrom),
        'validThrough': convertToJsonLd(validThrough),
        'value': convertToJsonLd(
            value,
            (v) =>
                v is SchemaQualitativeValue ||
                v is String ||
                v is SchemaStructuredValue ||
                v is bool ||
                v is num),
      });
}
