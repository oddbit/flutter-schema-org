// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/article.dart';

/// A NewsArticle is an article whose content reports news, or provides
/// background context and supporting materials for understanding the news.
///
/// A more detailed overview of [schema.org News markup](/docs/news.html) is
/// also available.
/// See https://schema.org/NewsArticle
class SchemaNewsArticle extends SchemaArticle {
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
  String? dateline;

  /// The number of the column in which the NewsArticle appears in the print
  /// edition.
  String? printColumn;

  /// The edition of the print product in which the NewsArticle appears.
  String? printEdition;

  /// If this NewsArticle appears in print, this field indicates the name of
  /// the page on which the article is found. Please note that this field is
  /// intended for the exact page name (e.g. A5, B18).
  String? printPage;

  /// If this NewsArticle appears in print, this field indicates the print
  /// section in which the article appeared.
  String? printSection;

  /// Create a new instance of [SchemaNewsArticle]
  SchemaNewsArticle({
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
    super.articleBody,
    super.articleSection,
    super.assesses,
    super.associatedMedia,
    super.audience,
    super.audio,
    super.author,
    super.award,
    super.awards,
    super.backstory,
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
    super.pageEnd,
    super.pageStart,
    super.pagination,
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
    super.speakable,
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
  });

  /// Serialize [SchemaNewsArticle] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'NewsArticle',
        'dateline': convertToJsonLd(dateline),
        'printColumn': convertToJsonLd(printColumn),
        'printEdition': convertToJsonLd(printEdition),
        'printPage': convertToJsonLd(printPage),
        'printSection': convertToJsonLd(printSection),
      });
}
