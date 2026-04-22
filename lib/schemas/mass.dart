// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/quantity.dart';

/// Properties that take Mass as values are of the form '&lt;Number&gt;
/// &lt;Mass unit of measure&gt;'. E.g., '7 kg'.
/// See https://schema.org/Mass
class SchemaMass extends SchemaQuantity {
  /// Create a new instance of [SchemaMass]
  SchemaMass();

  /// Serialize [SchemaMass] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Mass',
      });
}
