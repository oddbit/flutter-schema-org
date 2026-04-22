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
import 'package:schema_org/schemas/speakable_specification.dart';

///
/// //blog.schema.org/2014/09/02/schema-org-support-for-bibliographic-relationships-and-periodicals/).
/// See https://schema.org/Article
class SchemaArticle extends SchemaCreativeWork {
  /// The actual body of the article.
  String? articleBody;

  /// Articles may belong to one or more 'sections' in a magazine or newspaper,
  /// such as Sports, Lifestyle, etc.
  String? articleSection;

  /// For an [SchemaArticle], typically a [SchemaNewsArticle], the backstory
  /// property provides a textual summary giving a brief explanation of why and
  /// how an article was created. In a journalistic setting this could include
  /// information about reporting process, methods, interviews, data sources,
  /// etc.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic backstory;

  /// The page on which the work ends; for example "138" or "xvi".
  ///
  /// Supported types: [String], [int]
  dynamic pageEnd;

  /// The page on which the work starts; for example "135" or "xiii".
  ///
  /// Supported types: [String], [int]
  dynamic pageStart;

  /// Any description of pages that is not separated into pageStart and
  /// pageEnd; for example, "1-6, 9, 55" or "10-12, 46-49".
  String? pagination;

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
  dynamic speakable;

  /// Create a new instance of [SchemaArticle]
  SchemaArticle({
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
    this.articleBody,
    this.articleSection,
    this.backstory,
    this.pageEnd,
    this.pageStart,
    this.pagination,
    this.speakable,
  });

  /// Serialize [SchemaArticle] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Article',
        'articleBody': convertToJsonLd(articleBody, [String]),
        'articleSection': convertToJsonLd(articleSection, [String]),
        'backstory': convertToJsonLd(backstory, [SchemaCreativeWork, String]),
        'pageEnd': convertToJsonLd(pageEnd, [String, int]),
        'pageStart': convertToJsonLd(pageStart, [String, int]),
        'pagination': convertToJsonLd(pagination, [String]),
        'speakable':
            convertToJsonLd(speakable, [SchemaSpeakableSpecification, String]),
      });
}
