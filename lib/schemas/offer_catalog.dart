// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/item_list.dart';

/// An OfferCatalog is an ItemList that contains related Offers and/or
/// further OfferCatalogs that are offeredBy the same provider.
/// See https://schema.org/OfferCatalog
class SchemaOfferCatalog extends SchemaItemList {
  /// Create a new instance of [SchemaOfferCatalog]
  SchemaOfferCatalog({
    super.additionalType,
    super.aggregateElement,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.itemListElement,
    super.itemListOrder,
    super.mainEntityOfPage,
    super.name,
    super.numberOfItems,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
  });

  /// Serialize [SchemaOfferCatalog] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'OfferCatalog',
      });
}
