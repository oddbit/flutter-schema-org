// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/menu_section.dart';
import 'package:schema_org/schemas/nutrition_information.dart';
import 'package:schema_org/schemas/demand.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/diet.dart';
import 'package:schema_org/schemas/restricted_diet.dart';

/// A food or drink item listed in a menu or menu section.
/// See https://schema.org/MenuItem
class SchemaMenuItem extends SchemaIntangible {
  /// Additional menu item(s) such as a side dish of salad or side order of
  /// fries that can be added to this menu item. Additionally it can be a menu
  /// section containing allowed add-on menu items for this menu item.
  ///
  /// Supported types: [SchemaMenuItem], [SchemaMenuSection]
  dynamic menuAddOn;

  /// Nutrition information about the recipe or menu item.
  SchemaNutritionInformation? nutrition;

  /// An offer to provide this item&#x2014;for example, an offer to sell a
  /// product, rent the DVD of a movie, perform a service, or give away tickets
  /// to an event. Use [SchemabusinessFunction] to indicate the kind of
  /// transaction offered, i.e. sell, lease, etc. This property can also be
  /// used to describe a [SchemaDemand]. While this property is listed as
  /// expected on a number of common types, it can be used in others. In that
  /// case, using a second type, such as Product or a subtype of Product, can
  /// clarify the nature of the offer.
  ///
  /// Supported types: [SchemaDemand], [SchemaOffer]
  dynamic offers;

  /// Indicates a dietary restriction or guideline for which this recipe or
  /// menu item is suitable, e.g. diabetic, halal etc.
  ///
  /// Supported types: [SchemaDiet], [SchemaRestrictedDiet]
  dynamic suitableForDiet;

  /// Create a new instance of [SchemaMenuItem]
  SchemaMenuItem({
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
    this.menuAddOn,
    this.nutrition,
    this.offers,
    this.suitableForDiet,
  });

  /// Serialize [SchemaMenuItem] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MenuItem',
        'menuAddOn': convertToJsonLd(
            menuAddOn, (v) => v is SchemaMenuItem || v is SchemaMenuSection),
        'nutrition': convertToJsonLd(nutrition),
        'offers': convertToJsonLd(
            offers, (v) => v is SchemaDemand || v is SchemaOffer),
        'suitableForDiet': convertToJsonLd(suitableForDiet,
            (v) => v is SchemaDiet || v is SchemaRestrictedDiet),
      });
}
