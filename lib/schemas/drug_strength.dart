// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_intangible.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/maximum_dose_schedule.dart';

/// A specific strength in which a medical drug is available in a specific
/// country.
/// See https://schema.org/DrugStrength
class SchemaDrugStrength extends SchemaMedicalIntangible {
  /// An active ingredient, typically chemical compounds and/or biologic
  /// substances.
  String? activeIngredient;

  /// The location in which the strength is available.
  SchemaAdministrativeArea? availableIn;

  /// Recommended intake of this supplement for a given population as defined
  /// by a specific recommending authority.
  SchemaMaximumDoseSchedule? maximumIntake;

  /// The units of an active ingredient's strength, e.g. mg.
  String? strengthUnit;

  /// The value of an active ingredient's strength, e.g. 325.
  num? strengthValue;

  /// Create a new instance of [SchemaDrugStrength]
  SchemaDrugStrength({
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
    this.availableIn,
    this.maximumIntake,
    this.strengthUnit,
    this.strengthValue,
  });

  /// Serialize [SchemaDrugStrength] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DrugStrength',
        'activeIngredient': convertToJsonLd(activeIngredient),
        'availableIn': convertToJsonLd(availableIn),
        'maximumIntake': convertToJsonLd(maximumIntake),
        'strengthUnit': convertToJsonLd(strengthUnit),
        'strengthValue': convertToJsonLd(strengthValue),
      });
}
