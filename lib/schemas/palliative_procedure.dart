// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_procedure.dart';
import 'package:schema_org/schemas/medical_therapy.dart';
import 'package:schema_org/schemas/medical_contraindication.dart';
import 'package:schema_org/schemas/medical_entity.dart';
import 'package:schema_org/schemas/dose_schedule.dart';
import 'package:schema_org/schemas/drug.dart';

/// A medical procedure intended primarily for palliative purposes, aimed at
/// relieving the symptoms of an underlying health condition.
/// See https://schema.org/PalliativeProcedure
class SchemaPalliativeProcedure extends SchemaMedicalProcedure
    implements SchemaMedicalTherapy {
  /// A contraindication for this therapy.
  ///
  /// Supported types: [SchemaMedicalContraindication], [String]
  @override
  dynamic contraindication;

  /// A therapy that duplicates or overlaps this one.
  @override
  SchemaMedicalTherapy? duplicateTherapy;

  /// A possible serious complication and/or serious side effect of this
  /// therapy. Serious adverse outcomes include those that are
  /// life-threatening; result in death, disability, or permanent damage;
  /// require hospitalization or prolong existing hospitalization; cause
  /// congenital anomalies or birth defects; or jeopardize the patient and may
  /// require medical or surgical intervention to prevent one of the outcomes
  /// in this definition.
  @override
  SchemaMedicalEntity? seriousAdverseOutcome;

  /// A possible complication and/or side effect of this therapy. If it is
  /// known that an adverse outcome is serious (resulting in death, disability,
  /// or permanent damage; requiring hospitalization; or otherwise
  /// life-threatening or requiring immediate medical attention), tag it as a
  /// seriousAdverseOutcome instead.
  @override
  SchemaMedicalEntity? adverseOutcome;

  /// A dosing schedule for the drug for a given population, either observed,
  /// recommended, or maximum dose based on the type used.
  @override
  SchemaDoseSchedule? doseSchedule;

  /// Specifying a drug or medicine used in a medication procedure.
  @override
  SchemaDrug? drug;

  /// Create a new instance of [SchemaPalliativeProcedure]
  SchemaPalliativeProcedure({
    super.additionalType,
    super.alternateName,
    super.bodyLocation,
    super.code,
    super.description,
    super.disambiguatingDescription,
    super.followup,
    super.funding,
    super.guideline,
    super.howPerformed,
    super.identifier,
    super.image,
    super.legalStatus,
    super.mainEntityOfPage,
    super.medicineSystem,
    super.name,
    super.owner,
    super.potentialAction,
    super.preparation,
    super.procedureType,
    super.recognizingAuthority,
    super.relevantSpecialty,
    super.sameAs,
    super.status,
    super.study,
    super.subjectOf,
    super.url,
    this.contraindication,
    this.duplicateTherapy,
    this.seriousAdverseOutcome,
    this.adverseOutcome,
    this.doseSchedule,
    this.drug,
  });

  /// Serialize [SchemaPalliativeProcedure] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PalliativeProcedure',
        'contraindication': convertToJsonLd(contraindication,
            (v) => v is SchemaMedicalContraindication || v is String),
        'duplicateTherapy': convertToJsonLd(duplicateTherapy),
        'seriousAdverseOutcome': convertToJsonLd(seriousAdverseOutcome),
        'adverseOutcome': convertToJsonLd(adverseOutcome),
        'doseSchedule': convertToJsonLd(doseSchedule),
        'drug': convertToJsonLd(drug),
      });
}
