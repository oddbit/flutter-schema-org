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

/// A SpecialAnnouncement combines a simple date-stamped textual information
/// update with contextualized Web links and other structured data. It
/// represents an information update made by a locally-oriented organization,
/// for example schools, pharmacies, healthcare providers, community groups,
/// police, local government.
///
/// For work in progress guidelines on Coronavirus-related markup see [this
/// doc](https://docs.google.com/document/d/14ikaGCKxo50rRM7nvKSlbUpjyIk2WMQd3IkB1lItlrM/edit#).
///
/// The motivating scenario for SpecialAnnouncement is the [Coronavirus
/// pandemic](https://en.wikipedia.org/wiki/2019%E2%80%9320_coronavirus_pandemic),
/// and the initial vocabulary is oriented to this urgent situation.
/// Schema.org expect to improve the markup iteratively as it is deployed and
/// as feedback emerges from use. In addition to our usual [Github
/// entry](https://github.com/schemaorg/schemaorg/issues/2490), feedback
/// comments can also be provided in [this
/// document](https://docs.google.com/document/d/1fpdFFxk8s87CWwACs53SGkYv3aafSxz_DTtOQxMrBJQ/edit#).
///
/// While this schema is designed to communicate urgent crisis-related
/// information, it is not the same as an emergency warning technology like
/// [CAP](https://en.wikipedia.org/wiki/Common_Alerting_Protocol), although
/// there may be overlaps. The intent is to cover the kinds of everyday
/// practical information being posted to existing websites during an
/// emergency situation.
///
/// Several kinds of information can be provided:
///
/// We encourage the provision of "name", "text", "datePosted", "expires" (if
/// appropriate), "category" and "url" as a simple baseline. It is important
/// to provide a value for "category" where possible, most ideally as a well
/// known URL from Wikipedia or Wikidata. In the case of the 2019-2020
/// Coronavirus pandemic, this should be
/// "https://en.wikipedia.org/w/index.php?title=2019-20\_coronavirus\_pandemic"
/// or "https://www.wikidata.org/wiki/Q81068910".
///
/// For many of the possible properties, values can either be simple links or
/// an inline description, depending on whether a summary is available. For a
/// link, provide just the URL of the appropriate page as the property's
/// value. For an inline description, use a [SchemaWebContent] type, and
/// provide the url as a property of that, alongside at least a simple
/// "[Schematext]" summary of the page. It is unlikely that a single
/// SpecialAnnouncement will need all of the possible properties
/// simultaneously.
///
/// We expect that in many cases the page referenced might contain more
/// specialized structured data, e.g. contact info, [SchemaopeningHours],
/// [SchemaEvent], [SchemaFAQPage] etc. By linking to those pages from a
/// [SchemaSpecialAnnouncement] you can help make it clearer that the events
/// are related to the situation (e.g. Coronavirus) indicated by the
/// [Schemacategory] property of the [SchemaSpecialAnnouncement].
///
/// Many [SchemaSpecialAnnouncement]s will relate to particular regions and
/// to identifiable local organizations. Use [SchemaspatialCoverage] for the
/// region, and [SchemaannouncementLocation] to indicate specific
/// [SchemaLocalBusiness]es and [SchemaCivicStructure]s. If the announcement
/// affects both a particular region and a specific location (for example, a
/// library closure that serves an entire region), use both
/// [SchemaspatialCoverage] and [SchemaannouncementLocation].
///
/// The [Schemaabout] property can be used to indicate entities that are the
/// focus of the announcement. We now recommend using [Schemaabout] only for
/// representing non-location entities (e.g. a [SchemaCourse] or a
/// [SchemaRadioStation]). For places, use [SchemaannouncementLocation] and
/// [SchemaspatialCoverage]. Consumers of this markup should be aware that
/// the initial design encouraged the use of [Schemaabout] for locations too.
///
/// The basic content of [SchemaSpecialAnnouncement] is similar to that of an
/// [RSS](https://en.wikipedia.org/wiki/RSS) or
/// [Atom](https://en.wikipedia.org/wiki/Atom_(Web_standard)) feed. For
/// publishers without such feeds, basic feed-like information can be shared
/// by posting [SchemaSpecialAnnouncement] updates in a page, e.g. using
/// JSON-LD. For sites with Atom/RSS functionality, you can point to a feed
/// with the [SchemawebFeed] property. This can be a simple URL, or an inline
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
        'announcementLocation': convertToJsonLd(announcementLocation,
            (v) => v is SchemaCivicStructure || v is SchemaLocalBusiness),
        'category': convertToJsonLd(
            category,
            (v) =>
                v is SchemaCategoryCode ||
                v is SchemaPhysicalActivityCategory ||
                v is String ||
                v is SchemaThing),
        'datePosted': convertToJsonLd(datePosted),
        'diseasePreventionInfo': convertToJsonLd(
            diseasePreventionInfo, (v) => v is String || v is SchemaWebContent),
        'diseaseSpreadStatistics': convertToJsonLd(
            diseaseSpreadStatistics,
            (v) =>
                v is SchemaDataset ||
                v is SchemaObservation ||
                v is String ||
                v is SchemaWebContent),
        'gettingTestedInfo': convertToJsonLd(
            gettingTestedInfo, (v) => v is String || v is SchemaWebContent),
        'governmentBenefitsInfo': convertToJsonLd(governmentBenefitsInfo),
        'newsUpdatesAndGuidelines': convertToJsonLd(newsUpdatesAndGuidelines,
            (v) => v is String || v is SchemaWebContent),
        'publicTransportClosuresInfo': convertToJsonLd(
            publicTransportClosuresInfo,
            (v) => v is String || v is SchemaWebContent),
        'quarantineGuidelines': convertToJsonLd(
            quarantineGuidelines, (v) => v is String || v is SchemaWebContent),
        'schoolClosuresInfo': convertToJsonLd(
            schoolClosuresInfo, (v) => v is String || v is SchemaWebContent),
        'travelBans': convertToJsonLd(
            travelBans, (v) => v is String || v is SchemaWebContent),
        'webFeed':
            convertToJsonLd(webFeed, (v) => v is SchemaDataFeed || v is String),
      });
}
