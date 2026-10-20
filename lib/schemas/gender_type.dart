// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// An enumeration of genders.
/// See https://schema.org/GenderType
enum SchemaGenderType implements SchemaSerializable {
  /// The female gender.
  female('https://schema.org/Female'),

  /// The male gender.
  male('https://schema.org/Male');

  /// Constructor for [SchemaGenderType]
  const SchemaGenderType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaGenderType] to JSON-LD
  @override
  String toJsonLd() => value;
}
