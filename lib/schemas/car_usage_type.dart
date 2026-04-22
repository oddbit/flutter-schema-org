// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// A value indicating a special usage of a car, e.g. commercial rental,
/// driving school, or as a taxi.
/// See https://schema.org/CarUsageType
enum SchemaCarUsageType implements SchemaSerializable {
  /// Indicates the usage of the vehicle for driving school.
  drivingSchoolVehicleUsage('https://schema.org/CarUsageType'),

  /// Indicates the usage of the vehicle as a rental car.
  rentalVehicleUsage('https://schema.org/CarUsageType'),

  /// Indicates the usage of the car as a taxi.
  taxiVehicleUsage('https://schema.org/CarUsageType');

  /// Constructor for [SchemaCarUsageType]
  const SchemaCarUsageType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaCarUsageType] to JSON-LD
  @override
  String toJsonLd() => value;
}
