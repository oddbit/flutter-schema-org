// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/create_action.dart';
import 'package:schema_org/schemas/food_establishment.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/food_event.dart';
import 'package:schema_org/schemas/recipe.dart';

/// The act of producing/preparing food.
/// See https://schema.org/CookAction
class SchemaCookAction extends SchemaCreateAction {
  /// A sub property of location. The specific food establishment where the
  /// action occurred.
  ///
  /// Supported types: [SchemaFoodEstablishment], [SchemaPlace]
  dynamic foodEstablishment;

  /// A sub property of location. The specific food event where the action
  /// occurred.
  SchemaFoodEvent? foodEvent;

  /// A sub property of instrument. The recipe/instructions used to perform the
  /// action.
  SchemaRecipe? recipe;

  /// Create a new instance of [SchemaCookAction]
  SchemaCookAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.identifier,
    super.image,
    super.instrument,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.provider,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
    this.foodEstablishment,
    this.foodEvent,
    this.recipe,
  });

  /// Serialize [SchemaCookAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CookAction',
        'foodEstablishment': convertToJsonLd(foodEstablishment,
            (v) => v is SchemaFoodEstablishment || v is SchemaPlace),
        'foodEvent': convertToJsonLd(foodEvent),
        'recipe': convertToJsonLd(recipe),
      });
}
