// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/qualitative_value.dart';

/// Information about the engine of the vehicle. A vehicle can have multiple
/// engines represented by multiple engine specification entities.
/// See https://schema.org/EngineSpecification
class SchemaEngineSpecification extends SchemaStructuredValue {
  /// You can use [SchemaminValue] and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? engineDisplacement;

  /// You can use [SchemaminValue] and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? enginePower;

  /// The type of engine or engines powering the vehicle.
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic engineType;

  /// The type of fuel suitable for the engine or engines of the vehicle. If
  /// the vehicle has only one engine, this property can be attached directly
  /// to the vehicle.
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic fuelType;

  /// You can use [SchemaminValue] and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? torque;

  /// Create a new instance of [SchemaEngineSpecification]
  SchemaEngineSpecification({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.engineDisplacement,
    this.enginePower,
    this.engineType,
    this.fuelType,
    this.torque,
  });

  /// Serialize [SchemaEngineSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EngineSpecification',
        'engineDisplacement':
            convertToJsonLd(engineDisplacement, [SchemaQuantitativeValue]),
        'enginePower': convertToJsonLd(enginePower, [SchemaQuantitativeValue]),
        'engineType':
            convertToJsonLd(engineType, [SchemaQualitativeValue, String]),
        'fuelType': convertToJsonLd(fuelType, [SchemaQualitativeValue, String]),
        'torque': convertToJsonLd(torque, [SchemaQuantitativeValue]),
      });
}
