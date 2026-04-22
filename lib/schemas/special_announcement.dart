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
import 'package:schema_org/schemas/civic_structure.dart';
import 'package:schema_org/schemas/local_business.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/web_content.dart';
import 'package:schema_org/schemas/dataset.dart';
import 'package:schema_org/schemas/observation.dart';
import 'package:schema_org/schemas/government_service.dart';
import 'package:schema_org/schemas/data_feed.dart';

/// //en.wikipedia.org/wiki/Atom_(Web_standard)) feed. For publishers without
/// such feeds, basic feed-like information can be shared by posting
/// [SchemaSpecialAnnouncement] updates in a page, e.g. using JSON-LD. For
/// sites with Atom/RSS functionality, you can point to a feed with the
/// [SchemawebFeed] property. This can be a simple URL, or an inline
/// [SchemaDataFeed] object, with [SchemaencodingFormat] providing media type
/// information, e.g. "application/rss+xml" or "application/atom+xml".
/// See https://schema.org/SpecialAnnouncement
class SchemaSpecialAnnouncement extends SchemaCreativeWork {
  /// Indicates a specific [SchemaCivicStructure] or [SchemaLocalBusiness]
  /// associated with the SpecialAnnouncement. For example, a specific testing
  /// facility or business with special opening hours. For a larger geographic
  /// region like a quarantine of an entire region, use
  /// [SchemaspatialCoverage].
  ///
  /// Supported types: [SchemaCivicStructure], [SchemaLocalBusiness]
  dynamic announcementLocation;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [SchemaThing]
  dynamic category;

  /// Publication date of an online listing.
  String? datePosted;

  /// Information about disease prevention.
  ///
  /// Supported types: [String], [SchemaWebContent]
  dynamic diseasePreventionInfo;

  /// Statistical information about the spread of a disease, either as
  /// [SchemaWebContent], or described directly as a [SchemaDataset], or the
  /// specific [SchemaObservation]s in the dataset. When a [SchemaWebContent]
  /// URL is provided, the page indicated might also contain more such markup.
  ///
  /// Supported types: [SchemaDataset], [SchemaObservation], [String],
  /// [SchemaWebContent]
  dynamic diseaseSpreadStatistics;

  /// Information about getting tested (for a [SchemaMedicalCondition]), e.g.
  /// in the context of a pandemic.
  ///
  /// Supported types: [String], [SchemaWebContent]
  dynamic gettingTestedInfo;

  /// governmentBenefitsInfo provides information about government benefits
  /// associated with a SpecialAnnouncement.
  SchemaGovernmentService? governmentBenefitsInfo;

  /// Indicates a page with news updates and guidelines. This could often be
  /// (but is not required to be) the main page containing
  /// [SchemaSpecialAnnouncement] markup on a site.
  ///
  /// Supported types: [String], [SchemaWebContent]
  dynamic newsUpdatesAndGuidelines;

  /// Information about public transport closures.
  ///
  /// Supported types: [String], [SchemaWebContent]
  dynamic publicTransportClosuresInfo;

  /// Guidelines about quarantine rules, e.g. in the context of a pandemic.
  ///
  /// Supported types: [String], [SchemaWebContent]
  dynamic quarantineGuidelines;

  /// Information about school closures.
  ///
  /// Supported types: [String], [SchemaWebContent]
  dynamic schoolClosuresInfo;

  /// Information about travel bans, e.g. in the context of a pandemic.
  ///
  /// Supported types: [String], [SchemaWebContent]
  dynamic travelBans;

  /// The URL for a feed, e.g. associated with a podcast series, blog, or
  /// series of date-stamped updates. This is usually RSS or Atom.
  ///
  /// Supported types: [SchemaDataFeed], [String]
  dynamic webFeed;

  /// Create a new instance of [SchemaSpecialAnnouncement]
  SchemaSpecialAnnouncement({
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
    this.announcementLocation,
    this.category,
    this.datePosted,
    this.diseasePreventionInfo,
    this.diseaseSpreadStatistics,
    this.gettingTestedInfo,
    this.governmentBenefitsInfo,
    this.newsUpdatesAndGuidelines,
    this.publicTransportClosuresInfo,
    this.quarantineGuidelines,
    this.schoolClosuresInfo,
    this.travelBans,
    this.webFeed,
  });

  /// Serialize [SchemaSpecialAnnouncement] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SpecialAnnouncement',
        'announcementLocation': convertToJsonLd(
            announcementLocation, [SchemaCivicStructure, SchemaLocalBusiness]),
        'category': convertToJsonLd(category, [
          SchemaCategoryCode,
          SchemaPhysicalActivityCategory,
          String,
          SchemaThing
        ]),
        'datePosted': convertToJsonLd(datePosted, [String]),
        'diseasePreventionInfo':
            convertToJsonLd(diseasePreventionInfo, [String, SchemaWebContent]),
        'diseaseSpreadStatistics': convertToJsonLd(diseaseSpreadStatistics,
            [SchemaDataset, SchemaObservation, String, SchemaWebContent]),
        'gettingTestedInfo':
            convertToJsonLd(gettingTestedInfo, [String, SchemaWebContent]),
        'governmentBenefitsInfo':
            convertToJsonLd(governmentBenefitsInfo, [SchemaGovernmentService]),
        'newsUpdatesAndGuidelines': convertToJsonLd(
            newsUpdatesAndGuidelines, [String, SchemaWebContent]),
        'publicTransportClosuresInfo': convertToJsonLd(
            publicTransportClosuresInfo, [String, SchemaWebContent]),
        'quarantineGuidelines':
            convertToJsonLd(quarantineGuidelines, [String, SchemaWebContent]),
        'schoolClosuresInfo':
            convertToJsonLd(schoolClosuresInfo, [String, SchemaWebContent]),
        'travelBans': convertToJsonLd(travelBans, [String, SchemaWebContent]),
        'webFeed': convertToJsonLd(webFeed, [SchemaDataFeed, String]),
      });
}
