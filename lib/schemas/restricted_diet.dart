// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// A diet restricted to certain foods or preparations for cultural,
/// religious, health or lifestyle reasons.
/// See https://schema.org/RestrictedDiet
enum SchemaRestrictedDiet implements SchemaSerializable {
  /// A diet appropriate for people with diabetes.
  diabeticDiet('https://schema.org/DiabeticDiet'),

  /// A diet exclusive of gluten.
  glutenFreeDiet('https://schema.org/GlutenFreeDiet'),

  /// A diet conforming to Islamic dietary practices.
  halalDiet('https://schema.org/HalalDiet'),

  /// A diet conforming to Hindu dietary practices, in particular,
  /// beef-free.
  hinduDiet('https://schema.org/HinduDiet'),

  /// A diet conforming to Jewish dietary practices.
  kosherDiet('https://schema.org/KosherDiet'),

  /// A diet focused on reduced calorie intake.
  lowCalorieDiet('https://schema.org/LowCalorieDiet'),

  /// A diet focused on reduced fat and cholesterol intake.
  lowFatDiet('https://schema.org/LowFatDiet'),

  /// A diet appropriate for people with lactose intolerance.
  lowLactoseDiet('https://schema.org/LowLactoseDiet'),

  /// A diet focused on reduced sodium intake.
  lowSaltDiet('https://schema.org/LowSaltDiet'),

  /// A diet exclusive of all animal products.
  veganDiet('https://schema.org/VeganDiet'),

  /// A diet exclusive of animal meat.
  vegetarianDiet('https://schema.org/VegetarianDiet');

  /// Constructor for [SchemaRestrictedDiet]
  const SchemaRestrictedDiet(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaRestrictedDiet] to JSON-LD
  @override
  String toJsonLd() => value;
}
