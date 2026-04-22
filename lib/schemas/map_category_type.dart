// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// An enumeration of several kinds of Map.
/// See https://schema.org/MapCategoryType
enum SchemaMapCategoryType implements SchemaSerializable {
  /// A parking map.
  parkingMap('https://schema.org/MapCategoryType'),

  /// A seating map.
  seatingMap('https://schema.org/MapCategoryType'),

  /// A transit map.
  transitMap('https://schema.org/MapCategoryType'),

  /// A venue map (e.g. for malls, auditoriums, museums, etc.).
  venueMap('https://schema.org/MapCategoryType');

  /// Constructor for [SchemaMapCategoryType]
  const SchemaMapCategoryType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMapCategoryType] to JSON-LD
  @override
  String toJsonLd() => value;
}
