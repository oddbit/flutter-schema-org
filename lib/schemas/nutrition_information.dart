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
import 'package:schema_org/schemas/energy.dart';
import 'package:schema_org/schemas/mass.dart';

/// Nutritional information about the recipe.
/// See https://schema.org/NutritionInformation
class SchemaNutritionInformation extends SchemaStructuredValue {
  /// The number of calories.
  SchemaEnergy? calories;

  /// The number of grams of carbohydrates.
  SchemaMass? carbohydrateContent;

  /// The number of milligrams of cholesterol.
  SchemaMass? cholesterolContent;

  /// The number of grams of fat.
  SchemaMass? fatContent;

  /// The number of grams of fiber.
  SchemaMass? fiberContent;

  /// The number of grams of protein.
  SchemaMass? proteinContent;

  /// The number of grams of saturated fat.
  SchemaMass? saturatedFatContent;

  /// The serving size, in terms of the number of volume or mass.
  String? servingSize;

  /// The number of milligrams of sodium.
  SchemaMass? sodiumContent;

  /// The number of grams of sugar.
  SchemaMass? sugarContent;

  /// The number of grams of trans fat.
  SchemaMass? transFatContent;

  /// The number of grams of unsaturated fat.
  SchemaMass? unsaturatedFatContent;

  /// Create a new instance of [SchemaNutritionInformation]
  SchemaNutritionInformation({
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
    this.calories,
    this.carbohydrateContent,
    this.cholesterolContent,
    this.fatContent,
    this.fiberContent,
    this.proteinContent,
    this.saturatedFatContent,
    this.servingSize,
    this.sodiumContent,
    this.sugarContent,
    this.transFatContent,
    this.unsaturatedFatContent,
  });

  /// Serialize [SchemaNutritionInformation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'NutritionInformation',
        'calories': convertToJsonLd(calories, [SchemaEnergy]),
        'carbohydrateContent':
            convertToJsonLd(carbohydrateContent, [SchemaMass]),
        'cholesterolContent': convertToJsonLd(cholesterolContent, [SchemaMass]),
        'fatContent': convertToJsonLd(fatContent, [SchemaMass]),
        'fiberContent': convertToJsonLd(fiberContent, [SchemaMass]),
        'proteinContent': convertToJsonLd(proteinContent, [SchemaMass]),
        'saturatedFatContent':
            convertToJsonLd(saturatedFatContent, [SchemaMass]),
        'servingSize': convertToJsonLd(servingSize, [String]),
        'sodiumContent': convertToJsonLd(sodiumContent, [SchemaMass]),
        'sugarContent': convertToJsonLd(sugarContent, [SchemaMass]),
        'transFatContent': convertToJsonLd(transFatContent, [SchemaMass]),
        'unsaturatedFatContent':
            convertToJsonLd(unsaturatedFatContent, [SchemaMass]),
      });
}
