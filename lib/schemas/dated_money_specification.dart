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

/// __ This type has been superseded by [SchemaMonetaryAmount], use of that
/// type is recommended.
/// See https://schema.org/DatedMoneySpecification
@Deprecated(
    'Use [SchemaMonetaryAmount]. See https://schema.org/DatedMoneySpecification')
class SchemaDatedMoneySpecification extends SchemaStructuredValue {
  /// The amount of money.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  dynamic amount;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? currency;

  /// //en.wikipedia.org/wiki/ISO_8601)).
  String? endDate;

  /// //en.wikipedia.org/wiki/ISO_8601)).
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
        'amount': convertToJsonLd(amount, [SchemaMonetaryAmount, num]),
        'currency': convertToJsonLd(currency, [String]),
        'endDate': convertToJsonLd(endDate, [String]),
        'startDate': convertToJsonLd(startDate, [String]),
      });
}
