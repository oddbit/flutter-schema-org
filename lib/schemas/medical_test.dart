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
import 'package:schema_org/schemas/drug.dart';
import 'package:schema_org/schemas/medical_enumeration.dart';
import 'package:schema_org/schemas/medical_sign.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/medical_device.dart';

/// Any medical test, typically performed for diagnostic purposes.
/// See https://schema.org/MedicalTest
class SchemaMedicalTest extends SchemaMedicalEntity {
  /// Drugs that affect the test's results.
  SchemaDrug? affectedBy;

  /// Range of acceptable values for a typical patient, when applicable.
  ///
  /// Supported types: [SchemaMedicalEnumeration], [String]
  dynamic normalRange;

  /// A sign detected by the test.
  SchemaMedicalSign? signDetected;

  /// A condition the test is used to diagnose.
  SchemaMedicalCondition? usedToDiagnose;

  /// Device used to perform the test.
  SchemaMedicalDevice? usesDevice;

  /// Create a new instance of [SchemaMedicalTest]
  SchemaMedicalTest({
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
    this.affectedBy,
    this.normalRange,
    this.signDetected,
    this.usedToDiagnose,
    this.usesDevice,
  });

  /// Serialize [SchemaMedicalTest] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalTest',
        'affectedBy': convertToJsonLd(affectedBy, [SchemaDrug]),
        'normalRange':
            convertToJsonLd(normalRange, [SchemaMedicalEnumeration, String]),
        'signDetected': convertToJsonLd(signDetected, [SchemaMedicalSign]),
        'usedToDiagnose':
            convertToJsonLd(usedToDiagnose, [SchemaMedicalCondition]),
        'usesDevice': convertToJsonLd(usesDevice, [SchemaMedicalDevice]),
      });
}
