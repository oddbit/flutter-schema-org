// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Design models for medical trials. Enumerated type.
/// See https://schema.org/MedicalTrialDesign
enum SchemaMedicalTrialDesign implements SchemaMedicalEnumeration {
  /// A trial design in which neither the researcher nor the patient knows
  /// the details of the treatment the patient was randomly assigned to.
  doubleBlindedTrial('https://schema.org/MedicalTrialDesign'),

  /// An international trial.
  internationalTrial('https://schema.org/MedicalTrialDesign'),

  /// A trial that takes place at multiple centers.
  multiCenterTrial('https://schema.org/MedicalTrialDesign'),

  /// A trial design in which the researcher knows the full details of the
  /// treatment, and so does the patient.
  openTrial('https://schema.org/MedicalTrialDesign'),

  /// A placebo-controlled trial design.
  placeboControlledTrial('https://schema.org/MedicalTrialDesign'),

  /// A randomized trial design.
  randomizedTrial('https://schema.org/MedicalTrialDesign'),

  /// A trial design in which the researcher knows which treatment the
  /// patient was randomly assigned to but the patient does not.
  singleBlindedTrial('https://schema.org/MedicalTrialDesign'),

  /// A trial that takes place at a single center.
  singleCenterTrial('https://schema.org/MedicalTrialDesign'),

  /// A trial design in which neither the researcher, the person
  /// administering the therapy nor the patient knows the details of the
  /// treatment the patient was randomly assigned to.
  tripleBlindedTrial('https://schema.org/MedicalTrialDesign');

  /// Constructor for [SchemaMedicalTrialDesign]
  const SchemaMedicalTrialDesign(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalTrialDesign] to JSON-LD
  @override
  String toJsonLd() => value;
}
