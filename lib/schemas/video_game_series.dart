// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/creative_work_series.dart';
import 'package:schema_org/schemas/performing_group.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/creative_work_season.dart';
import 'package:schema_org/schemas/episode.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/music_group.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/game_play_mode.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/video_object.dart';

/// A video game series.
/// See https://schema.org/VideoGameSeries
class SchemaVideoGameSeries extends SchemaCreativeWorkSeries {
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

  /// A piece of data that represents a particular aspect of a fictional
  /// character (skill, power, character points, advantage, disadvantage).
  SchemaThing? characterAttribute;

  /// Cheat codes to the game.
  SchemaCreativeWork? cheatCode;

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

  /// An item is an object within the game world that can be collected by a
  /// player or, occasionally, a non-player character.
  SchemaThing? gameItem;

  /// Real or fictional location of the game (or part of game).
  ///
  /// Supported types: [SchemaPlace], [SchemaPostalAddress], [String]
  dynamic gameLocation;

  /// Video_game_platforms">video games</a>.
  ///
  /// Supported types: [String], [SchemaThing]
  dynamic gamePlatform;

  /// The composer of the soundtrack.
  ///
  /// Supported types: [SchemaMusicGroup], [SchemaPerson]
  dynamic musicBy;

  /// The number of episodes in this season or series.
  int? numberOfEpisodes;

  /// Indicate how many people can play this game (minimum, maximum, or range).
  SchemaQuantitativeValue? numberOfPlayers;

  /// The number of seasons in this series.
  int? numberOfSeasons;

  /// Indicates whether this game is multi-player, co-op or single-player. The
  /// game can be marked as multi-player, co-op and single-player at the same
  /// time.
  SchemaGamePlayMode? playMode;

  /// The production company or studio responsible for the item, e.g. series,
  /// video game, episode etc.
  SchemaOrganization? productionCompany;

  /// The task that a player-controlled character, or group of characters may
  /// complete in order to gain a reward.
  SchemaThing? quest;

  /// A season in a media series.
  ///
  /// Supported types: [SchemaCreativeWorkSeason], [String]
  @Deprecated('Use [containsSeason]. See https://schema.org/season')
  dynamic season;

  /// A season in a media series.
  @Deprecated('Use [season]. See https://schema.org/seasons')
  SchemaCreativeWorkSeason? seasons;

  /// The trailer of a movie or TV/radio series, season, episode, etc.
  SchemaVideoObject? trailer;

  /// Create a new instance of [SchemaVideoGameSeries]
  SchemaVideoGameSeries({
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
    super.endDate,
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
    super.issn,
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
    super.startDate,
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
    this.characterAttribute,
    this.cheatCode,
    this.containsSeason,
    this.director,
    this.directors,
    this.episode,
    this.episodes,
    this.gameItem,
    this.gameLocation,
    this.gamePlatform,
    this.musicBy,
    this.numberOfEpisodes,
    this.numberOfPlayers,
    this.numberOfSeasons,
    this.playMode,
    this.productionCompany,
    this.quest,
    this.season,
    this.seasons,
    this.trailer,
  });

  /// Serialize [SchemaVideoGameSeries] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'VideoGameSeries',
        'actor': convertToJsonLd(actor, [SchemaPerformingGroup, SchemaPerson]),
        'actors': convertToJsonLd(actors, [SchemaPerson]),
        'characterAttribute':
            convertToJsonLd(characterAttribute, [SchemaThing]),
        'cheatCode': convertToJsonLd(cheatCode, [SchemaCreativeWork]),
        'containsSeason':
            convertToJsonLd(containsSeason, [SchemaCreativeWorkSeason]),
        'director': convertToJsonLd(director, [SchemaPerson]),
        'directors': convertToJsonLd(directors, [SchemaPerson]),
        'episode': convertToJsonLd(episode, [SchemaEpisode]),
        'episodes': convertToJsonLd(episodes, [SchemaEpisode]),
        'gameItem': convertToJsonLd(gameItem, [SchemaThing]),
        'gameLocation': convertToJsonLd(
            gameLocation, [SchemaPlace, SchemaPostalAddress, String]),
        'gamePlatform': convertToJsonLd(gamePlatform, [String, SchemaThing]),
        'musicBy': convertToJsonLd(musicBy, [SchemaMusicGroup, SchemaPerson]),
        'numberOfEpisodes': convertToJsonLd(numberOfEpisodes, [int]),
        'numberOfPlayers':
            convertToJsonLd(numberOfPlayers, [SchemaQuantitativeValue]),
        'numberOfSeasons': convertToJsonLd(numberOfSeasons, [int]),
        'playMode': convertToJsonLd(playMode, [SchemaGamePlayMode]),
        'productionCompany':
            convertToJsonLd(productionCompany, [SchemaOrganization]),
        'quest': convertToJsonLd(quest, [SchemaThing]),
        'season': convertToJsonLd(season, [SchemaCreativeWorkSeason, String]),
        'seasons': convertToJsonLd(seasons, [SchemaCreativeWorkSeason]),
        'trailer': convertToJsonLd(trailer, [SchemaVideoObject]),
      });
}
