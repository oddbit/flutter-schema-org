// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/list_item.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// An item used as either a tool or supply when performing the instructions
/// for how to achieve a result.
/// See https://schema.org/HowToItem
class SchemaHowToItem extends SchemaListItem {
  /// The required quantity of the item(s).
  ///
  /// Supported types: [SchemaQuantitativeValue], [String], [num]
  dynamic requiredQuantity;

  /// Create a new instance of [SchemaHowToItem]
  SchemaHowToItem({
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
    super.sameAs,
    super.subjectOf,
    super.url,
    this.requiredQuantity,
  });

  /// Serialize [SchemaHowToItem] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HowToItem',
        'requiredQuantity': convertToJsonLd(requiredQuantity,
            (v) => v is SchemaQuantitativeValue || v is String || v is num),
      });
}
