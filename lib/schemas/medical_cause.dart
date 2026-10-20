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

/// The causative agent(s) that are responsible for the pathophysiologic
/// process that eventually results in a medical condition, symptom or sign.
/// In this schema, unless otherwise specified this is meant to be the
/// proximate cause of the medical condition, symptom or sign. The proximate
/// cause is defined as the causative agent that most directly results in the
/// medical condition, symptom or sign. For example, the HIV virus could be
/// considered a cause of AIDS. Or in a diagnostic context, if a patient fell
/// and sustained a hip fracture and two days later sustained a pulmonary
/// embolism which eventuated in a cardiac arrest, the cause of the cardiac
/// arrest (the proximate cause) would be the pulmonary embolism and not the
/// fall. Medical causes can include cardiovascular, chemical, dermatologic,
/// endocrine, environmental, gastroenterologic, genetic, hematologic,
/// gynecologic, iatrogenic, infectious, musculoskeletal, neurologic,
/// nutritional, obstetric, oncologic, otolaryngologic, pharmacologic,
/// psychiatric, pulmonary, renal, rheumatologic, toxic, traumatic, or
/// urologic causes; medical conditions can be causes as well.
/// See https://schema.org/MedicalCause
class SchemaMedicalCause extends SchemaMedicalEntity {
  /// The condition, complication, symptom, sign, etc. caused.
  SchemaMedicalEntity? causeOf;

  /// Create a new instance of [SchemaMedicalCause]
  SchemaMedicalCause({
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
    this.causeOf,
  });

  /// Serialize [SchemaMedicalCause] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalCause',
        'causeOf': convertToJsonLd(causeOf),
      });
}
