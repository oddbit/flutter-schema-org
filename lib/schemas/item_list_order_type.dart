// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerated for values for itemListOrder for indicating how an ordered
/// ItemList is organized.
/// See https://schema.org/ItemListOrderType
enum SchemaItemListOrderType implements SchemaSerializable {
  /// An ItemList ordered with lower values listed first.
  itemListOrderAscending('https://schema.org/ItemListOrderType'),

  /// An ItemList ordered with higher values listed first.
  itemListOrderDescending('https://schema.org/ItemListOrderType'),

  /// An ItemList ordered with no explicit order.
  itemListUnordered('https://schema.org/ItemListOrderType');

  /// Constructor for [SchemaItemListOrderType]
  const SchemaItemListOrderType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaItemListOrderType] to JSON-LD
  @override
  String toJsonLd() => value;
}
