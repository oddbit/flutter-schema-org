// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Target audiences types for medical web pages. Enumerated type.
/// See https://schema.org/MedicalAudienceType
enum SchemaMedicalAudienceType implements SchemaMedicalEnumeration {
  /// Medical clinicians, including practicing physicians and other medical
  /// professionals involved in clinical practice.
  clinician('https://schema.org/MedicalAudienceType'),

  /// Medical researchers.
  medicalResearcher('https://schema.org/MedicalAudienceType');

  /// Constructor for [SchemaMedicalAudienceType]
  const SchemaMedicalAudienceType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalAudienceType] to JSON-LD
  @override
  String toJsonLd() => value;
}
