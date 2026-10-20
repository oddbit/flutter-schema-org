// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/lifestyle_modification.dart';
import 'package:schema_org/schemas/anatomical_structure.dart';
import 'package:schema_org/schemas/anatomical_system.dart';
import 'package:schema_org/schemas/superficial_anatomy.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/thing.dart';

/// Any bodily activity that enhances or maintains physical fitness and
/// overall health and wellness. Includes activity that is part of daily
/// living and routine, structured exercise, and exercise prescribed as part
/// of a medical treatment or recovery plan.
/// See https://schema.org/PhysicalActivity
class SchemaPhysicalActivity extends SchemaLifestyleModification {
  /// The anatomy of the underlying organ system or structures associated with
  /// this entity.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaAnatomicalSystem],
  /// [SchemaSuperficialAnatomy]
  dynamic associatedAnatomy;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [SchemaThing]
  dynamic category;

  /// The characteristics of associated patients, such as age, gender, race
  /// etc.
  String? epidemiology;

  /// Changes in the normal mechanical, physical, and biochemical functions
  /// that are associated with this activity or condition.
  String? pathophysiology;

  /// Create a new instance of [SchemaPhysicalActivity]
  SchemaPhysicalActivity({
    super.additionalType,
    super.alternateName,
    super.code,
    super.description,
    super.disambiguatingDescription,
    super.funding,
    super.guideline,
    super.identifier,
    super.image,
    super.legalStatus,
    super.mainEntityOfPage,
    super.medicineSystem,
    super.name,
    super.owner,
    super.potentialAction,
    super.recognizingAuthority,
    super.relevantSpecialty,
    super.sameAs,
    super.study,
    super.subjectOf,
    super.url,
    this.associatedAnatomy,
    this.category,
    this.epidemiology,
    this.pathophysiology,
  });

  /// Serialize [SchemaPhysicalActivity] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PhysicalActivity',
        'associatedAnatomy': convertToJsonLd(
            associatedAnatomy,
            (v) =>
                v is SchemaAnatomicalStructure ||
                v is SchemaAnatomicalSystem ||
                v is SchemaSuperficialAnatomy),
        'category': convertToJsonLd(
            category,
            (v) =>
                v is SchemaCategoryCode ||
                v is SchemaPhysicalActivityCategory ||
                v is String ||
                v is SchemaThing),
        'epidemiology': convertToJsonLd(epidemiology),
        'pathophysiology': convertToJsonLd(pathophysiology),
      });
}
