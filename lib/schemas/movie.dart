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
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/music_group.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/video_object.dart';

/// A movie.
/// See https://schema.org/Movie
class SchemaMovie extends SchemaCreativeWork {
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

  /// A director of e.g. TV, radio, movie, video gaming etc. content, or of an
  /// event. Directors can be associated with individual items or with a
  /// series, episode, clip.
  SchemaPerson? director;

  /// A director of e.g. TV, radio, movie, video games etc. content. Directors
  /// can be associated with individual items or with a series, episode, clip.
  @Deprecated('Use [director]. See https://schema.org/directors')
  SchemaPerson? directors;

  /// The duration of the item (movie, audio recording, event, etc.) in [ISO
  /// 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  dynamic duration;

  /// The composer of the soundtrack.
  ///
  /// Supported types: [SchemaMusicGroup], [SchemaPerson]
  dynamic musicBy;

  /// The production company or studio responsible for the item, e.g. series,
  /// video game, episode etc.
  SchemaOrganization? productionCompany;

  /// Languages in which subtitles/captions are available, in [IETF BCP 47
  /// standard format](http://tools.ietf.org/html/bcp47).
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic subtitleLanguage;

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

  /// Create a new instance of [SchemaMovie]
  SchemaMovie({
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
    this.director,
    this.directors,
    this.duration,
    this.musicBy,
    this.productionCompany,
    this.subtitleLanguage,
    this.titleEIDR,
    this.trailer,
  });

  /// Serialize [SchemaMovie] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Movie',
        'actor': convertToJsonLd(
            actor, (v) => v is SchemaPerformingGroup || v is SchemaPerson),
        'actors': convertToJsonLd(actors),
        'director': convertToJsonLd(director),
        'directors': convertToJsonLd(directors),
        'duration': convertToJsonLd(duration,
            (v) => v is SchemaDuration || v is SchemaQuantitativeValue),
        'musicBy': convertToJsonLd(
            musicBy, (v) => v is SchemaMusicGroup || v is SchemaPerson),
        'productionCompany': convertToJsonLd(productionCompany),
        'subtitleLanguage': convertToJsonLd(
            subtitleLanguage, (v) => v is SchemaLanguage || v is String),
        'titleEIDR': convertToJsonLd(titleEIDR),
        'trailer': convertToJsonLd(trailer),
      });
}
