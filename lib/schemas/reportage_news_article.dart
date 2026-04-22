// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/news_article.dart';

/// The [SchemaReportageNewsArticle] type is a subtype of [SchemaNewsArticle]
/// representing news articles which are the result of journalistic news
/// reporting conventions.
///
/// In practice many news publishers produce a wide variety of article types,
/// many of which might be considered a [SchemaNewsArticle] but not a
/// [SchemaReportageNewsArticle]. For example, opinion pieces, reviews,
/// analysis, sponsored or satirical articles, or articles that combine
/// several of these elements.
///
/// The [SchemaReportageNewsArticle] type is based on a stricter ideal for
/// "news" as a work of journalism, with articles based on factual
/// information either observed or verified by the author, or reported and
/// verified from knowledgeable sources. This often includes perspectives
/// from multiple viewpoints on a particular issue (distinguishing news
/// reports from public relations or propaganda). News reports in the
/// [SchemaReportageNewsArticle] sense de-emphasize the opinion of the
/// author, with commentary and value judgements typically expressed
/// elsewhere.
///
/// A [SchemaReportageNewsArticle] which goes deeper into analysis can also
/// be marked with an additional type of [SchemaAnalysisNewsArticle].
/// See https://schema.org/ReportageNewsArticle
class SchemaReportageNewsArticle extends SchemaNewsArticle {
  /// Create a new instance of [SchemaReportageNewsArticle]
  SchemaReportageNewsArticle({
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
    super.dateline,
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
    super.printColumn,
    super.printEdition,
    super.printPage,
    super.printSection,
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
  });

  /// Serialize [SchemaReportageNewsArticle] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ReportageNewsArticle',
      });
}
