// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Categories that represent an assessment of the risk of fetal injury due
/// to a drug or pharmaceutical used as directed by the mother during
/// pregnancy.
/// See https://schema.org/DrugPregnancyCategory
enum SchemaDrugPregnancyCategory implements SchemaMedicalEnumeration {
  /// A designation by the US FDA signifying that adequate and
  /// well-controlled studies have failed to demonstrate a risk to the
  /// fetus in the first trimester of pregnancy (and there is no evidence
  /// of risk in later trimesters).
  fDAcategoryA('https://schema.org/FDAcategoryA'),

  /// A designation by the US FDA signifying that animal reproduction
  /// studies have failed to demonstrate a risk to the fetus and there are
  /// no adequate and well-controlled studies in pregnant women.
  fDAcategoryB('https://schema.org/FDAcategoryB'),

  /// A designation by the US FDA signifying that animal reproduction
  /// studies have shown an adverse effect on the fetus and there are no
  /// adequate and well-controlled studies in humans, but potential
  /// benefits may warrant use of the drug in pregnant women despite
  /// potential risks.
  fDAcategoryC('https://schema.org/FDAcategoryC'),

  /// A designation by the US FDA signifying that there is positive
  /// evidence of human fetal risk based on adverse reaction data from
  /// investigational or marketing experience or studies in humans, but
  /// potential benefits may warrant use of the drug in pregnant women
  /// despite potential risks.
  fDAcategoryD('https://schema.org/FDAcategoryD'),

  /// A designation by the US FDA signifying that studies in animals or
  /// humans have demonstrated fetal abnormalities and/or there is positive
  /// evidence of human fetal risk based on adverse reaction data from
  /// investigational or marketing experience, and the risks involved in
  /// use of the drug in pregnant women clearly outweigh potential
  /// benefits.
  fDAcategoryX('https://schema.org/FDAcategoryX'),

  /// A designation that the drug in question has not been assigned a
  /// pregnancy category designation by the US FDA.
  fDAnotEvaluated('https://schema.org/FDAnotEvaluated');

  /// Constructor for [SchemaDrugPregnancyCategory]
  const SchemaDrugPregnancyCategory(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaDrugPregnancyCategory] to JSON-LD
  @override
  String toJsonLd() => value;
}
