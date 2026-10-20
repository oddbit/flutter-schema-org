// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates several kinds of product return refund types.
/// See https://schema.org/RefundTypeEnumeration
enum SchemaRefundTypeEnumeration implements SchemaSerializable {
  /// Specifies that a refund can be done as an exchange for the same
  /// product.
  exchangeRefund('https://schema.org/ExchangeRefund'),

  /// Specifies that a refund can be done in the full amount the customer
  /// paid for the product.
  fullRefund('https://schema.org/FullRefund'),

  /// Specifies that the customer receives a store credit as refund when
  /// returning a product.
  storeCreditRefund('https://schema.org/StoreCreditRefund');

  /// Constructor for [SchemaRefundTypeEnumeration]
  const SchemaRefundTypeEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaRefundTypeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
