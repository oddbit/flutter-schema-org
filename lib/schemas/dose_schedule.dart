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
import 'package:schema_org/schemas/qualitative_value.dart';

/// A specific dosing schedule for a drug or supplement.
/// See https://schema.org/DoseSchedule
class SchemaDoseSchedule extends SchemaMedicalIntangible {
  /// The unit of the dose, e.g. 'mg'.
  String? doseUnit;

  /// The value of the dose, e.g. 500.
  ///
  /// Supported types: [SchemaQualitativeValue], [num]
  dynamic doseValue;

  /// How often the dose is taken, e.g. 'daily'.
  String? frequency;

  /// Characteristics of the population for which this is intended, or which
  /// typically uses it, e.g. 'adults'.
  String? targetPopulation;

  /// Create a new instance of [SchemaDoseSchedule]
  SchemaDoseSchedule({
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
    this.doseUnit,
    this.doseValue,
    this.frequency,
    this.targetPopulation,
  });

  /// Serialize [SchemaDoseSchedule] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DoseSchedule',
        'doseUnit': convertToJsonLd(doseUnit, [String]),
        'doseValue': convertToJsonLd(doseValue, [SchemaQualitativeValue, num]),
        'frequency': convertToJsonLd(frequency, [String]),
        'targetPopulation': convertToJsonLd(targetPopulation, [String]),
      });
}
