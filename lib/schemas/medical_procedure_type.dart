// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// An enumeration that describes different types of medical procedures.
/// See https://schema.org/MedicalProcedureType
enum SchemaMedicalProcedureType implements SchemaMedicalEnumeration {
  /// A type of medical procedure that involves noninvasive techniques.
  noninvasiveProcedure('https://schema.org/MedicalProcedureType'),

  /// A type of medical procedure that involves percutaneous techniques,
  /// where access to organs or tissue is achieved via needle-puncture of
  /// the skin. For example, catheter-based procedures like stent delivery.
  percutaneousProcedure('https://schema.org/MedicalProcedureType');

  /// Constructor for [SchemaMedicalProcedureType]
  const SchemaMedicalProcedureType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalProcedureType] to JSON-LD
  @override
  String toJsonLd() => value;
}
