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
import 'package:schema_org/schemas/medical_enumeration.dart';

/// A type of physical examination of a patient performed by a physician.
/// See https://schema.org/PhysicalExam
class SchemaPhysicalExam extends SchemaMedicalProcedure
    implements SchemaMedicalEnumeration {
  /// Create a new instance of [SchemaPhysicalExam]
  SchemaPhysicalExam({
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
  });

  /// Serialize [SchemaPhysicalExam] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PhysicalExam',
      });
}
