// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Indicates whether this drug is available by prescription or
/// over-the-counter.
/// See https://schema.org/DrugPrescriptionStatus
enum SchemaDrugPrescriptionStatus implements SchemaMedicalEnumeration {
  /// The character of a medical substance, typically a medicine, of being
  /// available over the counter or not.
  oTC('https://schema.org/OTC'),

  /// Available by prescription only.
  prescriptionOnly('https://schema.org/PrescriptionOnly');

  /// Constructor for [SchemaDrugPrescriptionStatus]
  const SchemaDrugPrescriptionStatus(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaDrugPrescriptionStatus] to JSON-LD
  @override
  String toJsonLd() => value;
}
