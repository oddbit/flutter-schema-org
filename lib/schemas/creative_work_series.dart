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
import 'package:schema_org/schemas/series.dart';

/// A CreativeWorkSeries in schema.org is a group of related items, typically
/// but not necessarily of the same kind. CreativeWorkSeries are usually
/// organized into some order, often chronological. Unlike [SchemaItemList]
/// which is a general purpose data structure for lists of things, the
/// emphasis with CreativeWorkSeries is on published materials (written e.g.
/// books and periodicals, or media such as TV, radio and games).\n\nSpecific
/// subtypes are available for describing [SchemaTVSeries],
/// [SchemaRadioSeries], [SchemaMovieSeries], [SchemaBookSeries],
/// [SchemaPeriodical] and [SchemaVideoGameSeries]. In each case, the
/// [SchemahasPart] / [SchemaisPartOf] properties can be used to relate the
/// CreativeWorkSeries to its parts. The general CreativeWorkSeries type
/// serves largely just to organize these more specific and practical
/// subtypes.\n\nIt is common for properties applicable to an item from the
/// series to be usefully applied to the containing group. Schema.org
/// attempts to anticipate some of these cases, but publishers should be free
/// to apply properties of the series parts to the series as a whole wherever
/// they seem appropriate.
/// See https://schema.org/CreativeWorkSeries
class SchemaCreativeWorkSeries extends SchemaCreativeWork
    implements SchemaSeries {
  /// //en.wikipedia.org/wiki/ISO_8601)).
  String? endDate;

  /// The International Standard Serial Number (ISSN) that identifies this
  /// serial publication. You can repeat this property to identify different
  /// formats of, or the linking ISSN (ISSN-L) for, this serial publication.
  String? issn;

  /// //en.wikipedia.org/wiki/ISO_8601)).
  String? startDate;

  /// Create a new instance of [SchemaCreativeWorkSeries]
  SchemaCreativeWorkSeries({
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
    this.endDate,
    this.issn,
    this.startDate,
  });

  /// Serialize [SchemaCreativeWorkSeries] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CreativeWorkSeries',
        'endDate': convertToJsonLd(endDate, [String]),
        'issn': convertToJsonLd(issn, [String]),
        'startDate': convertToJsonLd(startDate, [String]),
      });
}
