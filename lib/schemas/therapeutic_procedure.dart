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
import 'package:schema_org/schemas/medical_entity.dart';
import 'package:schema_org/schemas/dose_schedule.dart';
import 'package:schema_org/schemas/drug.dart';

/// A medical procedure intended primarily for therapeutic purposes, aimed at
/// improving a health condition.
/// See https://schema.org/TherapeuticProcedure
class SchemaTherapeuticProcedure extends SchemaMedicalProcedure {
  /// A possible complication and/or side effect of this therapy. If it is
  /// known that an adverse outcome is serious (resulting in death, disability,
  /// or permanent damage; requiring hospitalization; or otherwise
  /// life-threatening or requiring immediate medical attention), tag it as a
  /// seriousAdverseOutcome instead.
  SchemaMedicalEntity? adverseOutcome;

  /// A dosing schedule for the drug for a given population, either observed,
  /// recommended, or maximum dose based on the type used.
  SchemaDoseSchedule? doseSchedule;

  /// Specifying a drug or medicine used in a medication procedure.
  SchemaDrug? drug;

  /// Create a new instance of [SchemaTherapeuticProcedure]
  SchemaTherapeuticProcedure({
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
    this.adverseOutcome,
    this.doseSchedule,
    this.drug,
  });

  /// Serialize [SchemaTherapeuticProcedure] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TherapeuticProcedure',
        'adverseOutcome':
            convertToJsonLd(adverseOutcome, [SchemaMedicalEntity]),
        'doseSchedule': convertToJsonLd(doseSchedule, [SchemaDoseSchedule]),
        'drug': convertToJsonLd(drug, [SchemaDrug]),
      });
}
