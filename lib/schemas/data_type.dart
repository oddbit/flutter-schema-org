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

/// The basic data types such as Integers, Strings, etc.
/// See https://schema.org/DataType
class SchemaDataType implements SchemaSerializable {
  /// Create a new instance of [SchemaDataType]
  SchemaDataType();

  /// Serialize [SchemaDataType] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'DataType',
      });
}
