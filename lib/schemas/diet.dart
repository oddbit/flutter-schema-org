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
import 'package:schema_org/schemas/lifestyle_modification.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/medical_code.dart';
import 'package:schema_org/schemas/medical_guideline.dart';
import 'package:schema_org/schemas/drug_legal_status.dart';
import 'package:schema_org/schemas/medical_enumeration.dart';
import 'package:schema_org/schemas/medicine_system.dart';
import 'package:schema_org/schemas/medical_specialty.dart';
import 'package:schema_org/schemas/medical_study.dart';

/// A strategy of regulating the intake of food to achieve or maintain a
/// specific health-related goal.
/// See https://schema.org/Diet
class SchemaDiet extends SchemaCreativeWork
    implements SchemaLifestyleModification {
  /// Nutritional information specific to the dietary plan. May include dietary
  /// recommendations on what foods to avoid, what foods to consume, and
  /// specific alterations/deviations from the USDA or other regulatory body's
  /// approved dietary guidelines.
  String? dietFeatures;

  /// People or organizations that endorse the plan.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic endorsers;

  /// Medical expert advice related to the plan.
  String? expertConsiderations;

  /// Specific physiologic benefits associated to the plan.
  String? physiologicalBenefits;

  /// Specific physiologic risks associated to the diet plan.
  String? risks;

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

  /// Create a new instance of [SchemaDiet]
  SchemaDiet({
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
    this.dietFeatures,
    this.endorsers,
    this.expertConsiderations,
    this.physiologicalBenefits,
    this.risks,
    this.code,
    this.guideline,
    this.legalStatus,
    this.medicineSystem,
    this.recognizingAuthority,
    this.relevantSpecialty,
    this.study,
  });

  /// Serialize [SchemaDiet] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Diet',
        'dietFeatures': convertToJsonLd(dietFeatures),
        'endorsers': convertToJsonLd(
            endorsers, (v) => v is SchemaOrganization || v is SchemaPerson),
        'expertConsiderations': convertToJsonLd(expertConsiderations),
        'physiologicalBenefits': convertToJsonLd(physiologicalBenefits),
        'risks': convertToJsonLd(risks),
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
