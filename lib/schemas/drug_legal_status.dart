// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_intangible.dart';
import 'package:schema_org/schemas/administrative_area.dart';

/// The legal availability status of a medical drug.
/// See https://schema.org/DrugLegalStatus
class SchemaDrugLegalStatus extends SchemaMedicalIntangible {
  /// The location in which the status applies.
  SchemaAdministrativeArea? applicableLocation;

  /// Create a new instance of [SchemaDrugLegalStatus]
  SchemaDrugLegalStatus({
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
    this.applicableLocation,
  });

  /// Serialize [SchemaDrugLegalStatus] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DrugLegalStatus',
        'applicableLocation':
            convertToJsonLd(applicableLocation, [SchemaAdministrativeArea]),
      });
}
