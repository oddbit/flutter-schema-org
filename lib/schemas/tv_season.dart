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
import 'package:schema_org/schemas/creative_work_season.dart';
import 'package:schema_org/schemas/tv_series.dart';
import 'package:schema_org/schemas/performing_group.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/episode.dart';
import 'package:schema_org/schemas/creative_work_series.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/video_object.dart';

/// Season dedicated to TV broadcast and associated online delivery.
/// See https://schema.org/TVSeason
class SchemaTVSeason extends SchemaCreativeWork
    implements SchemaCreativeWorkSeason {
  /// The TV series to which this episode or season belongs.
  @Deprecated('Use [partOfSeries]. See https://schema.org/partOfTVSeries')
  SchemaTVSeries? partOfTVSeries;

  /// An [EIDR](https://eidr.org/) (Entertainment Identifier Registry)
  /// [Schemaidentifier] representing at the most general/abstract level, a
  /// work of film or television.
  ///
  /// For example, the motion picture known as "Ghostbusters" has a titleEIDR
  /// of "10.5240/7EC7-228A-510A-053E-CBB8-J". This title (or work) may have
  /// several variants, which EIDR calls "edits". See [SchemaeditEIDR].
  ///
  /// Since schema.org types like [SchemaMovie], [SchemaTVEpisode],
  /// [SchemaTVSeason], and [SchemaTVSeries] can be used for both works and
  /// their multiple expressions, it is possible to use [SchematitleEIDR] alone
  /// (for a general description), or alongside [SchemaeditEIDR] for a more
  /// edit-specific description.
  String? titleEIDR;

  /// An actor (individual or a group), e.g. in TV, radio, movie, video games
  /// etc., or in an event. Actors can be associated with individual items or
  /// with a series, episode, clip.
  ///
  /// Supported types: [SchemaPerformingGroup], [SchemaPerson]
  @override
  dynamic actor;

  /// A director of e.g. TV, radio, movie, video gaming etc. content, or of an
  /// event. Directors can be associated with individual items or with a
  /// series, episode, clip.
  @override
  SchemaPerson? director;

  /// The end date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  @override
  String? endDate;

  /// An episode of a TV, radio or game media within a series or season.
  @override
  SchemaEpisode? episode;

  /// An episode of a TV/radio series or season.
  @override
  @Deprecated('Use [episode]. See https://schema.org/episodes')
  SchemaEpisode? episodes;

  /// The number of episodes in this season or series.
  @override
  int? numberOfEpisodes;

  /// The series to which this episode or season belongs.
  @override
  SchemaCreativeWorkSeries? partOfSeries;

  /// The production company or studio responsible for the item, e.g. series,
  /// video game, episode etc.
  @override
  SchemaOrganization? productionCompany;

  /// Position of the season within an ordered group of seasons.
  ///
  /// Supported types: [String], [int]
  @override
  dynamic seasonNumber;

  /// The start date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  @override
  String? startDate;

  /// The trailer of a movie or TV/radio series, season, episode, etc.
  @override
  SchemaVideoObject? trailer;

  /// Create a new instance of [SchemaTVSeason]
  SchemaTVSeason({
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
    this.partOfTVSeries,
    this.titleEIDR,
    this.actor,
    this.director,
    this.endDate,
    this.episode,
    this.episodes,
    this.numberOfEpisodes,
    this.partOfSeries,
    this.productionCompany,
    this.seasonNumber,
    this.startDate,
    this.trailer,
  });

  /// Serialize [SchemaTVSeason] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TVSeason',
        'partOfTVSeries': convertToJsonLd(partOfTVSeries),
        'titleEIDR': convertToJsonLd(titleEIDR),
        'actor': convertToJsonLd(
            actor, (v) => v is SchemaPerformingGroup || v is SchemaPerson),
        'director': convertToJsonLd(director),
        'endDate': convertToJsonLd(endDate),
        'episode': convertToJsonLd(episode),
        'episodes': convertToJsonLd(episodes),
        'numberOfEpisodes': convertToJsonLd(numberOfEpisodes),
        'partOfSeries': convertToJsonLd(partOfSeries),
        'productionCompany': convertToJsonLd(productionCompany),
        'seasonNumber':
            convertToJsonLd(seasonNumber, (v) => v is String || v is int),
        'startDate': convertToJsonLd(startDate),
        'trailer': convertToJsonLd(trailer),
      });
}
