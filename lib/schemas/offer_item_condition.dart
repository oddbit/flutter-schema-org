// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// A list of possible conditions for the item.
/// See https://schema.org/OfferItemCondition
enum SchemaOfferItemCondition implements SchemaSerializable {
  /// Indicates that the item is damaged.
  damagedCondition('https://schema.org/DamagedCondition'),

  /// Indicates that the item is new.
  newCondition('https://schema.org/NewCondition'),

  /// Indicates that the item is refurbished.
  refurbishedCondition('https://schema.org/RefurbishedCondition'),

  /// Indicates that the item is used.
  usedCondition('https://schema.org/UsedCondition');

  /// Constructor for [SchemaOfferItemCondition]
  const SchemaOfferItemCondition(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaOfferItemCondition] to JSON-LD
  @override
  String toJsonLd() => value;
}
