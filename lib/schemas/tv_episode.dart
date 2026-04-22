// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/episode.dart';
import 'package:schema_org/schemas/tv_series.dart';
import 'package:schema_org/schemas/language.dart';

/// A TV episode which can be part of a series or season.
/// See https://schema.org/TVEpisode
class SchemaTVEpisode extends SchemaEpisode {
  /// The TV series to which this episode or season belongs.
  @Deprecated('Use [partOfSeries]. See https://schema.org/partOfTVSeries')
  SchemaTVSeries? partOfTVSeries;

  /// //tools.ietf.org/html/bcp47).
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic subtitleLanguage;

  /// //eidr.org/) (Entertainment Identifier Registry) [Schemaidentifier]
  /// representing at the most general/abstract level, a work of film or
  /// television.
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

  /// Create a new instance of [SchemaTVEpisode]
  SchemaTVEpisode({
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
    super.actor,
    super.actors,
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
    super.director,
    super.directors,
    super.disambiguatingDescription,
    super.discussionUrl,
    super.displayLocation,
    super.duration,
    super.editEIDR,
    super.editor,
    super.educationalAlignment,
    super.educationalLevel,
    super.educationalUse,
    super.encoding,
    super.encodingFormat,
    super.encodings,
    super.episodeNumber,
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
    super.musicBy,
    super.name,
    super.offers,
    super.owner,
    super.partOfSeason,
    super.partOfSeries,
    super.pattern,
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
    super.trailer,
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
    this.subtitleLanguage,
    this.titleEIDR,
  });

  /// Serialize [SchemaTVEpisode] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TVEpisode',
        'partOfTVSeries': convertToJsonLd(partOfTVSeries, [SchemaTVSeries]),
        'subtitleLanguage':
            convertToJsonLd(subtitleLanguage, [SchemaLanguage, String]),
        'titleEIDR': convertToJsonLd(titleEIDR, [String]),
      });
}
