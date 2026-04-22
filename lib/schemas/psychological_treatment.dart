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

/// A process of care relying upon counseling, dialogue and communication
/// aimed at improving a mental health condition without use of drugs.
/// See https://schema.org/PsychologicalTreatment
class SchemaPsychologicalTreatment extends SchemaTherapeuticProcedure {
  /// Create a new instance of [SchemaPsychologicalTreatment]
  SchemaPsychologicalTreatment({
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
  });

  /// Serialize [SchemaPsychologicalTreatment] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PsychologicalTreatment',
      });
}
