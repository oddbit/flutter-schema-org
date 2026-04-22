// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/game.dart';
import 'package:schema_org/schemas/software_application.dart';
import 'package:schema_org/schemas/performing_group.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/game_server.dart';
import 'package:schema_org/schemas/music_group.dart';
import 'package:schema_org/schemas/game_play_mode.dart';
import 'package:schema_org/schemas/video_object.dart';
import 'package:schema_org/schemas/operating_system.dart';
import 'package:schema_org/schemas/runtime_platform.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/data_feed.dart';

/// A video game is an electronic game that involves human interaction with a
/// user interface to generate visual feedback on a video device.
/// See https://schema.org/VideoGame
class SchemaVideoGame extends SchemaGame implements SchemaSoftwareApplication {
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

  /// Cheat codes to the game.
  SchemaCreativeWork? cheatCode;

  /// A director of e.g. TV, radio, movie, video gaming etc. content, or of an
  /// event. Directors can be associated with individual items or with a
  /// series, episode, clip.
  SchemaPerson? director;

  /// A director of e.g. TV, radio, movie, video games etc. content. Directors
  /// can be associated with individual items or with a series, episode, clip.
  @Deprecated('Use [director]. See https://schema.org/directors')
  SchemaPerson? directors;

  /// The edition of a video game.
  String? gameEdition;

  /// Video_game_platforms">video games</a>.
  ///
  /// Supported types: [String], [SchemaThing]
  dynamic gamePlatform;

  /// The server on which it is possible to play the game.
  SchemaGameServer? gameServer;

  /// Links to tips, tactics, etc.
  SchemaCreativeWork? gameTip;

  /// The composer of the soundtrack.
  ///
  /// Supported types: [SchemaMusicGroup], [SchemaPerson]
  dynamic musicBy;

  /// Indicates whether this game is multi-player, co-op or single-player. The
  /// game can be marked as multi-player, co-op and single-player at the same
  /// time.
  SchemaGamePlayMode? playMode;

  /// The trailer of a movie or TV/radio series, season, episode, etc.
  SchemaVideoObject? trailer;

  /// Type of software application, e.g. 'Game, Multimedia'.
  @override
  String? applicationCategory;

  /// Subcategory of the application, e.g. 'Arcade Game'.
  @override
  String? applicationSubCategory;

  /// The name of the application suite to which the application belongs (e.g.
  /// Excel belongs to Office).
  @override
  String? applicationSuite;

  /// Device required to run the application. Used in cases where a specific
  /// make/model is required to run the application.
  @override
  String? availableOnDevice;

  /// Countries for which the application is not supported. You can also
  /// provide the two-letter ISO 3166-1 alpha-2 country code.
  @override
  String? countriesNotSupported;

  /// Countries for which the application is supported. You can also provide
  /// the two-letter ISO 3166-1 alpha-2 country code.
  @override
  String? countriesSupported;

  /// Device required to run the application. Used in cases where a specific
  /// make/model is required to run the application.
  @override
  @Deprecated('Use [availableOnDevice]. See https://schema.org/device')
  String? device;

  /// If the file can be downloaded, URL to download the binary.
  @override
  String? downloadUrl;

  /// Features or modules provided by this application (and possibly required
  /// by other applications).
  @override
  String? featureList;

  /// Size of the application / package (e.g. 18MB). In the absence of a unit
  /// (MB, KB etc.), KB will be assumed.
  @override
  String? fileSize;

  /// URL at which the app may be installed, if different from the URL of the
  /// item.
  @override
  String? installUrl;

  /// Minimum memory requirements.
  @override
  String? memoryRequirements;

  /// Operating systems supported (Windows 7, OS X 10.6, Android 1.6).
  ///
  /// Supported types: [SchemaOperatingSystem], [String]
  @override
  dynamic operatingSystem;

  /// Permission(s) required to run the app (for example, a mobile app may
  /// require full internet access or may run only on wifi).
  @override
  String? permissions;

  /// Processor architecture required to run the application (e.g. IA64).
  @override
  String? processorRequirements;

  /// Description of what changed in this version.
  @override
  String? releaseNotes;

  /// DirectX, Java or .NET runtime).
  @override
  @Deprecated('Use [softwareRequirements]. See https://schema.org/requirements')
  String? requirements;

  /// Java v1, Python 2.3, .NET Framework 3.0).
  ///
  /// Supported types: [SchemaRuntimePlatform], [String]
  @override
  dynamic runtimePlatform;

  /// A link to a screenshot image of the app.
  ///
  /// Supported types: [SchemaImageObject], [String]
  @override
  dynamic screenshot;

  /// Additional content for a software application.
  @override
  SchemaSoftwareApplication? softwareAddOn;

  /// Software application help.
  @override
  SchemaCreativeWork? softwareHelp;

  /// DirectX, Java or .NET runtime).
  ///
  /// Supported types: [SchemaSoftwareApplication], [String]
  @override
  dynamic softwareRequirements;

  /// Version of the software instance.
  @override
  String? softwareVersion;

  /// Storage requirements (free space required).
  @override
  String? storageRequirements;

  /// Supporting data for a SoftwareApplication.
  @override
  SchemaDataFeed? supportingData;

  /// Create a new instance of [SchemaVideoGame]
  SchemaVideoGame({
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
    super.characterAttribute,
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
    super.gameItem,
    super.gameLocation,
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
    super.numberOfPlayers,
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
    super.quest,
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
    this.cheatCode,
    this.director,
    this.directors,
    this.gameEdition,
    this.gamePlatform,
    this.gameServer,
    this.gameTip,
    this.musicBy,
    this.playMode,
    this.trailer,
    this.applicationCategory,
    this.applicationSubCategory,
    this.applicationSuite,
    this.availableOnDevice,
    this.countriesNotSupported,
    this.countriesSupported,
    this.device,
    this.downloadUrl,
    this.featureList,
    this.fileSize,
    this.installUrl,
    this.memoryRequirements,
    this.operatingSystem,
    this.permissions,
    this.processorRequirements,
    this.releaseNotes,
    this.requirements,
    this.runtimePlatform,
    this.screenshot,
    this.softwareAddOn,
    this.softwareHelp,
    this.softwareRequirements,
    this.softwareVersion,
    this.storageRequirements,
    this.supportingData,
  });

  /// Serialize [SchemaVideoGame] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'VideoGame',
        'actor': convertToJsonLd(actor, [SchemaPerformingGroup, SchemaPerson]),
        'actors': convertToJsonLd(actors, [SchemaPerson]),
        'cheatCode': convertToJsonLd(cheatCode, [SchemaCreativeWork]),
        'director': convertToJsonLd(director, [SchemaPerson]),
        'directors': convertToJsonLd(directors, [SchemaPerson]),
        'gameEdition': convertToJsonLd(gameEdition, [String]),
        'gamePlatform': convertToJsonLd(gamePlatform, [String, SchemaThing]),
        'gameServer': convertToJsonLd(gameServer, [SchemaGameServer]),
        'gameTip': convertToJsonLd(gameTip, [SchemaCreativeWork]),
        'musicBy': convertToJsonLd(musicBy, [SchemaMusicGroup, SchemaPerson]),
        'playMode': convertToJsonLd(playMode, [SchemaGamePlayMode]),
        'trailer': convertToJsonLd(trailer, [SchemaVideoObject]),
        'applicationCategory': convertToJsonLd(applicationCategory, [String]),
        'applicationSubCategory':
            convertToJsonLd(applicationSubCategory, [String]),
        'applicationSuite': convertToJsonLd(applicationSuite, [String]),
        'availableOnDevice': convertToJsonLd(availableOnDevice, [String]),
        'countriesNotSupported':
            convertToJsonLd(countriesNotSupported, [String]),
        'countriesSupported': convertToJsonLd(countriesSupported, [String]),
        'device': convertToJsonLd(device, [String]),
        'downloadUrl': convertToJsonLd(downloadUrl, [String]),
        'featureList': convertToJsonLd(featureList, [String]),
        'fileSize': convertToJsonLd(fileSize, [String]),
        'installUrl': convertToJsonLd(installUrl, [String]),
        'memoryRequirements': convertToJsonLd(memoryRequirements, [String]),
        'operatingSystem':
            convertToJsonLd(operatingSystem, [SchemaOperatingSystem, String]),
        'permissions': convertToJsonLd(permissions, [String]),
        'processorRequirements':
            convertToJsonLd(processorRequirements, [String]),
        'releaseNotes': convertToJsonLd(releaseNotes, [String]),
        'requirements': convertToJsonLd(requirements, [String]),
        'runtimePlatform':
            convertToJsonLd(runtimePlatform, [SchemaRuntimePlatform, String]),
        'screenshot': convertToJsonLd(screenshot, [SchemaImageObject, String]),
        'softwareAddOn':
            convertToJsonLd(softwareAddOn, [SchemaSoftwareApplication]),
        'softwareHelp': convertToJsonLd(softwareHelp, [SchemaCreativeWork]),
        'softwareRequirements': convertToJsonLd(
            softwareRequirements, [SchemaSoftwareApplication, String]),
        'softwareVersion': convertToJsonLd(softwareVersion, [String]),
        'storageRequirements': convertToJsonLd(storageRequirements, [String]),
        'supportingData': convertToJsonLd(supportingData, [SchemaDataFeed]),
      });
}
