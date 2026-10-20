// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/list_item.dart';
import 'package:schema_org/schemas/item_list_order_type.dart';

/// A list of items of any sort&#x2014;for example, Top 10 Movies About
/// Weathermen, or Top 100 Party Songs. Not to be confused with HTML lists,
/// which are often used only for formatting.
/// See https://schema.org/ItemList
class SchemaItemList extends SchemaIntangible {
  /// Indicates a prototype of the elements in the list that is used to hold
  /// aggregate information (ratings, offers, etc.).
  SchemaThing? aggregateElement;

  /// For itemListElement values, you can use simple strings (e.g. "Peter",
  /// "Paul", "Mary"), existing entities, or use ListItem.\n\nText values are
  /// best if the elements in the list are plain strings. Existing entities are
  /// best for a simple, unordered list of existing things in your data.
  /// ListItem is used with ordered lists when you want to provide additional
  /// context about the element in that list or when the same item might be in
  /// different places in different lists.\n\nNote: The order of elements in
  /// your mark-up is not sufficient for indicating the order or elements. Use
  /// ListItem with a 'position' property in such cases.
  ///
  /// Supported types: [SchemaListItem], [String], [SchemaThing]
  dynamic itemListElement;

  /// Type of ordering (e.g. Ascending, Descending, Unordered).
  ///
  /// Supported types: [SchemaItemListOrderType], [String]
  dynamic itemListOrder;

  /// The number of items in an ItemList. Note that some descriptions might not
  /// fully describe all items in a list (e.g., multi-page pagination); in such
  /// cases, the numberOfItems would be for the entire list.
  int? numberOfItems;

  /// Create a new instance of [SchemaItemList]
  SchemaItemList({
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
    this.aggregateElement,
    this.itemListElement,
    this.itemListOrder,
    this.numberOfItems,
  });

  /// Serialize [SchemaItemList] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ItemList',
        'aggregateElement': convertToJsonLd(aggregateElement),
        'itemListElement': convertToJsonLd(itemListElement,
            (v) => v is SchemaListItem || v is String || v is SchemaThing),
        'itemListOrder': convertToJsonLd(
            itemListOrder, (v) => v is SchemaItemListOrderType || v is String),
        'numberOfItems': convertToJsonLd(numberOfItems),
      });
}
