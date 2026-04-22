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

/// //en.wikipedia.org/wiki/ISO_8601)).
/// See https://schema.org/Duration
class SchemaDuration extends SchemaQuantity {
  /// Create a new instance of [SchemaDuration]
  SchemaDuration();

  /// Serialize [SchemaDuration] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Duration',
      });
}
