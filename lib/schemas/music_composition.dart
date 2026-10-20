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
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/music_recording.dart';

/// A musical composition.
/// See https://schema.org/MusicComposition
class SchemaMusicComposition extends SchemaCreativeWork {
  /// The person or organization who wrote a composition, or who is the
  /// composer of a work performed at some event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic composer;

  /// The date and place the work was first performed.
  SchemaEvent? firstPerformance;

  /// Smaller compositions included in this work (e.g. a movement in a
  /// symphony).
  SchemaMusicComposition? includedComposition;

  /// The International Standard Musical Work Code for the composition.
  String? iswcCode;

  /// The person who wrote the words.
  SchemaPerson? lyricist;

  /// The words in the song.
  SchemaCreativeWork? lyrics;

  /// An arrangement derived from the composition.
  SchemaMusicComposition? musicArrangement;

  /// The type of composition (e.g. overture, sonata, symphony, etc.).
  String? musicCompositionForm;

  /// The key, mode, or scale this composition uses.
  String? musicalKey;

  /// An audio recording of the work.
  SchemaMusicRecording? recordedAs;

  /// Create a new instance of [SchemaMusicComposition]
  SchemaMusicComposition({
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
    this.composer,
    this.firstPerformance,
    this.includedComposition,
    this.iswcCode,
    this.lyricist,
    this.lyrics,
    this.musicArrangement,
    this.musicCompositionForm,
    this.musicalKey,
    this.recordedAs,
  });

  /// Serialize [SchemaMusicComposition] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MusicComposition',
        'composer': convertToJsonLd(
            composer, (v) => v is SchemaOrganization || v is SchemaPerson),
        'firstPerformance': convertToJsonLd(firstPerformance),
        'includedComposition': convertToJsonLd(includedComposition),
        'iswcCode': convertToJsonLd(iswcCode),
        'lyricist': convertToJsonLd(lyricist),
        'lyrics': convertToJsonLd(lyrics),
        'musicArrangement': convertToJsonLd(musicArrangement),
        'musicCompositionForm': convertToJsonLd(musicCompositionForm),
        'musicalKey': convertToJsonLd(musicalKey),
        'recordedAs': convertToJsonLd(recordedAs),
      });
}
