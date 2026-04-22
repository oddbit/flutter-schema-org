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

/// A BreadcrumbList is an ItemList consisting of a chain of linked Web
/// pages, typically described using at least their URL and their name, and
/// typically ending with the current page.\n\nThe [Schemaposition] property
/// is used to reconstruct the order of the items in a BreadcrumbList. The
/// convention is that a breadcrumb list has an [SchemaitemListOrder] of
/// [SchemaItemListOrderAscending] (lower values listed first), and that the
/// first items in this list correspond to the "top" or beginning of the
/// breadcrumb trail, e.g. with a site or section homepage. The specific
/// values of 'position' are not assigned meaning for a BreadcrumbList, but
/// they should be integers, e.g. beginning with '1' for the first item in
/// the list.
/// See https://schema.org/BreadcrumbList
class SchemaBreadcrumbList extends SchemaItemList {
  /// Create a new instance of [SchemaBreadcrumbList]
  SchemaBreadcrumbList({
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

  /// Serialize [SchemaBreadcrumbList] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BreadcrumbList',
      });
}
