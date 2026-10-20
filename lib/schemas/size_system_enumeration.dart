// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates common size systems for different categories of products, for
/// example "EN-13402" or "UK" for wearables or "Imperial" for screws.
/// See https://schema.org/SizeSystemEnumeration
enum SchemaSizeSystemEnumeration implements SchemaSerializable {
  /// Imperial size system.
  sizeSystemImperial('https://schema.org/SizeSystemImperial'),

  /// Metric size system.
  sizeSystemMetric('https://schema.org/SizeSystemMetric');

  /// Constructor for [SchemaSizeSystemEnumeration]
  const SchemaSizeSystemEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaSizeSystemEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
