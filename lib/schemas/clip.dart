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
import 'package:schema_org/schemas/performing_group.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/hyper_toc_entry.dart';
import 'package:schema_org/schemas/music_group.dart';
import 'package:schema_org/schemas/episode.dart';
import 'package:schema_org/schemas/creative_work_season.dart';
import 'package:schema_org/schemas/creative_work_series.dart';

/// A short TV or radio program or a segment/part of a program.
/// See https://schema.org/Clip
class SchemaClip extends SchemaCreativeWork {
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

  /// Position of the clip within an ordered group of clips.
  ///
  /// Supported types: [String], [int]
  dynamic clipNumber;

  /// A director of e.g. TV, radio, movie, video gaming etc. content, or of an
  /// event. Directors can be associated with individual items or with a
  /// series, episode, clip.
  SchemaPerson? director;

  /// A director of e.g. TV, radio, movie, video games etc. content. Directors
  /// can be associated with individual items or with a series, episode, clip.
  @Deprecated('Use [director]. See https://schema.org/directors')
  SchemaPerson? directors;

  /// The end time of the clip expressed as the number of seconds from the
  /// beginning of the work.
  ///
  /// Supported types: [SchemaHyperTocEntry], [num]
  dynamic endOffset;

  /// The composer of the soundtrack.
  ///
  /// Supported types: [SchemaMusicGroup], [SchemaPerson]
  dynamic musicBy;

  /// The episode to which this clip belongs.
  SchemaEpisode? partOfEpisode;

  /// The season to which this episode belongs.
  SchemaCreativeWorkSeason? partOfSeason;

  /// The series to which this episode or season belongs.
  SchemaCreativeWorkSeries? partOfSeries;

  /// The start time of the clip expressed as the number of seconds from the
  /// beginning of the work.
  ///
  /// Supported types: [SchemaHyperTocEntry], [num]
  dynamic startOffset;

  /// Create a new instance of [SchemaClip]
  SchemaClip({
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
    this.actor,
    this.actors,
    this.clipNumber,
    this.director,
    this.directors,
    this.endOffset,
    this.musicBy,
    this.partOfEpisode,
    this.partOfSeason,
    this.partOfSeries,
    this.startOffset,
  });

  /// Serialize [SchemaClip] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Clip',
        'actor': convertToJsonLd(actor, [SchemaPerformingGroup, SchemaPerson]),
        'actors': convertToJsonLd(actors, [SchemaPerson]),
        'clipNumber': convertToJsonLd(clipNumber, [String, int]),
        'director': convertToJsonLd(director, [SchemaPerson]),
        'directors': convertToJsonLd(directors, [SchemaPerson]),
        'endOffset': convertToJsonLd(endOffset, [SchemaHyperTocEntry, num]),
        'musicBy': convertToJsonLd(musicBy, [SchemaMusicGroup, SchemaPerson]),
        'partOfEpisode': convertToJsonLd(partOfEpisode, [SchemaEpisode]),
        'partOfSeason':
            convertToJsonLd(partOfSeason, [SchemaCreativeWorkSeason]),
        'partOfSeries':
            convertToJsonLd(partOfSeries, [SchemaCreativeWorkSeries]),
        'startOffset': convertToJsonLd(startOffset, [SchemaHyperTocEntry, num]),
      });
}
