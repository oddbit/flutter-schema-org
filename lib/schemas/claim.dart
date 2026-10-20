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
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// A [SchemaClaim] in Schema.org represents a specific, factually-oriented
/// claim that could be the [SchemaitemReviewed] in a [SchemaClaimReview].
/// The content of a claim can be summarized with the [Schematext] property.
/// Variations on well known claims can have their common identity indicated
/// via [SchemasameAs] links, and summarized with a [Schemaname]. Ideally, a
/// [SchemaClaim] description includes enough contextual information to
/// minimize the risk of ambiguity or inclarity. In practice, many claims are
/// better understood in the context in which they appear or the
/// interpretations provided by claim reviews.
///
/// Beyond [SchemaClaimReview], the Claim type can be associated with related
/// creative works - for example a [SchemaScholarlyArticle] or
/// [SchemaQuestion] might be [Schemaabout] some [SchemaClaim].
///
/// At this time, Schema.org does not define any types of relationship
/// between claims. This is a natural area for future exploration.
/// See https://schema.org/Claim
class SchemaClaim extends SchemaCreativeWork {
  /// Indicates an occurrence of a [SchemaClaim] in some [SchemaCreativeWork].
  SchemaCreativeWork? appearance;

  /// For a [SchemaClaim] interpreted from [SchemaMediaObject] content, the
  /// [SchemainterpretedAsClaim] property can be used to indicate a claim
  /// contained, implied or refined from the content of a [SchemaMediaObject].
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic claimInterpreter;

  /// Indicates the first known occurrence of a [SchemaClaim] in some
  /// [SchemaCreativeWork].
  SchemaCreativeWork? firstAppearance;

  /// Create a new instance of [SchemaClaim]
  SchemaClaim({
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
    this.appearance,
    this.claimInterpreter,
    this.firstAppearance,
  });

  /// Serialize [SchemaClaim] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Claim',
        'appearance': convertToJsonLd(appearance),
        'claimInterpreter': convertToJsonLd(claimInterpreter,
            (v) => v is SchemaOrganization || v is SchemaPerson),
        'firstAppearance': convertToJsonLd(firstAppearance),
      });
}
