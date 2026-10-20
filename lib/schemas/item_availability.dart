// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// A list of possible product availability options.
/// See https://schema.org/ItemAvailability
enum SchemaItemAvailability implements SchemaSerializable {
  /// Indicates that the item is available on back order.
  backOrder('https://schema.org/BackOrder'),

  /// Indicates that the item has been discontinued.
  discontinued('https://schema.org/Discontinued'),

  /// Indicates that the item is in stock.
  inStock('https://schema.org/InStock'),

  /// Indicates that the item is available only at physical locations.
  inStoreOnly('https://schema.org/InStoreOnly'),

  /// Indicates that the item has limited availability.
  limitedAvailability('https://schema.org/LimitedAvailability'),

  /// Indicates that the item is made to order (custom made).
  madeToOrder('https://schema.org/MadeToOrder'),

  /// Indicates that the item is available only online.
  onlineOnly('https://schema.org/OnlineOnly'),

  /// Indicates that the item is out of stock.
  outOfStock('https://schema.org/OutOfStock'),

  /// Indicates that the item is available for pre-order.
  preOrder('https://schema.org/PreOrder'),

  /// Indicates that the item is available for ordering and delivery before
  /// general availability.
  preSale('https://schema.org/PreSale'),

  /// Indicates that the item is reserved and therefore not available.
  reserved('https://schema.org/Reserved'),

  /// Indicates that the item has sold out.
  soldOut('https://schema.org/SoldOut');

  /// Constructor for [SchemaItemAvailability]
  const SchemaItemAvailability(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaItemAvailability] to JSON-LD
  @override
  String toJsonLd() => value;
}
