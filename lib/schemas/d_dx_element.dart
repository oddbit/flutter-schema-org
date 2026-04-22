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
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/medical_sign_or_symptom.dart';

/// An alternative, closely-related condition typically considered later in
/// the differential diagnosis process along with the signs that are used to
/// distinguish it.
/// See https://schema.org/DDxElement
class SchemaDDxElement extends SchemaMedicalIntangible {
  /// One or more alternative conditions considered in the differential
  /// diagnosis process as output of a diagnosis process.
  SchemaMedicalCondition? diagnosis;

  /// One of a set of signs and symptoms that can be used to distinguish this
  /// diagnosis from others in the differential diagnosis.
  SchemaMedicalSignOrSymptom? distinguishingSign;

  /// Create a new instance of [SchemaDDxElement]
  SchemaDDxElement({
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
    this.diagnosis,
    this.distinguishingSign,
  });

  /// Serialize [SchemaDDxElement] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DDxElement',
        'diagnosis': convertToJsonLd(diagnosis, [SchemaMedicalCondition]),
        'distinguishingSign':
            convertToJsonLd(distinguishingSign, [SchemaMedicalSignOrSymptom]),
      });
}
