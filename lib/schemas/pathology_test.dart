// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_test.dart';

/// A medical test performed by a laboratory that typically involves
/// examination of a tissue sample by a pathologist.
/// See https://schema.org/PathologyTest
class SchemaPathologyTest extends SchemaMedicalTest {
  /// The type of tissue sample required for the test.
  String? tissueSample;

  /// Create a new instance of [SchemaPathologyTest]
  SchemaPathologyTest({
    super.additionalType,
    super.affectedBy,
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
    super.normalRange,
    super.owner,
    super.potentialAction,
    super.recognizingAuthority,
    super.relevantSpecialty,
    super.sameAs,
    super.signDetected,
    super.study,
    super.subjectOf,
    super.url,
    super.usedToDiagnose,
    super.usesDevice,
    this.tissueSample,
  });

  /// Serialize [SchemaPathologyTest] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PathologyTest',
        'tissueSample': convertToJsonLd(tissueSample, [String]),
      });
}
