// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/critic_review.dart';
import 'package:schema_org/schemas/news_article.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/speakable_specification.dart';

/// A [SchemaNewsArticle] and [SchemaCriticReview] providing a professional
/// critic's assessment of a service, product, performance, or artistic or
/// literary work.
/// See https://schema.org/ReviewNewsArticle
class SchemaReviewNewsArticle extends SchemaCriticReview
    implements SchemaNewsArticle {
  /// A [dateline](https://en.wikipedia.org/wiki/Dateline) is a brief piece of
  /// text included in news articles that describes where and when the story
  /// was written or filed though the date is often omitted. Sometimes only a
  /// placename is provided.
  ///
  /// Structured representations of dateline-related information can also be
  /// expressed more explicitly using [SchemalocationCreated] (which represents
  /// where a work was created, e.g. where a news report was written). For
  /// location depicted or described in the content, use
  /// [SchemacontentLocation].
  ///
  /// Dateline summaries are oriented more towards human readers than towards
  /// automated processing, and can vary substantially. Some examples: "BEIRUT,
  /// Lebanon, June 2.", "Paris, France", "December 19, 2017 11:43AM Reporting
  /// from Washington", "Beijing/Moscow", "QUEZON CITY, Philippines".
  @override
  String? dateline;

  /// The number of the column in which the NewsArticle appears in the print
  /// edition.
  @override
  String? printColumn;

  /// The edition of the print product in which the NewsArticle appears.
  @override
  String? printEdition;

  /// If this NewsArticle appears in print, this field indicates the name of
  /// the page on which the article is found. Please note that this field is
  /// intended for the exact page name (e.g. A5, B18).
  @override
  String? printPage;

  /// If this NewsArticle appears in print, this field indicates the print
  /// section in which the article appeared.
  @override
  String? printSection;

  /// The actual body of the article.
  @override
  String? articleBody;

  /// Articles may belong to one or more 'sections' in a magazine or newspaper,
  /// such as Sports, Lifestyle, etc.
  @override
  String? articleSection;

  /// For an [SchemaArticle], typically a [SchemaNewsArticle], the backstory
  /// property provides a textual summary giving a brief explanation of why and
  /// how an article was created. In a journalistic setting this could include
  /// information about reporting process, methods, interviews, data sources,
  /// etc.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  @override
  dynamic backstory;

  /// The page on which the work ends; for example "138" or "xvi".
  ///
  /// Supported types: [String], [int]
  @override
  dynamic pageEnd;

  /// The page on which the work starts; for example "135" or "xiii".
  ///
  /// Supported types: [String], [int]
  @override
  dynamic pageStart;

  /// Any description of pages that is not separated into pageStart and
  /// pageEnd; for example, "1-6, 9, 55" or "10-12, 46-49".
  @override
  String? pagination;

  /// Indicates sections of a Web page that are particularly 'speakable' in the
  /// sense of being highlighted as being especially appropriate for
  /// text-to-speech conversion. Other sections of a page may also be usefully
  /// spoken in particular circumstances; the 'speakable' property serves to
  /// indicate the parts most likely to be generally useful for speech.
  ///
  /// The *speakable* property can be repeated an arbitrary number of times,
  /// with three kinds of possible 'content-locator' values:
  ///
  /// 1.) *id-value* URL references - uses *id-value* of an element in the page
  /// being annotated. The simplest use of *speakable* has (potentially
  /// relative) URL values, referencing identified sections of the document
  /// concerned.
  ///
  /// 2.) CSS Selectors - addresses content in the annotated page, e.g. via
  /// class attribute. Use the [SchemacssSelector] property.
  ///
  /// 3.) XPaths - addresses content via XPaths (assuming an XML view of the
  /// content). Use the [Schemaxpath] property.
  ///
  /// For more sophisticated markup of speakable sections beyond simple ID
  /// references, either CSS selectors or XPath expressions to pick out
  /// document section(s) as speakable. For this we define a supporting type,
  /// [SchemaSpeakableSpecification] which is defined to be a possible value of
  /// the *speakable* property.
  ///
  /// Supported types: [SchemaSpeakableSpecification], [String]
  @override
  dynamic speakable;

  /// Create a new instance of [SchemaReviewNewsArticle]
  SchemaReviewNewsArticle({
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
    super.associatedClaimReview,
    super.associatedMedia,
    super.associatedMediaReview,
    super.associatedReview,
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
    super.itemReviewed,
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
    super.negativeNotes,
    super.offers,
    super.owner,
    super.pattern,
    super.position,
    super.positiveNotes,
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
    super.reviewAspect,
    super.reviewBody,
    super.reviewRating,
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
    this.dateline,
    this.printColumn,
    this.printEdition,
    this.printPage,
    this.printSection,
    this.articleBody,
    this.articleSection,
    this.backstory,
    this.pageEnd,
    this.pageStart,
    this.pagination,
    this.speakable,
  });

  /// Serialize [SchemaReviewNewsArticle] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ReviewNewsArticle',
        'dateline': convertToJsonLd(dateline),
        'printColumn': convertToJsonLd(printColumn),
        'printEdition': convertToJsonLd(printEdition),
        'printPage': convertToJsonLd(printPage),
        'printSection': convertToJsonLd(printSection),
        'articleBody': convertToJsonLd(articleBody),
        'articleSection': convertToJsonLd(articleSection),
        'backstory': convertToJsonLd(
            backstory, (v) => v is SchemaCreativeWork || v is String),
        'pageEnd': convertToJsonLd(pageEnd, (v) => v is String || v is int),
        'pageStart': convertToJsonLd(pageStart, (v) => v is String || v is int),
        'pagination': convertToJsonLd(pagination),
        'speakable': convertToJsonLd(
            speakable, (v) => v is SchemaSpeakableSpecification || v is String),
      });
}
