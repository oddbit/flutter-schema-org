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
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/item_list.dart';
import 'package:schema_org/schemas/list_item.dart';
import 'package:schema_org/schemas/web_content.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/rating.dart';

/// A review of an item - for example, of a restaurant, movie, or store.
/// See https://schema.org/Review
class SchemaReview extends SchemaCreativeWork {
  /// An associated [SchemaClaimReview], related by specific common content,
  /// topic or claim. The expectation is that this property would be most
  /// typically used in cases where a single activity is conducting both claim
  /// reviews and media reviews, in which case [SchemarelatedMediaReview] would
  /// commonly be used on a [SchemaClaimReview], while
  /// [SchemaassociatedClaimReview] would be used on [SchemaMediaReview].
  SchemaReview? associatedClaimReview;

  /// An associated [SchemaMediaReview], related by specific common content,
  /// topic or claim. The expectation is that this property would be most
  /// typically used in cases where a single activity is conducting both claim
  /// reviews and media reviews, in which case [SchemarelatedMediaReview] would
  /// commonly be used on a [SchemaClaimReview], while
  /// [SchemaassociatedClaimReview] would be used on [SchemaMediaReview].
  SchemaReview? associatedMediaReview;

  /// An associated [SchemaReview].
  SchemaReview? associatedReview;

  /// The item that is being reviewed/rated.
  SchemaThing? itemReviewed;

  /// Provides negative considerations regarding something, most typically in
  /// pro/con lists for reviews (alongside [SchemapositiveNotes]). For symmetry
  ///
  /// In the case of a [SchemaReview], the property describes the
  /// [SchemaitemReviewed] from the perspective of the review; in the case of a
  /// [SchemaProduct], the product itself is being described. Since product
  /// descriptions tend to emphasise positive claims, it may be relatively
  /// unusual to find [SchemanegativeNotes] used in this way. Nevertheless for
  /// the sake of symmetry, [SchemanegativeNotes] can be used on
  /// [SchemaProduct].
  ///
  /// The property values can be expressed either as unstructured text
  /// (repeated as necessary), or if ordered, as a list (in which case the most
  /// negative is at the beginning of the list).
  ///
  /// Supported types: [SchemaItemList], [SchemaListItem], [String],
  /// [SchemaWebContent]
  dynamic negativeNotes;

  /// Provides positive considerations regarding something, for example product
  /// highlights or (alongside [SchemanegativeNotes]) pro/con lists for
  /// reviews.
  ///
  /// In the case of a [SchemaReview], the property describes the
  /// [SchemaitemReviewed] from the perspective of the review; in the case of a
  /// [SchemaProduct], the product itself is being described.
  ///
  /// The property values can be expressed either as unstructured text
  /// (repeated as necessary), or if ordered, as a list (in which case the most
  /// positive is at the beginning of the list).
  ///
  /// Supported types: [SchemaItemList], [SchemaListItem], [String],
  /// [SchemaWebContent]
  dynamic positiveNotes;

  /// This Review or Rating is relevant to this part or facet of the
  /// itemReviewed.
  ///
  /// Supported types: [String], [SchemaStructuredValue]
  dynamic reviewAspect;

  /// The actual body of the review.
  String? reviewBody;

  /// The rating given in this review. Note that reviews can themselves be
  /// rated. The ```reviewRating``` applies to rating given by the review. The
  /// [SchemaaggregateRating] property applies to the review itself, as a
  /// creative work.
  SchemaRating? reviewRating;

  /// Create a new instance of [SchemaReview]
  SchemaReview({
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
    this.associatedClaimReview,
    this.associatedMediaReview,
    this.associatedReview,
    this.itemReviewed,
    this.negativeNotes,
    this.positiveNotes,
    this.reviewAspect,
    this.reviewBody,
    this.reviewRating,
  });

  /// Serialize [SchemaReview] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Review',
        'associatedClaimReview': convertToJsonLd(associatedClaimReview),
        'associatedMediaReview': convertToJsonLd(associatedMediaReview),
        'associatedReview': convertToJsonLd(associatedReview),
        'itemReviewed': convertToJsonLd(itemReviewed),
        'negativeNotes': convertToJsonLd(
            negativeNotes,
            (v) =>
                v is SchemaItemList ||
                v is SchemaListItem ||
                v is String ||
                v is SchemaWebContent),
        'positiveNotes': convertToJsonLd(
            positiveNotes,
            (v) =>
                v is SchemaItemList ||
                v is SchemaListItem ||
                v is String ||
                v is SchemaWebContent),
        'reviewAspect': convertToJsonLd(
            reviewAspect, (v) => v is String || v is SchemaStructuredValue),
        'reviewBody': convertToJsonLd(reviewBody),
        'reviewRating': convertToJsonLd(reviewRating),
      });
}
