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

/// An list item, e.g. a step in a checklist or how-to description.
/// See https://schema.org/ListItem
class SchemaListItem extends SchemaIntangible {
  /// An entity represented by an entry in a list or data feed (e.g. an
  /// 'artist' in a list of 'artists').
  SchemaThing? item;

  /// A link to the ListItem that follows the current one.
  SchemaListItem? nextItem;

  /// The position of an item in a series or sequence of items.
  ///
  /// Supported types: [String], [int]
  dynamic position;

  /// A link to the ListItem that precedes the current one.
  SchemaListItem? previousItem;

  /// Create a new instance of [SchemaListItem]
  SchemaListItem({
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
    this.item,
    this.nextItem,
    this.position,
    this.previousItem,
  });

  /// Serialize [SchemaListItem] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ListItem',
        'item': convertToJsonLd(item),
        'nextItem': convertToJsonLd(nextItem),
        'position': convertToJsonLd(position, (v) => v is String || v is int),
        'previousItem': convertToJsonLd(previousItem),
      });
}
