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

/// A condition or factor that serves as a reason to withhold a certain
/// medical therapy. Contraindications can be absolute (there are no
/// reasonable circumstances for undertaking a course of action) or relative
/// (the patient is at higher risk of complications, but these risks may be
/// outweighed by other considerations or mitigated by other measures).
/// See https://schema.org/MedicalContraindication
class SchemaMedicalContraindication extends SchemaMedicalEntity {
  /// Create a new instance of [SchemaMedicalContraindication]
  SchemaMedicalContraindication({
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
  });

  /// Serialize [SchemaMedicalContraindication] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalContraindication',
      });
}
