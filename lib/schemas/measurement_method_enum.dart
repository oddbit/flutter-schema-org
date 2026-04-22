// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumeration(s) for use with [SchemameasurementMethod].
/// See https://schema.org/MeasurementMethodEnum
enum SchemaMeasurementMethodEnum implements SchemaSerializable {
  /// An example [SchemaMeasurementMethodEnum] (to remove when real enums
  /// are added).
  exampleMeasurementMethodEnum('https://schema.org/MeasurementMethodEnum');

  /// Constructor for [SchemaMeasurementMethodEnum]
  const SchemaMeasurementMethodEnum(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMeasurementMethodEnum] to JSON-LD
  @override
  String toJsonLd() => value;
}
