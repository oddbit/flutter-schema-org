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
import 'package:schema_org/schemas/learning_resource.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/alignment_object.dart';
import 'package:schema_org/schemas/educational_occupational_credential.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/course_instance.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/syllabus.dart';

/// A description of an educational course which may be offered as distinct
/// instances which take place at different times or take place at different
/// locations, or be offered through different media or modes of study. An
/// educational course is a sequence of one or more educational events and/or
/// creative works which aims to build knowledge, competence or ability of
/// learners.
/// See https://schema.org/Course
class SchemaCourse extends SchemaCreativeWork
    implements SchemaLearningResource {
  /// A language someone may use with or at the item, service or place. Please
  /// use one of the language codes from the [IETF BCP 47
  /// standard](http://tools.ietf.org/html/bcp47). See also [SchemainLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic availableLanguage;

  /// The identifier for the [SchemaCourse] used by the course [Schemaprovider]
  /// (e.g. CS101 or 6.001).
  String? courseCode;

  /// Requirements for taking the Course. May be completion of another
  /// [SchemaCourse] or a textual description like "permission of instructor".
  /// Requirements may be a pre-requisite competency, referenced using
  /// [SchemaAlignmentObject].
  ///
  /// Supported types: [SchemaAlignmentObject], [SchemaCourse], [String]
  dynamic coursePrerequisites;

  /// A description of the qualification, award, certificate, diploma or other
  /// educational credential awarded as a consequence of successful completion
  /// of this course or program.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic educationalCredentialAwarded;

  /// A financial aid type or program which students may use to pay for tuition
  /// or fees associated with the program.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic financialAidEligible;

  /// An offering of the course at a specific time and place or through
  /// specific media or mode of study or to a specific section of students.
  SchemaCourseInstance? hasCourseInstance;

  /// The number of credits or units awarded by a Course or required to
  /// complete an EducationalOccupationalProgram.
  ///
  /// Supported types: [SchemaStructuredValue], [int]
  dynamic numberOfCredits;

  /// A description of the qualification, award, certificate, diploma or other
  /// occupational credential awarded as a consequence of successful completion
  /// of this course or program.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic occupationalCredentialAwarded;

  /// Indicates (typically several) Syllabus entities that lay out what each
  /// section of the overall course will cover.
  SchemaSyllabus? syllabusSections;

  /// The total number of students that have enrolled in the history of the
  /// course.
  int? totalHistoricalEnrollment;

  /// Knowledge, skill, ability or personal attribute that must be demonstrated
  /// by a person or other entity in order to do something such as earn an
  /// Educational Occupational Credential or understand a LearningResource.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  @override
  dynamic competencyRequired;

  /// Create a new instance of [SchemaCourse]
  SchemaCourse({
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
    this.availableLanguage,
    this.courseCode,
    this.coursePrerequisites,
    this.educationalCredentialAwarded,
    this.financialAidEligible,
    this.hasCourseInstance,
    this.numberOfCredits,
    this.occupationalCredentialAwarded,
    this.syllabusSections,
    this.totalHistoricalEnrollment,
    this.competencyRequired,
  });

  /// Serialize [SchemaCourse] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Course',
        'availableLanguage': convertToJsonLd(
            availableLanguage, (v) => v is SchemaLanguage || v is String),
        'courseCode': convertToJsonLd(courseCode),
        'coursePrerequisites': convertToJsonLd(
            coursePrerequisites,
            (v) =>
                v is SchemaAlignmentObject || v is SchemaCourse || v is String),
        'educationalCredentialAwarded': convertToJsonLd(
            educationalCredentialAwarded,
            (v) => v is SchemaEducationalOccupationalCredential || v is String),
        'financialAidEligible': convertToJsonLd(
            financialAidEligible, (v) => v is SchemaDefinedTerm || v is String),
        'hasCourseInstance': convertToJsonLd(hasCourseInstance),
        'numberOfCredits': convertToJsonLd(
            numberOfCredits, (v) => v is SchemaStructuredValue || v is int),
        'occupationalCredentialAwarded': convertToJsonLd(
            occupationalCredentialAwarded,
            (v) => v is SchemaEducationalOccupationalCredential || v is String),
        'syllabusSections': convertToJsonLd(syllabusSections),
        'totalHistoricalEnrollment': convertToJsonLd(totalHistoricalEnrollment),
        'competencyRequired': convertToJsonLd(
            competencyRequired, (v) => v is SchemaDefinedTerm || v is String),
      });
}
