// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/how_to.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/nutrition_information.dart';
import 'package:schema_org/schemas/item_list.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/diet.dart';
import 'package:schema_org/schemas/restricted_diet.dart';

/// A recipe. For dietary restrictions covered by the recipe, a few common
/// restrictions are enumerated via [SchemasuitableForDiet]. The
/// [Schemakeywords] property can also be used to add more detail.
/// See https://schema.org/Recipe
class SchemaRecipe extends SchemaHowTo {
  /// The time it takes to actually cook the dish, in [ISO 8601 duration
  /// format](http://en.wikipedia.org/wiki/ISO_8601).
  SchemaDuration? cookTime;

  /// The method of cooking, such as Frying, Steaming, ...
  String? cookingMethod;

  /// A single ingredient used in the recipe, e.g. sugar, flour or garlic.
  @Deprecated('Use [recipeIngredient]. See https://schema.org/ingredients')
  String? ingredients;

  /// Nutrition information about the recipe or menu item.
  SchemaNutritionInformation? nutrition;

  /// The category of the recipe—for example, appetizer, entree, etc.
  String? recipeCategory;

  /// The cuisine of the recipe (for example, French or Ethiopian).
  String? recipeCuisine;

  /// An ingredient or ordered list of ingredients and potentially quantities
  /// used in the recipe, e.g. 1 cup of sugar, flour or garlic. The ingredients
  /// can be represented as free text or more structured values.
  ///
  /// Supported types: [SchemaItemList], [SchemaPropertyValue], [String]
  dynamic recipeIngredient;

  /// A step in making the recipe, in the form of a single item (document,
  /// video, etc.) or an ordered list with HowToStep and/or HowToSection items.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaItemList], [String]
  dynamic recipeInstructions;

  /// The quantity produced by the recipe (for example, number of people
  /// served, number of servings, etc).
  ///
  /// Supported types: [SchemaQuantitativeValue], [String]
  dynamic recipeYield;

  /// Indicates a dietary restriction or guideline for which this recipe or
  /// menu item is suitable, e.g. diabetic, halal etc.
  ///
  /// Supported types: [SchemaDiet], [SchemaRestrictedDiet]
  dynamic suitableForDiet;

  /// Create a new instance of [SchemaRecipe]
  SchemaRecipe({
    super.about,
    super.abstract,
    super.accessMode,
    super.accessModeSufficient,
    super.accessibilityAPI,
    super.accessibilityControl,
    super.accessibilityFeature,
    super.accessibilityHazard,
    super.accessibilitySummary,
    super.accountablePerson,
    super.acquireLicensePage,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.alternativeHeadline,
    super.archivedAt,
    super.assesses,
    super.associatedMedia,
    super.audience,
    super.audio,
    super.author,
    super.award,
    super.awards,
    super.character,
    super.citation,
    super.comment,
    super.commentCount,
    super.conditionsOfAccess,
    super.contentLocation,
    super.contentRating,
    super.contentReferenceTime,
    super.contributor,
    super.copyrightHolder,
    super.copyrightNotice,
    super.copyrightYear,
    super.correction,
    super.countryOfOrigin,
    super.creativeWorkStatus,
    super.creator,
    super.creditText,
    super.dateCreated,
    super.dateModified,
    super.datePublished,
    super.description,
    super.digitalSourceType,
    super.disambiguatingDescription,
    super.discussionUrl,
    super.displayLocation,
    super.editEIDR,
    super.editor,
    super.educationalAlignment,
    super.educationalLevel,
    super.educationalUse,
    super.encoding,
    super.encodingFormat,
    super.encodings,
    super.estimatedCost,
    super.exampleOfWork,
    super.expires,
    super.fileFormat,
    super.funder,
    super.funding,
    super.genre,
    super.hasPart,
    super.headline,
    super.identifier,
    super.image,
    super.inLanguage,
    super.interactionStatistic,
    super.interactivityType,
    super.interpretedAsClaim,
    super.isAccessibleForFree,
    super.isBasedOn,
    super.isBasedOnUrl,
    super.isFamilyFriendly,
    super.isPartOf,
    super.keywords,
    super.learningResourceType,
    super.license,
    super.locationCreated,
    super.mainEntity,
    super.mainEntityOfPage,
    super.maintainer,
    super.material,
    super.materialExtent,
    super.mentions,
    super.name,
    super.offers,
    super.owner,
    super.pattern,
    super.performTime,
    super.position,
    super.potentialAction,
    super.prepTime,
    super.producer,
    super.provider,
    super.publication,
    super.publisher,
    super.publisherImprint,
    super.publishingPrinciples,
    super.recordedAt,
    super.releasedEvent,
    super.review,
    super.reviews,
    super.sameAs,
    super.schemaVersion,
    super.sdDatePublished,
    super.sdLicense,
    super.sdPublisher,
    super.size,
    super.sourceOrganization,
    super.spatial,
    super.spatialCoverage,
    super.sponsor,
    super.step,
    super.steps,
    super.subjectOf,
    super.supply,
    super.teaches,
    super.temporal,
    super.temporalCoverage,
    super.text,
    super.thumbnail,
    super.thumbnailUrl,
    super.timeRequired,
    super.tool,
    super.totalTime,
    super.translationOfWork,
    super.translator,
    super.typicalAgeRange,
    super.url,
    super.usageInfo,
    super.version,
    super.video,
    super.wordCount,
    super.workExample,
    super.workTranslation,
    super.yield,
    this.cookTime,
    this.cookingMethod,
    this.ingredients,
    this.nutrition,
    this.recipeCategory,
    this.recipeCuisine,
    this.recipeIngredient,
    this.recipeInstructions,
    this.recipeYield,
    this.suitableForDiet,
  });

  /// Serialize [SchemaRecipe] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Recipe',
        'cookTime': convertToJsonLd(cookTime),
        'cookingMethod': convertToJsonLd(cookingMethod),
        'ingredients': convertToJsonLd(ingredients),
        'nutrition': convertToJsonLd(nutrition),
        'recipeCategory': convertToJsonLd(recipeCategory),
        'recipeCuisine': convertToJsonLd(recipeCuisine),
        'recipeIngredient': convertToJsonLd(
            recipeIngredient,
            (v) =>
                v is SchemaItemList || v is SchemaPropertyValue || v is String),
        'recipeInstructions': convertToJsonLd(
            recipeInstructions,
            (v) =>
                v is SchemaCreativeWork || v is SchemaItemList || v is String),
        'recipeYield': convertToJsonLd(
            recipeYield, (v) => v is SchemaQuantitativeValue || v is String),
        'suitableForDiet': convertToJsonLd(suitableForDiet,
            (v) => v is SchemaDiet || v is SchemaRestrictedDiet),
      });
}
