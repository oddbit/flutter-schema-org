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
  /// The volume swept by all of the pistons inside the cylinders of an
  /// internal combustion engine in a single movement. \n\nTypical unit
  /// code(s): CMQ for cubic centimeter, LTR for liters, INQ for cubic
  /// inches\n* Note 1: You can link to information about how the given value
  /// has been determined using the [SchemavalueReference] property.\n* Note 2:
  /// You can use [SchemaminValue] and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? engineDisplacement;

  /// The power of the vehicle's engine. Typical unit code(s): KWT for
  /// kilowatt, BHP for brake horsepower, N12 for metric horsepower (PS, with 1
  /// PS = 735,49875 W)\n\n* Note 1: There are many different ways of measuring
  /// an engine's power. For an overview, see
  /// [http://en.wikipedia.org/wiki/Horsepower#Engine\_power\_test\_codes](http://en.wikipedia.org/wiki/Horsepower#Engine_power_test_codes).\n*
  /// Note 2: You can link to information about how the given value has been
  /// determined using the [SchemavalueReference] property.\n* Note 3: You can
  /// use [SchemaminValue] and [SchemamaxValue] to indicate ranges.
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

  /// The torque (turning force) of the vehicle's engine.\n\nTypical unit
  /// code(s): NU for newton metre (N m), F17 for pound-force per foot, or F48
  /// for pound-force per inch\n\n* Note 1: You can link to information about
  /// how the given value has been determined (e.g. reference RPM) using the
  /// [SchemavalueReference] property.\n* Note 2: You can use [SchemaminValue]
  /// and [SchemamaxValue] to indicate ranges.
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
        'engineDisplacement': convertToJsonLd(engineDisplacement),
        'enginePower': convertToJsonLd(enginePower),
        'engineType': convertToJsonLd(
            engineType, (v) => v is SchemaQualitativeValue || v is String),
        'fuelType': convertToJsonLd(
            fuelType, (v) => v is SchemaQualitativeValue || v is String),
        'torque': convertToJsonLd(torque),
      });
}
