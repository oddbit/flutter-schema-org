// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates several kinds of product return policies.
/// See https://schema.org/MerchantReturnEnumeration
enum SchemaMerchantReturnEnumeration implements SchemaSerializable {
  /// Specifies that there is a finite window for product returns.
  merchantReturnFiniteReturnWindow(
      'https://schema.org/MerchantReturnEnumeration'),

  /// Specifies that product returns are not permitted.
  merchantReturnNotPermitted('https://schema.org/MerchantReturnEnumeration'),

  /// Specifies that there is an unlimited window for product returns.
  merchantReturnUnlimitedWindow('https://schema.org/MerchantReturnEnumeration'),

  /// Specifies that a product return policy is not provided.
  merchantReturnUnspecified('https://schema.org/MerchantReturnEnumeration');

  /// Constructor for [SchemaMerchantReturnEnumeration]
  const SchemaMerchantReturnEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMerchantReturnEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
