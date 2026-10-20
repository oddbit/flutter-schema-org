// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/measurement_type_enumeration.dart';

/// Enumerates common types of measurement for wearables products.
/// See https://schema.org/WearableMeasurementTypeEnumeration
enum SchemaWearableMeasurementTypeEnumeration
    implements SchemaMeasurementTypeEnumeration {
  /// Measurement of the back section, for example of a jacket.
  wearableMeasurementBack('https://schema.org/WearableMeasurementBack'),

  /// Measurement of the chest/bust section, for example of a suit.
  wearableMeasurementChestOrBust(
      'https://schema.org/WearableMeasurementChestOrBust'),

  /// Measurement of the collar, for example of a shirt.
  wearableMeasurementCollar('https://schema.org/WearableMeasurementCollar'),

  /// Measurement of the cup, for example of a bra.
  wearableMeasurementCup('https://schema.org/WearableMeasurementCup'),

  /// Measurement of the height, for example the heel height of a shoe.
  wearableMeasurementHeight('https://schema.org/WearableMeasurementHeight'),

  /// Measurement of the hip section, for example of a skirt.
  wearableMeasurementHips('https://schema.org/WearableMeasurementHips'),

  /// Measurement of the inseam, for example of pants.
  wearableMeasurementInseam('https://schema.org/WearableMeasurementInseam'),

  /// Represents the length, for example of a dress.
  wearableMeasurementLength('https://schema.org/WearableMeasurementLength'),

  /// Measurement of the outside leg, for example of pants.
  wearableMeasurementOutsideLeg(
      'https://schema.org/WearableMeasurementOutsideLeg'),

  /// Measurement of the sleeve length, for example of a shirt.
  wearableMeasurementSleeve('https://schema.org/WearableMeasurementSleeve'),

  /// Measurement of the waist section, for example of pants.
  wearableMeasurementWaist('https://schema.org/WearableMeasurementWaist'),

  /// Measurement of the width, for example of shoes.
  wearableMeasurementWidth('https://schema.org/WearableMeasurementWidth');

  /// Constructor for [SchemaWearableMeasurementTypeEnumeration]
  const SchemaWearableMeasurementTypeEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaWearableMeasurementTypeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
