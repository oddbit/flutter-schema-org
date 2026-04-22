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
import 'package:schema_org/schemas/medical_trial_design.dart';

/// A medical trial is a type of medical study that uses a scientific process
/// to compare the safety and efficacy of medical therapies or medical
/// procedures. In general, medical trials are controlled and subjects are
/// allocated at random to the different treatment and/or control groups.
/// See https://schema.org/MedicalTrial
class SchemaMedicalTrial extends SchemaMedicalStudy {
  /// Specifics about the trial design (enumerated).
  SchemaMedicalTrialDesign? trialDesign;

  /// Create a new instance of [SchemaMedicalTrial]
  SchemaMedicalTrial({
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
    this.trialDesign,
  });

  /// Serialize [SchemaMedicalTrial] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalTrial',
        'trialDesign': convertToJsonLd(trialDesign, [SchemaMedicalTrialDesign]),
      });
}
