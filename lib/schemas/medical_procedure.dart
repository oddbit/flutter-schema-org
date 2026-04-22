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
import 'package:schema_org/schemas/medical_procedure_type.dart';
import 'package:schema_org/schemas/event_status_type.dart';
import 'package:schema_org/schemas/medical_study_status.dart';

/// A process of care used in either a diagnostic, therapeutic, preventive or
/// palliative capacity that relies on invasive (surgical), non-invasive, or
/// other techniques.
/// See https://schema.org/MedicalProcedure
class SchemaMedicalProcedure extends SchemaMedicalEntity {
  /// Location in the body of the anatomical structure.
  String? bodyLocation;

  /// Typical or recommended followup care after the procedure is performed.
  String? followup;

  /// How the procedure is performed.
  String? howPerformed;

  /// Typical preparation that a patient must undergo before having the
  /// procedure performed.
  ///
  /// Supported types: [SchemaMedicalEntity], [String]
  dynamic preparation;

  /// The type of procedure, for example Surgical, Noninvasive, or
  /// Percutaneous.
  SchemaMedicalProcedureType? procedureType;

  /// The status of the study (enumerated).
  ///
  /// Supported types: [SchemaEventStatusType], [SchemaMedicalStudyStatus],
  /// [String]
  dynamic status;

  /// Create a new instance of [SchemaMedicalProcedure]
  SchemaMedicalProcedure({
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
    this.bodyLocation,
    this.followup,
    this.howPerformed,
    this.preparation,
    this.procedureType,
    this.status,
  });

  /// Serialize [SchemaMedicalProcedure] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalProcedure',
        'bodyLocation': convertToJsonLd(bodyLocation, [String]),
        'followup': convertToJsonLd(followup, [String]),
        'howPerformed': convertToJsonLd(howPerformed, [String]),
        'preparation':
            convertToJsonLd(preparation, [SchemaMedicalEntity, String]),
        'procedureType':
            convertToJsonLd(procedureType, [SchemaMedicalProcedureType]),
        'status': convertToJsonLd(
            status, [SchemaEventStatusType, SchemaMedicalStudyStatus, String]),
      });
}
