// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates several types of product return methods.
/// See https://schema.org/ReturnMethodEnumeration
enum SchemaReturnMethodEnumeration implements SchemaSerializable {
  /// Specifies that the consumer can keep the product, even when receiving
  /// a refund or store credit.
  keepProduct('https://schema.org/ReturnMethodEnumeration'),

  /// Specifies that product returns must be made at a kiosk.
  returnAtKiosk('https://schema.org/ReturnMethodEnumeration'),

  /// Specifies that product returns must be done by mail.
  returnByMail('https://schema.org/ReturnMethodEnumeration'),

  /// Specifies that product returns must be made in a store.
  returnInStore('https://schema.org/ReturnMethodEnumeration');

  /// Constructor for [SchemaReturnMethodEnumeration]
  const SchemaReturnMethodEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaReturnMethodEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
