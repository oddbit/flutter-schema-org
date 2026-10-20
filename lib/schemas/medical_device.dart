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
import 'package:schema_org/schemas/medical_contraindication.dart';

/// Any object used in a medical capacity, such as to diagnose or treat a
/// patient.
/// See https://schema.org/MedicalDevice
class SchemaMedicalDevice extends SchemaMedicalEntity {
  /// A possible complication and/or side effect of this therapy. If it is
  /// known that an adverse outcome is serious (resulting in death, disability,
  /// or permanent damage; requiring hospitalization; or otherwise
  /// life-threatening or requiring immediate medical attention), tag it as a
  /// seriousAdverseOutcome instead.
  SchemaMedicalEntity? adverseOutcome;

  /// A contraindication for this therapy.
  ///
  /// Supported types: [SchemaMedicalContraindication], [String]
  dynamic contraindication;

  /// A description of the postoperative procedures, care, and/or followups for
  /// this device.
  String? postOp;

  /// A description of the workup, testing, and other preparations required
  /// before implanting this device.
  String? preOp;

  /// A description of the procedure involved in setting up, using, and/or
  /// installing the device.
  String? procedure;

  /// A possible serious complication and/or serious side effect of this
  /// therapy. Serious adverse outcomes include those that are
  /// life-threatening; result in death, disability, or permanent damage;
  /// require hospitalization or prolong existing hospitalization; cause
  /// congenital anomalies or birth defects; or jeopardize the patient and may
  /// require medical or surgical intervention to prevent one of the outcomes
  /// in this definition.
  SchemaMedicalEntity? seriousAdverseOutcome;

  /// Create a new instance of [SchemaMedicalDevice]
  SchemaMedicalDevice({
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
    this.adverseOutcome,
    this.contraindication,
    this.postOp,
    this.preOp,
    this.procedure,
    this.seriousAdverseOutcome,
  });

  /// Serialize [SchemaMedicalDevice] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalDevice',
        'adverseOutcome': convertToJsonLd(adverseOutcome),
        'contraindication': convertToJsonLd(contraindication,
            (v) => v is SchemaMedicalContraindication || v is String),
        'postOp': convertToJsonLd(postOp),
        'preOp': convertToJsonLd(preOp),
        'procedure': convertToJsonLd(procedure),
        'seriousAdverseOutcome': convertToJsonLd(seriousAdverseOutcome),
      });
}
