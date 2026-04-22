// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_therapy.dart';

/// A treatment of people with physical, emotional, or social problems, using
/// purposeful activity to help them overcome or learn to deal with their
/// problems.
/// See https://schema.org/OccupationalTherapy
class SchemaOccupationalTherapy extends SchemaMedicalTherapy {
  /// Create a new instance of [SchemaOccupationalTherapy]
  SchemaOccupationalTherapy({
    super.additionalType,
    super.adverseOutcome,
    super.alternateName,
    super.bodyLocation,
    super.code,
    super.contraindication,
    super.description,
    super.disambiguatingDescription,
    super.doseSchedule,
    super.drug,
    super.duplicateTherapy,
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
    super.seriousAdverseOutcome,
    super.status,
    super.study,
    super.subjectOf,
    super.url,
  });

  /// Serialize [SchemaOccupationalTherapy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'OccupationalTherapy',
      });
}
