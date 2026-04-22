// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates a purchase type for an item.
/// See https://schema.org/PurchaseType
enum SchemaPurchaseType implements SchemaSerializable {
  /// This is a lease of an item.
  purchaseTypeLease('https://schema.org/PurchaseType'),

  /// This is a purchase of a new item.
  purchaseTypeNewPurchase('https://schema.org/PurchaseType'),

  /// This is a trade-in for an item.
  purchaseTypeTradeIn('https://schema.org/PurchaseType'),

  /// This is a purchase of a used item.
  purchaseTypeUsedPurchase('https://schema.org/PurchaseType');

  /// Constructor for [SchemaPurchaseType]
  const SchemaPurchaseType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaPurchaseType] to JSON-LD
  @override
  String toJsonLd() => value;
}
