// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_entity.dart';
import 'package:schema_org/schemas/maximum_dose_schedule.dart';

/// Any matter of defined composition that has discrete existence, whose
/// origin may be biological, mineral or chemical.
/// See https://schema.org/Substance
class SchemaSubstance extends SchemaMedicalEntity {
  /// An active ingredient, typically chemical compounds and/or biologic
  /// substances.
  String? activeIngredient;

  /// Recommended intake of this supplement for a given population as defined
  /// by a specific recommending authority.
  SchemaMaximumDoseSchedule? maximumIntake;

  /// Create a new instance of [SchemaSubstance]
  SchemaSubstance({
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
    this.activeIngredient,
    this.maximumIntake,
  });

  /// Serialize [SchemaSubstance] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Substance',
        'activeIngredient': convertToJsonLd(activeIngredient),
        'maximumIntake': convertToJsonLd(maximumIntake),
      });
}
