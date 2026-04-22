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

/// A class of medical drugs, e.g., statins. Classes can represent general
/// pharmacological class, common mechanisms of action, common physiological
/// effects, etc.
/// See https://schema.org/DrugClass
class SchemaDrugClass extends SchemaMedicalEntity {
  /// Specifying a drug or medicine used in a medication procedure.
  SchemaDrug? drug;

  /// Create a new instance of [SchemaDrugClass]
  SchemaDrugClass({
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
    this.drug,
  });

  /// Serialize [SchemaDrugClass] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DrugClass',
        'drug': convertToJsonLd(drug, [SchemaDrug]),
      });
}
