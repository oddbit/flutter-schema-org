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
import 'package:schema_org/schemas/anatomical_structure.dart';
import 'package:schema_org/schemas/anatomical_system.dart';
import 'package:schema_org/schemas/superficial_anatomy.dart';
import 'package:schema_org/schemas/medical_cause.dart';
import 'package:schema_org/schemas/d_dx_element.dart';
import 'package:schema_org/schemas/drug.dart';
import 'package:schema_org/schemas/drug_class.dart';
import 'package:schema_org/schemas/lifestyle_modification.dart';
import 'package:schema_org/schemas/medical_therapy.dart';
import 'package:schema_org/schemas/medical_risk_factor.dart';
import 'package:schema_org/schemas/medical_sign_or_symptom.dart';
import 'package:schema_org/schemas/medical_condition_stage.dart';
import 'package:schema_org/schemas/event_status_type.dart';
import 'package:schema_org/schemas/medical_study_status.dart';
import 'package:schema_org/schemas/medical_test.dart';

/// Any condition of the human body that affects the normal functioning of a
/// person, whether physically or mentally. Includes diseases, injuries,
/// disabilities, disorders, syndromes, etc.
/// See https://schema.org/MedicalCondition
class SchemaMedicalCondition extends SchemaMedicalEntity {
  /// The anatomy of the underlying organ system or structures associated with
  /// this entity.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaAnatomicalSystem],
  /// [SchemaSuperficialAnatomy]
  dynamic associatedAnatomy;

  /// The cause of a medical condition.
  SchemaMedicalCause? cause;

  /// One of a set of differential diagnoses for the condition. Specifically, a
  /// closely-related or competing diagnosis typically considered later in the
  /// cognitive process whereby this medical condition is distinguished from
  /// others most likely responsible for a similar collection of signs and
  /// symptoms to reach the most parsimonious diagnosis or diagnoses in a
  /// patient.
  SchemaDDxElement? differentialDiagnosis;

  /// Specifying a drug or medicine used in a medication procedure.
  SchemaDrug? drug;

  /// The characteristics of associated patients, such as age, gender, race
  /// etc.
  String? epidemiology;

  /// The likely outcome in either the short term or long term of the medical
  /// condition.
  String? expectedPrognosis;

  /// The expected progression of the condition if it is not treated and
  /// allowed to progress naturally.
  String? naturalProgression;

  /// Changes in the normal mechanical, physical, and biochemical functions
  /// that are associated with this activity or condition.
  String? pathophysiology;

  /// A possible unexpected and unfavorable evolution of a medical condition.
  /// Complications may include worsening of the signs or symptoms of the
  /// disease, extension of the condition to other organ systems, etc.
  String? possibleComplication;

  /// A possible treatment to address this condition, sign or symptom.
  ///
  /// Supported types: [SchemaDrug], [SchemaDrugClass],
  /// [SchemaLifestyleModification], [SchemaMedicalTherapy]
  dynamic possibleTreatment;

  /// A preventative therapy used to prevent an initial occurrence of the
  /// medical condition, such as vaccination.
  SchemaMedicalTherapy? primaryPrevention;

  /// A modifiable or non-modifiable factor that increases the risk of a
  /// patient contracting this condition, e.g. age, coexisting condition.
  SchemaMedicalRiskFactor? riskFactor;

  /// A preventative therapy used to prevent reoccurrence of the medical
  /// condition after an initial episode of the condition.
  ///
  /// Supported types: [SchemaDrug], [SchemaDrugClass],
  /// [SchemaLifestyleModification], [SchemaMedicalTherapy]
  dynamic secondaryPrevention;

  /// A sign or symptom of this condition. Signs are objective or physically
  /// observable manifestations of the medical condition while symptoms are the
  /// subjective experience of the medical condition.
  SchemaMedicalSignOrSymptom? signOrSymptom;

  /// The stage of the condition, if applicable.
  SchemaMedicalConditionStage? stage;

  /// The status of the study (enumerated).
  ///
  /// Supported types: [SchemaEventStatusType], [SchemaMedicalStudyStatus],
  /// [String]
  dynamic status;

  /// A medical test typically performed given this condition.
  SchemaMedicalTest? typicalTest;

  /// Create a new instance of [SchemaMedicalCondition]
  SchemaMedicalCondition({
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
    this.cause,
    this.differentialDiagnosis,
    this.drug,
    this.epidemiology,
    this.expectedPrognosis,
    this.naturalProgression,
    this.pathophysiology,
    this.possibleComplication,
    this.possibleTreatment,
    this.primaryPrevention,
    this.riskFactor,
    this.secondaryPrevention,
    this.signOrSymptom,
    this.stage,
    this.status,
    this.typicalTest,
  });

  /// Serialize [SchemaMedicalCondition] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalCondition',
        'associatedAnatomy': convertToJsonLd(
            associatedAnatomy,
            (v) =>
                v is SchemaAnatomicalStructure ||
                v is SchemaAnatomicalSystem ||
                v is SchemaSuperficialAnatomy),
        'cause': convertToJsonLd(cause),
        'differentialDiagnosis': convertToJsonLd(differentialDiagnosis),
        'drug': convertToJsonLd(drug),
        'epidemiology': convertToJsonLd(epidemiology),
        'expectedPrognosis': convertToJsonLd(expectedPrognosis),
        'naturalProgression': convertToJsonLd(naturalProgression),
        'pathophysiology': convertToJsonLd(pathophysiology),
        'possibleComplication': convertToJsonLd(possibleComplication),
        'possibleTreatment': convertToJsonLd(
            possibleTreatment,
            (v) =>
                v is SchemaDrug ||
                v is SchemaDrugClass ||
                v is SchemaLifestyleModification ||
                v is SchemaMedicalTherapy),
        'primaryPrevention': convertToJsonLd(primaryPrevention),
        'riskFactor': convertToJsonLd(riskFactor),
        'secondaryPrevention': convertToJsonLd(
            secondaryPrevention,
            (v) =>
                v is SchemaDrug ||
                v is SchemaDrugClass ||
                v is SchemaLifestyleModification ||
                v is SchemaMedicalTherapy),
        'signOrSymptom': convertToJsonLd(signOrSymptom),
        'stage': convertToJsonLd(stage),
        'status': convertToJsonLd(
            status,
            (v) =>
                v is SchemaEventStatusType ||
                v is SchemaMedicalStudyStatus ||
                v is String),
        'typicalTest': convertToJsonLd(typicalTest),
      });
}
