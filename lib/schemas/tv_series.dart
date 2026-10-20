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
import 'package:schema_org/schemas/creative_work_series.dart';
import 'package:schema_org/schemas/performing_group.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/creative_work_season.dart';
import 'package:schema_org/schemas/episode.dart';
import 'package:schema_org/schemas/music_group.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/video_object.dart';

/// CreativeWorkSeries dedicated to TV broadcast and associated online
/// delivery.
/// See https://schema.org/TVSeries
class SchemaTVSeries extends SchemaCreativeWork
    implements SchemaCreativeWorkSeries {
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

  /// A season that is part of the media series.
  SchemaCreativeWorkSeason? containsSeason;

  /// A director of e.g. TV, radio, movie, video gaming etc. content, or of an
  /// event. Directors can be associated with individual items or with a
  /// series, episode, clip.
  SchemaPerson? director;

  /// A director of e.g. TV, radio, movie, video games etc. content. Directors
  /// can be associated with individual items or with a series, episode, clip.
  @Deprecated('Use [director]. See https://schema.org/directors')
  SchemaPerson? directors;

  /// An episode of a TV, radio or game media within a series or season.
  SchemaEpisode? episode;

  /// An episode of a TV/radio series or season.
  @Deprecated('Use [episode]. See https://schema.org/episodes')
  SchemaEpisode? episodes;

  /// The composer of the soundtrack.
  ///
  /// Supported types: [SchemaMusicGroup], [SchemaPerson]
  dynamic musicBy;

  /// The number of episodes in this season or series.
  int? numberOfEpisodes;

  /// The number of seasons in this series.
  int? numberOfSeasons;

  /// The production company or studio responsible for the item, e.g. series,
  /// video game, episode etc.
  SchemaOrganization? productionCompany;

  /// A season in a media series.
  ///
  /// Supported types: [SchemaCreativeWorkSeason], [String]
  @Deprecated('Use [containsSeason]. See https://schema.org/season')
  dynamic season;

  /// A season in a media series.
  @Deprecated('Use [season]. See https://schema.org/seasons')
  SchemaCreativeWorkSeason? seasons;

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

  /// The trailer of a movie or TV/radio series, season, episode, etc.
  SchemaVideoObject? trailer;

  /// The end date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  @override
  String? endDate;

  /// The International Standard Serial Number (ISSN) that identifies this
  /// serial publication. You can repeat this property to identify different
  /// formats of, or the linking ISSN (ISSN-L) for, this serial publication.
  @override
  String? issn;

  /// The start date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  @override
  String? startDate;

  /// Create a new instance of [SchemaTVSeries]
  SchemaTVSeries({
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
    this.containsSeason,
    this.director,
    this.directors,
    this.episode,
    this.episodes,
    this.musicBy,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.productionCompany,
    this.season,
    this.seasons,
    this.titleEIDR,
    this.trailer,
    this.endDate,
    this.issn,
    this.startDate,
  });

  /// Serialize [SchemaTVSeries] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TVSeries',
        'actor': convertToJsonLd(
            actor, (v) => v is SchemaPerformingGroup || v is SchemaPerson),
        'actors': convertToJsonLd(actors),
        'containsSeason': convertToJsonLd(containsSeason),
        'director': convertToJsonLd(director),
        'directors': convertToJsonLd(directors),
        'episode': convertToJsonLd(episode),
        'episodes': convertToJsonLd(episodes),
        'musicBy': convertToJsonLd(
            musicBy, (v) => v is SchemaMusicGroup || v is SchemaPerson),
        'numberOfEpisodes': convertToJsonLd(numberOfEpisodes),
        'numberOfSeasons': convertToJsonLd(numberOfSeasons),
        'productionCompany': convertToJsonLd(productionCompany),
        'season': convertToJsonLd(
            season, (v) => v is SchemaCreativeWorkSeason || v is String),
        'seasons': convertToJsonLd(seasons),
        'titleEIDR': convertToJsonLd(titleEIDR),
        'trailer': convertToJsonLd(trailer),
        'endDate': convertToJsonLd(endDate),
        'issn': convertToJsonLd(issn),
        'startDate': convertToJsonLd(startDate),
      });
}
