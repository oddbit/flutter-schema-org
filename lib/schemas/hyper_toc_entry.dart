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

/// A HyperToEntry is an item within a [SchemaHyperToc], which represents a
/// hypertext table of contents for complex media objects, such as
/// [SchemaVideoObject], [SchemaAudioObject]. The media object itself is
/// indicated using [SchemaassociatedMedia]. Each section of interest within
/// that content can be described with a [SchemaHyperTocEntry], with
/// associated [SchemastartOffset] and [SchemaendOffset]. When several
/// entries are all from the same file, [SchemaassociatedMedia] is used on
/// the overarching [SchemaHyperTocEntry]; if the content has been split into
/// multiple files, they can be referenced using [SchemaassociatedMedia] on
/// each [SchemaHyperTocEntry].
/// See https://schema.org/HyperTocEntry
class SchemaHyperTocEntry extends SchemaCreativeWork {
  /// A [SchemaHyperTocEntry] can have a [SchematocContinuation] indicated,
  /// which is another [SchemaHyperTocEntry] that would be the default next
  /// item to play or render.
  SchemaHyperTocEntry? tocContinuation;

  /// Text of an utterances (spoken words, lyrics etc.) that occurs at a
  /// certain section of a media object, represented as a
  /// [SchemaHyperTocEntry].
  String? utterances;

  /// Create a new instance of [SchemaHyperTocEntry]
  SchemaHyperTocEntry({
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
    this.tocContinuation,
    this.utterances,
  });

  /// Serialize [SchemaHyperTocEntry] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HyperTocEntry',
        'tocContinuation': convertToJsonLd(tocContinuation),
        'utterances': convertToJsonLd(utterances),
      });
}
