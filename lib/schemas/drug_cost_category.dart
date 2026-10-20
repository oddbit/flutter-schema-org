// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Enumerated categories of medical drug costs.
/// See https://schema.org/DrugCostCategory
enum SchemaDrugCostCategory implements SchemaMedicalEnumeration {
  /// The drug's cost represents the maximum reimbursement paid by an
  /// insurer for the drug.
  reimbursementCap('https://schema.org/ReimbursementCap'),

  /// The drug's cost represents the retail cost of the drug.
  retail('https://schema.org/Retail'),

  /// The drug's cost represents the wholesale acquisition cost of the
  /// drug.
  wholesale('https://schema.org/Wholesale');

  /// Constructor for [SchemaDrugCostCategory]
  const SchemaDrugCostCategory(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaDrugCostCategory] to JSON-LD
  @override
  String toJsonLd() => value;
}
