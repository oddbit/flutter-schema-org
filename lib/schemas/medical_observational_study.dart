// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_study.dart';
import 'package:schema_org/schemas/medical_observational_study_design.dart';

/// An observational study is a type of medical study that attempts to infer
/// the possible effect of a treatment through observation of a cohort of
/// subjects over a period of time. In an observational study, the assignment
/// of subjects into treatment groups versus control groups is outside the
/// control of the investigator. This is in contrast with controlled studies,
/// such as the randomized controlled trials represented by MedicalTrial,
/// where each subject is randomly assigned to a treatment group or a control
/// group before the start of the treatment.
/// See https://schema.org/MedicalObservationalStudy
class SchemaMedicalObservationalStudy extends SchemaMedicalStudy {
  /// Specifics about the observational study design (enumerated).
  SchemaMedicalObservationalStudyDesign? studyDesign;

  /// Create a new instance of [SchemaMedicalObservationalStudy]
  SchemaMedicalObservationalStudy({
    super.additionalType,
    super.alternateName,
    super.code,
    super.description,
    super.disambiguatingDescription,
    super.funding,
    super.guideline,
    super.healthCondition,
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
    super.sponsor,
    super.status,
    super.study,
    super.studyLocation,
    super.studySubject,
    super.subjectOf,
    super.url,
    this.studyDesign,
  });

  /// Serialize [SchemaMedicalObservationalStudy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalObservationalStudy',
        'studyDesign': convertToJsonLd(studyDesign),
      });
}
