// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/qualitative_value.dart';

/// A value indicating a steering position.
/// See https://schema.org/SteeringPositionValue
enum SchemaSteeringPositionValue implements SchemaQualitativeValue {
  /// The steering position is on the left side of the vehicle (viewed from
  /// the main direction of driving).
  leftHandDriving('https://schema.org/LeftHandDriving'),

  /// The steering position is on the right side of the vehicle (viewed
  /// from the main direction of driving).
  rightHandDriving('https://schema.org/RightHandDriving');

  /// Constructor for [SchemaSteeringPositionValue]
  const SchemaSteeringPositionValue(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaSteeringPositionValue] to JSON-LD
  @override
  String toJsonLd() => value;
}
