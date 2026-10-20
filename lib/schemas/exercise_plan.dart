// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/physical_activity.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/energy.dart';
import 'package:schema_org/schemas/anatomical_structure.dart';
import 'package:schema_org/schemas/anatomical_system.dart';
import 'package:schema_org/schemas/superficial_anatomy.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/medical_code.dart';
import 'package:schema_org/schemas/medical_guideline.dart';
import 'package:schema_org/schemas/drug_legal_status.dart';
import 'package:schema_org/schemas/medical_enumeration.dart';
import 'package:schema_org/schemas/medicine_system.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/medical_specialty.dart';
import 'package:schema_org/schemas/medical_study.dart';

/// Fitness-related activity designed for a specific health-related purpose,
/// including defined exercise routines as well as activity prescribed by a
/// clinician.
/// See https://schema.org/ExercisePlan
class SchemaExercisePlan extends SchemaCreativeWork
    implements SchemaPhysicalActivity {
  /// Length of time to engage in the activity.
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  dynamic activityDuration;

  /// How often one should engage in the activity.
  ///
  /// Supported types: [SchemaQuantitativeValue], [String]
  dynamic activityFrequency;

  /// Any additional component of the exercise prescription that may need to be
  /// articulated to the patient. This may include the order of exercises, the
  /// number of repetitions of movement, quantitative distance, progressions
  /// over time, etc.
  String? additionalVariable;

  /// Type(s) of exercise or activity, such as strength training, flexibility
  /// training, aerobics, cardiac rehabilitation, etc.
  String? exerciseType;

  /// Quantitative measure gauging the degree of force involved in the
  /// exercise, for example, heartbeats per minute. May include the velocity of
  /// the movement.
  ///
  /// Supported types: [SchemaQuantitativeValue], [String]
  dynamic intensity;

  /// Number of times one should repeat the activity.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic repetitions;

  /// How often one should break from the activity.
  ///
  /// Supported types: [SchemaQuantitativeValue], [String]
  dynamic restPeriods;

  /// Quantitative measure of the physiologic output of the exercise; also
  /// referred to as energy expenditure.
  ///
  /// Supported types: [SchemaEnergy], [SchemaQuantitativeValue]
  dynamic workload;

  /// The anatomy of the underlying organ system or structures associated with
  /// this entity.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaAnatomicalSystem],
  /// [SchemaSuperficialAnatomy]
  @override
  dynamic associatedAnatomy;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [SchemaThing]
  @override
  dynamic category;

  /// The characteristics of associated patients, such as age, gender, race
  /// etc.
  @override
  String? epidemiology;

  /// Changes in the normal mechanical, physical, and biochemical functions
  /// that are associated with this activity or condition.
  @override
  String? pathophysiology;

  /// A medical code for the entity, taken from a controlled vocabulary or
  /// ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc.
  @override
  SchemaMedicalCode? code;

  /// A medical guideline related to this entity.
  @override
  SchemaMedicalGuideline? guideline;

  /// The drug or supplement's legal status, including any controlled substance
  /// schedules that apply.
  ///
  /// Supported types: [SchemaDrugLegalStatus], [SchemaMedicalEnumeration],
  /// [String]
  @override
  dynamic legalStatus;

  /// The system of medicine that includes this MedicalEntity, for example
  /// 'evidence-based', 'homeopathic', 'chiropractic', etc.
  @override
  SchemaMedicineSystem? medicineSystem;

  /// If applicable, the organization that officially recognizes this entity as
  /// part of its endorsed system of medicine.
  @override
  SchemaOrganization? recognizingAuthority;

  /// If applicable, a medical specialty in which this entity is relevant.
  @override
  SchemaMedicalSpecialty? relevantSpecialty;

  /// A medical study or trial related to this entity.
  @override
  SchemaMedicalStudy? study;

  /// Create a new instance of [SchemaExercisePlan]
  SchemaExercisePlan({
    super.about,
    super.abstract,
    super.accessMode,
    super.accessModeSufficient,
    super.accessibilityAPI,
    super.accessibilityControl,
    super.accessibilityFeature,
    super.accessibilityHazard,
    super.accessibilitySummary,
    super.accountablePerson,
    super.acquireLicensePage,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.alternativeHeadline,
    super.archivedAt,
    super.assesses,
    super.associatedMedia,
    super.audience,
    super.audio,
    super.author,
    super.award,
    super.awards,
    super.character,
    super.citation,
    super.comment,
    super.commentCount,
    super.conditionsOfAccess,
    super.contentLocation,
    super.contentRating,
    super.contentReferenceTime,
    super.contributor,
    super.copyrightHolder,
    super.copyrightNotice,
    super.copyrightYear,
    super.correction,
    super.countryOfOrigin,
    super.creativeWorkStatus,
    super.creator,
    super.creditText,
    super.dateCreated,
    super.dateModified,
    super.datePublished,
    super.description,
    super.digitalSourceType,
    super.disambiguatingDescription,
    super.discussionUrl,
    super.displayLocation,
    super.editEIDR,
    super.editor,
    super.educationalAlignment,
    super.educationalLevel,
    super.educationalUse,
    super.encoding,
    super.encodingFormat,
    super.encodings,
    super.exampleOfWork,
    super.expires,
    super.fileFormat,
    super.funder,
    super.funding,
    super.genre,
    super.hasPart,
    super.headline,
    super.identifier,
    super.image,
    super.inLanguage,
    super.interactionStatistic,
    super.interactivityType,
    super.interpretedAsClaim,
    super.isAccessibleForFree,
    super.isBasedOn,
    super.isBasedOnUrl,
    super.isFamilyFriendly,
    super.isPartOf,
    super.keywords,
    super.learningResourceType,
    super.license,
    super.locationCreated,
    super.mainEntity,
    super.mainEntityOfPage,
    super.maintainer,
    super.material,
    super.materialExtent,
    super.mentions,
    super.name,
    super.offers,
    super.owner,
    super.pattern,
    super.position,
    super.potentialAction,
    super.producer,
    super.provider,
    super.publication,
    super.publisher,
    super.publisherImprint,
    super.publishingPrinciples,
    super.recordedAt,
    super.releasedEvent,
    super.review,
    super.reviews,
    super.sameAs,
    super.schemaVersion,
    super.sdDatePublished,
    super.sdLicense,
    super.sdPublisher,
    super.size,
    super.sourceOrganization,
    super.spatial,
    super.spatialCoverage,
    super.sponsor,
    super.subjectOf,
    super.teaches,
    super.temporal,
    super.temporalCoverage,
    super.text,
    super.thumbnail,
    super.thumbnailUrl,
    super.timeRequired,
    super.translationOfWork,
    super.translator,
    super.typicalAgeRange,
    super.url,
    super.usageInfo,
    super.version,
    super.video,
    super.wordCount,
    super.workExample,
    super.workTranslation,
    this.activityDuration,
    this.activityFrequency,
    this.additionalVariable,
    this.exerciseType,
    this.intensity,
    this.repetitions,
    this.restPeriods,
    this.workload,
    this.associatedAnatomy,
    this.category,
    this.epidemiology,
    this.pathophysiology,
    this.code,
    this.guideline,
    this.legalStatus,
    this.medicineSystem,
    this.recognizingAuthority,
    this.relevantSpecialty,
    this.study,
  });

  /// Serialize [SchemaExercisePlan] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ExercisePlan',
        'activityDuration': convertToJsonLd(activityDuration,
            (v) => v is SchemaDuration || v is SchemaQuantitativeValue),
        'activityFrequency': convertToJsonLd(activityFrequency,
            (v) => v is SchemaQuantitativeValue || v is String),
        'additionalVariable': convertToJsonLd(additionalVariable),
        'exerciseType': convertToJsonLd(exerciseType),
        'intensity': convertToJsonLd(
            intensity, (v) => v is SchemaQuantitativeValue || v is String),
        'repetitions': convertToJsonLd(
            repetitions, (v) => v is SchemaQuantitativeValue || v is num),
        'restPeriods': convertToJsonLd(
            restPeriods, (v) => v is SchemaQuantitativeValue || v is String),
        'workload': convertToJsonLd(
            workload, (v) => v is SchemaEnergy || v is SchemaQuantitativeValue),
        'associatedAnatomy': convertToJsonLd(
            associatedAnatomy,
            (v) =>
                v is SchemaAnatomicalStructure ||
                v is SchemaAnatomicalSystem ||
                v is SchemaSuperficialAnatomy),
        'category': convertToJsonLd(
            category,
            (v) =>
                v is SchemaCategoryCode ||
                v is SchemaPhysicalActivityCategory ||
                v is String ||
                v is SchemaThing),
        'epidemiology': convertToJsonLd(epidemiology),
        'pathophysiology': convertToJsonLd(pathophysiology),
        'code': convertToJsonLd(code),
        'guideline': convertToJsonLd(guideline),
        'legalStatus': convertToJsonLd(
            legalStatus,
            (v) =>
                v is SchemaDrugLegalStatus ||
                v is SchemaMedicalEnumeration ||
                v is String),
        'medicineSystem': convertToJsonLd(medicineSystem),
        'recognizingAuthority': convertToJsonLd(recognizingAuthority),
        'relevantSpecialty': convertToJsonLd(relevantSpecialty),
        'study': convertToJsonLd(study),
      });
}
