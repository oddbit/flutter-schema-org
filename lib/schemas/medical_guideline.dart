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
import 'package:schema_org/schemas/medical_evidence_level.dart';

/// the organization making the recommendation should be captured in the
/// recognizingAuthority base property of MedicalEntity.
/// See https://schema.org/MedicalGuideline
class SchemaMedicalGuideline extends SchemaMedicalEntity {
  /// Strength of evidence of the data used to formulate the guideline
  /// (enumerated).
  SchemaMedicalEvidenceLevel? evidenceLevel;

  /// Source of the data used to formulate the guidance, e.g. RCT, consensus
  /// opinion, etc.
  String? evidenceOrigin;

  /// Date on which this guideline's recommendation was made.
  String? guidelineDate;

  /// The medical conditions, treatments, etc. that are the subject of the
  /// guideline.
  SchemaMedicalEntity? guidelineSubject;

  /// Create a new instance of [SchemaMedicalGuideline]
  SchemaMedicalGuideline({
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
    this.evidenceLevel,
    this.evidenceOrigin,
    this.guidelineDate,
    this.guidelineSubject,
  });

  /// Serialize [SchemaMedicalGuideline] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalGuideline',
        'evidenceLevel':
            convertToJsonLd(evidenceLevel, [SchemaMedicalEvidenceLevel]),
        'evidenceOrigin': convertToJsonLd(evidenceOrigin, [String]),
        'guidelineDate': convertToJsonLd(guidelineDate, [String]),
        'guidelineSubject':
            convertToJsonLd(guidelineSubject, [SchemaMedicalEntity]),
      });
}
