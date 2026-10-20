// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/monetary_amount.dart';

/// A monetary grant.
/// See https://schema.org/MonetaryGrant
class SchemaMonetaryGrant extends SchemaGrant {
  /// The amount of money.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  dynamic amount;

  /// Create a new instance of [SchemaMonetaryGrant]
  SchemaMonetaryGrant({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.fundedItem,
    super.funder,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.sponsor,
    super.subjectOf,
    super.url,
    this.amount,
  });

  /// Serialize [SchemaMonetaryGrant] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MonetaryGrant',
        'amount': convertToJsonLd(
            amount, (v) => v is SchemaMonetaryAmount || v is num),
      });
}
