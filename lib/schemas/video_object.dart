// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/media_object.dart';
import 'package:schema_org/schemas/performing_group.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/music_group.dart';

/// A video file.
/// See https://schema.org/VideoObject
class SchemaVideoObject extends SchemaMediaObject {
  /// An actor (individual or a group), e.g. in TV, radio, movie, video games
  /// etc., or in an event. Actors can be associated with individual items or
  /// with a series, episode, clip.
  ///
  /// Supported types: [SchemaPerformingGroup], [SchemaPerson]
  dynamic actor;

  /// An actor, e.g. in TV, radio, movie, video games etc. Actors can be
  /// associated with individual items or with a series, episode, clip.
  @Deprecated('Use [actor]. See https://schema.org/actors')
  SchemaPerson? actors;

  /// The caption for this object. For downloadable machine formats (closed
  /// caption, subtitles etc.) use MediaObject and indicate the
  /// [SchemaencodingFormat].
  ///
  /// Supported types: [SchemaMediaObject], [String]
  dynamic caption;

  /// A director of e.g. TV, radio, movie, video gaming etc. content, or of an
  /// event. Directors can be associated with individual items or with a
  /// series, episode, clip.
  SchemaPerson? director;

  /// A director of e.g. TV, radio, movie, video games etc. content. Directors
  /// can be associated with individual items or with a series, episode, clip.
  @Deprecated('Use [director]. See https://schema.org/directors')
  SchemaPerson? directors;

  /// Represents textual captioning from a [SchemaMediaObject], e.g. text of a
  /// 'meme'.
  String? embeddedTextCaption;

  /// The composer of the soundtrack.
  ///
  /// Supported types: [SchemaMusicGroup], [SchemaPerson]
  dynamic musicBy;

  /// If this MediaObject is an AudioObject or VideoObject, the transcript of
  /// that object.
  String? transcript;

  /// The frame size of the video.
  String? videoFrameSize;

  /// The quality of the video.
  String? videoQuality;

  /// Create a new instance of [SchemaVideoObject]
  SchemaVideoObject({
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
    super.associatedArticle,
    super.associatedMedia,
    super.audience,
    super.audio,
    super.author,
    super.award,
    super.awards,
    super.bitrate,
    super.character,
    super.citation,
    super.comment,
    super.commentCount,
    super.conditionsOfAccess,
    super.contentLocation,
    super.contentRating,
    super.contentReferenceTime,
    super.contentSize,
    super.contentUrl,
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
    super.duration,
    super.editEIDR,
    super.editor,
    super.educationalAlignment,
    super.educationalLevel,
    super.educationalUse,
    super.embedUrl,
    super.encodesCreativeWork,
    super.encoding,
    super.encodingFormat,
    super.encodings,
    super.endTime,
    super.exampleOfWork,
    super.expires,
    super.fileFormat,
    super.funder,
    super.funding,
    super.genre,
    super.hasPart,
    super.headline,
    super.height,
    super.identifier,
    super.image,
    super.inLanguage,
    super.ineligibleRegion,
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
    super.playerType,
    super.position,
    super.potentialAction,
    super.producer,
    super.productionCompany,
    super.provider,
    super.publication,
    super.publisher,
    super.publisherImprint,
    super.publishingPrinciples,
    super.recordedAt,
    super.regionsAllowed,
    super.releasedEvent,
    super.requiresSubscription,
    super.review,
    super.reviews,
    super.sameAs,
    super.schemaVersion,
    super.sdDatePublished,
    super.sdLicense,
    super.sdPublisher,
    super.sha256,
    super.size,
    super.sourceOrganization,
    super.spatial,
    super.spatialCoverage,
    super.sponsor,
    super.startTime,
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
    super.uploadDate,
    super.url,
    super.usageInfo,
    super.version,
    super.video,
    super.width,
    super.wordCount,
    super.workExample,
    super.workTranslation,
    this.actor,
    this.actors,
    this.caption,
    this.director,
    this.directors,
    this.embeddedTextCaption,
    this.musicBy,
    this.transcript,
    this.videoFrameSize,
    this.videoQuality,
  });

  /// Serialize [SchemaVideoObject] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'VideoObject',
        'actor': convertToJsonLd(actor, [SchemaPerformingGroup, SchemaPerson]),
        'actors': convertToJsonLd(actors, [SchemaPerson]),
        'caption': convertToJsonLd(caption, [SchemaMediaObject, String]),
        'director': convertToJsonLd(director, [SchemaPerson]),
        'directors': convertToJsonLd(directors, [SchemaPerson]),
        'embeddedTextCaption': convertToJsonLd(embeddedTextCaption, [String]),
        'musicBy': convertToJsonLd(musicBy, [SchemaMusicGroup, SchemaPerson]),
        'transcript': convertToJsonLd(transcript, [String]),
        'videoFrameSize': convertToJsonLd(videoFrameSize, [String]),
        'videoQuality': convertToJsonLd(videoQuality, [String]),
      });
}
