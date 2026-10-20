// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/therapeutic_procedure.dart';
import 'package:schema_org/schemas/medical_contraindication.dart';
import 'package:schema_org/schemas/medical_entity.dart';

/// Any medical intervention designed to prevent, treat, and cure human
/// diseases and medical conditions, including both curative and palliative
/// therapies. Medical therapies are typically processes of care relying upon
/// pharmacotherapy, behavioral therapy, supportive therapy (with fluid or
/// nutrition for example), or detoxification (e.g. hemodialysis) aimed at
/// improving or preventing a health condition.
/// See https://schema.org/MedicalTherapy
class SchemaMedicalTherapy extends SchemaTherapeuticProcedure {
  /// A contraindication for this therapy.
  ///
  /// Supported types: [SchemaMedicalContraindication], [String]
  dynamic contraindication;

  /// A therapy that duplicates or overlaps this one.
  SchemaMedicalTherapy? duplicateTherapy;

  /// A possible serious complication and/or serious side effect of this
  /// therapy. Serious adverse outcomes include those that are
  /// life-threatening; result in death, disability, or permanent damage;
  /// require hospitalization or prolong existing hospitalization; cause
  /// congenital anomalies or birth defects; or jeopardize the patient and may
  /// require medical or surgical intervention to prevent one of the outcomes
  /// in this definition.
  SchemaMedicalEntity? seriousAdverseOutcome;

  /// Create a new instance of [SchemaMedicalTherapy]
  SchemaMedicalTherapy({
    super.additionalType,
    super.adverseOutcome,
    super.alternateName,
    super.bodyLocation,
    super.code,
    super.description,
    super.disambiguatingDescription,
    super.doseSchedule,
    super.drug,
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
  });

  /// Serialize [SchemaMedicalTherapy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalTherapy',
        'contraindication': convertToJsonLd(contraindication,
            (v) => v is SchemaMedicalContraindication || v is String),
        'duplicateTherapy': convertToJsonLd(duplicateTherapy),
        'seriousAdverseOutcome': convertToJsonLd(seriousAdverseOutcome),
      });
}
