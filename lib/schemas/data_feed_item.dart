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

/// A single item within a larger data feed.
/// See https://schema.org/DataFeedItem
class SchemaDataFeedItem extends SchemaIntangible {
  /// The date on which the CreativeWork was created or the item was added to a
  /// DataFeed.
  String? dateCreated;

  /// The datetime the item was removed from the DataFeed.
  String? dateDeleted;

  /// The date on which the CreativeWork was most recently modified or when the
  /// item's entry was modified within a DataFeed.
  String? dateModified;

  /// An entity represented by an entry in a list or data feed (e.g. an
  /// 'artist' in a list of 'artists').
  SchemaThing? item;

  /// Create a new instance of [SchemaDataFeedItem]
  SchemaDataFeedItem({
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
    this.dateCreated,
    this.dateDeleted,
    this.dateModified,
    this.item,
  });

  /// Serialize [SchemaDataFeedItem] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DataFeedItem',
        'dateCreated': convertToJsonLd(dateCreated, [String]),
        'dateDeleted': convertToJsonLd(dateDeleted, [String]),
        'dateModified': convertToJsonLd(dateModified, [String]),
        'item': convertToJsonLd(item, [SchemaThing]),
      });
}
