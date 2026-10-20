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
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/event_status_type.dart';
import 'package:schema_org/schemas/medical_study_status.dart';
import 'package:schema_org/schemas/administrative_area.dart';

/// A medical study is an umbrella type covering all kinds of research
/// studies relating to human medicine or health, including observational
/// studies and interventional trials and registries, randomized, controlled
/// or not. When the specific type of study is known, use one of the
/// extensions of this type, such as MedicalTrial or
/// MedicalObservationalStudy. Also, note that this type should be used to
/// mark up data that describes the study itself; to tag an article that
/// publishes the results of a study, use MedicalScholarlyArticle. Note: use
/// the code property of MedicalEntity to store study IDs, e.g.
/// clinicaltrials.gov ID.
/// See https://schema.org/MedicalStudy
class SchemaMedicalStudy extends SchemaMedicalEntity {
  /// Specifying the health condition(s) of a patient, medical study, or other
  /// target audience.
  SchemaMedicalCondition? healthCondition;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

  /// The status of the study (enumerated).
  ///
  /// Supported types: [SchemaEventStatusType], [SchemaMedicalStudyStatus],
  /// [String]
  dynamic status;

  /// The location in which the study is taking/took place.
  SchemaAdministrativeArea? studyLocation;

  /// A subject of the study, i.e. one of the medical conditions, therapies,
  /// devices, drugs, etc. investigated by the study.
  SchemaMedicalEntity? studySubject;

  /// Create a new instance of [SchemaMedicalStudy]
  SchemaMedicalStudy({
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
    this.healthCondition,
    this.sponsor,
    this.status,
    this.studyLocation,
    this.studySubject,
  });

  /// Serialize [SchemaMedicalStudy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalStudy',
        'healthCondition': convertToJsonLd(healthCondition),
        'sponsor': convertToJsonLd(
            sponsor, (v) => v is SchemaOrganization || v is SchemaPerson),
        'status': convertToJsonLd(
            status,
            (v) =>
                v is SchemaEventStatusType ||
                v is SchemaMedicalStudyStatus ||
                v is String),
        'studyLocation': convertToJsonLd(studyLocation),
        'studySubject': convertToJsonLd(studySubject),
      });
}
