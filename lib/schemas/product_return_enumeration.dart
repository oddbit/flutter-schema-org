// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// ProductReturnEnumeration enumerates several kinds of product return
/// policy. Note that this structure may not capture all aspects of the
/// policy.
/// See https://schema.org/ProductReturnEnumeration
@Deprecated(
    'Use [SchemaMerchantReturnEnumeration]. See https://schema.org/ProductReturnEnumeration')
enum SchemaProductReturnEnumeration implements SchemaSerializable {
  /// ProductReturnFiniteReturnWindow: there is a finite window for product
  /// returns.
  @Deprecated(
      'Use [MerchantReturnFiniteReturnWindow]. See https://schema.org/ProductReturnFiniteReturnWindow')
  productReturnFiniteReturnWindow(
      'https://schema.org/ProductReturnFiniteReturnWindow'),

  /// ProductReturnNotPermitted: product returns are not permitted.
  @Deprecated(
      'Use [MerchantReturnNotPermitted]. See https://schema.org/ProductReturnNotPermitted')
  productReturnNotPermitted('https://schema.org/ProductReturnNotPermitted'),

  /// ProductReturnUnlimitedWindow: there is an unlimited window for
  /// product returns.
  @Deprecated(
      'Use [MerchantReturnUnlimitedWindow]. See https://schema.org/ProductReturnUnlimitedWindow')
  productReturnUnlimitedWindow(
      'https://schema.org/ProductReturnUnlimitedWindow'),

  /// ProductReturnUnspecified: a product return policy is not specified
  /// here.
  @Deprecated(
      'Use [MerchantReturnUnspecified]. See https://schema.org/ProductReturnUnspecified')
  productReturnUnspecified('https://schema.org/ProductReturnUnspecified');

  /// Constructor for [SchemaProductReturnEnumeration]
  const SchemaProductReturnEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaProductReturnEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
