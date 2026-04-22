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
import 'package:schema_org/schemas/breadcrumb_list.dart';
import 'package:schema_org/schemas/web_page_element.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/speakable_specification.dart';
import 'package:schema_org/schemas/specialty.dart';

/// A web page. Every web page is implicitly assumed to be declared to be of
/// type WebPage, so the various properties about that webpage, such as
/// <code>breadcrumb</code> may be used. We recommend explicit declaration if
/// these properties are specified, but if they are found outside of an
/// itemscope, they will be assumed to be about the page.
/// See https://schema.org/WebPage
class SchemaWebPage extends SchemaCreativeWork {
  /// A set of links that can help a user understand and navigate a website
  /// hierarchy.
  ///
  /// Supported types: [SchemaBreadcrumbList], [String]
  dynamic breadcrumb;

  /// Date on which the content on this web page was last reviewed for accuracy
  /// and/or completeness.
  String? lastReviewed;

  /// Indicates if this web page element is the main subject of the page.
  SchemaWebPageElement? mainContentOfPage;

  /// Indicates the main image on the page.
  SchemaImageObject? primaryImageOfPage;

  /// A link related to this web page, for example to other related web pages.
  String? relatedLink;

  /// People or organizations that have reviewed the content on this web page
  /// for accuracy and/or completeness.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic reviewedBy;

  /// One of the more significant URLs on the page. Typically, these are the
  /// non-navigation links that are clicked on the most.
  String? significantLink;

  /// The most significant URLs on the page. Typically, these are the
  /// non-navigation links that are clicked on the most.
  @Deprecated('Use [significantLink]. See https://schema.org/significantLinks')
  String? significantLinks;

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

  /// One of the domain specialities to which this web page's content applies.
  SchemaSpecialty? specialty;

  /// Create a new instance of [SchemaWebPage]
  SchemaWebPage({
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
    this.breadcrumb,
    this.lastReviewed,
    this.mainContentOfPage,
    this.primaryImageOfPage,
    this.relatedLink,
    this.reviewedBy,
    this.significantLink,
    this.significantLinks,
    this.speakable,
    this.specialty,
  });

  /// Serialize [SchemaWebPage] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'WebPage',
        'breadcrumb':
            convertToJsonLd(breadcrumb, [SchemaBreadcrumbList, String]),
        'lastReviewed': convertToJsonLd(lastReviewed, [String]),
        'mainContentOfPage':
            convertToJsonLd(mainContentOfPage, [SchemaWebPageElement]),
        'primaryImageOfPage':
            convertToJsonLd(primaryImageOfPage, [SchemaImageObject]),
        'relatedLink': convertToJsonLd(relatedLink, [String]),
        'reviewedBy':
            convertToJsonLd(reviewedBy, [SchemaOrganization, SchemaPerson]),
        'significantLink': convertToJsonLd(significantLink, [String]),
        'significantLinks': convertToJsonLd(significantLinks, [String]),
        'speakable':
            convertToJsonLd(speakable, [SchemaSpeakableSpecification, String]),
        'specialty': convertToJsonLd(specialty, [SchemaSpecialty]),
      });
}
