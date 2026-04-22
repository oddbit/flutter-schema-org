// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/src/utils.dart';

/// Quantities such as distance, time, mass, weight, etc. Particular
/// instances of say Mass are strings like '3 kg' or '4 milligrams'.
/// See https://schema.org/Quantity
class SchemaQuantity implements SchemaSerializable {
  /// Create a new instance of [SchemaQuantity]
  SchemaQuantity();

  /// Serialize [SchemaQuantity] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Quantity',
      });
}
