// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/review.dart';
import 'package:schema_org/schemas/media_manipulation_rating_enumeration.dart';
import 'package:schema_org/schemas/media_object.dart';
import 'package:schema_org/schemas/web_page.dart';

/// A [SchemaMediaReview] is a more specialized form of Review dedicated to
/// the evaluation of media content online, typically in the context of
/// fact-checking and misinformation. For more general reviews of media in
/// the broader sense, use [SchemaUserReview], [SchemaCriticReview] or other
/// [SchemaReview] types. This definition is a work in progress. While the
/// [SchemaMediaManipulationRatingEnumeration] list reflects significant
/// community review amongst fact-checkers and others working to combat
/// misinformation, the specific structures for representing media objects,
/// their versions and publication context, are still evolving. Similarly,
/// best practices for the relationship between [SchemaMediaReview] and
/// [SchemaClaimReview] markup have not yet been finalized.
/// See https://schema.org/MediaReview
class SchemaMediaReview extends SchemaReview {
  /// Indicates a MediaManipulationRatingEnumeration classification of a media
  /// object (in the context of how it was published or shared).
  SchemaMediaManipulationRatingEnumeration? mediaAuthenticityCategory;

  /// Describes, in a [SchemaMediaReview] when dealing with
  /// [SchemaDecontextualizedContent], background information that can
  /// contribute to better interpretation of the [SchemaMediaObject].
  String? originalMediaContextDescription;

  /// Link to the page containing an original version of the content, or
  /// directly to an online copy of the original [SchemaMediaObject] content,
  /// e.g. video file.
  ///
  /// Supported types: [SchemaMediaObject], [String], [SchemaWebPage]
  dynamic originalMediaLink;

  /// Create a new instance of [SchemaMediaReview]
  SchemaMediaReview({
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
    this.mediaAuthenticityCategory,
    this.originalMediaContextDescription,
    this.originalMediaLink,
  });

  /// Serialize [SchemaMediaReview] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MediaReview',
        'mediaAuthenticityCategory': convertToJsonLd(mediaAuthenticityCategory,
            [SchemaMediaManipulationRatingEnumeration]),
        'originalMediaContextDescription':
            convertToJsonLd(originalMediaContextDescription, [String]),
        'originalMediaLink': convertToJsonLd(
            originalMediaLink, [SchemaMediaObject, String, SchemaWebPage]),
      });
}
