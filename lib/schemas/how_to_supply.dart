// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/how_to_item.dart';
import 'package:schema_org/schemas/monetary_amount.dart';

/// A supply consumed when performing the instructions for how to achieve a
/// result.
/// See https://schema.org/HowToSupply
class SchemaHowToSupply extends SchemaHowToItem {
  /// The estimated cost of the supply or supplies consumed when performing
  /// instructions.
  ///
  /// Supported types: [SchemaMonetaryAmount], [String]
  dynamic estimatedCost;

  /// Create a new instance of [SchemaHowToSupply]
  SchemaHowToSupply({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.item,
    super.mainEntityOfPage,
    super.name,
    super.nextItem,
    super.owner,
    super.position,
    super.potentialAction,
    super.previousItem,
    super.requiredQuantity,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.estimatedCost,
  });

  /// Serialize [SchemaHowToSupply] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HowToSupply',
        'estimatedCost': convertToJsonLd(
            estimatedCost, (v) => v is SchemaMonetaryAmount || v is String),
      });
}
