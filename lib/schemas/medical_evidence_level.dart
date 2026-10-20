// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Level of evidence for a medical guideline. Enumerated type.
/// See https://schema.org/MedicalEvidenceLevel
enum SchemaMedicalEvidenceLevel implements SchemaMedicalEnumeration {
  /// Data derived from multiple randomized clinical trials or
  /// meta-analyses.
  evidenceLevelA('https://schema.org/EvidenceLevelA'),

  /// Data derived from a single randomized trial, or nonrandomized
  /// studies.
  evidenceLevelB('https://schema.org/EvidenceLevelB'),

  /// Only consensus opinion of experts, case studies, or standard-of-care.
  evidenceLevelC('https://schema.org/EvidenceLevelC');

  /// Constructor for [SchemaMedicalEvidenceLevel]
  const SchemaMedicalEvidenceLevel(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaMedicalEvidenceLevel] to JSON-LD
  @override
  String toJsonLd() => value;
}
