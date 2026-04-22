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
import 'package:schema_org/schemas/list_item.dart';
import 'package:schema_org/schemas/media_object.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/how_to_supply.dart';
import 'package:schema_org/schemas/how_to_tool.dart';
import 'package:schema_org/schemas/thing.dart';

/// A direction indicating a single action to do in the instructions for how
/// to achieve a result.
/// See https://schema.org/HowToDirection
class SchemaHowToDirection extends SchemaCreativeWork
    implements SchemaListItem {
  /// A media object representing the circumstances after performing this
  /// direction.
  ///
  /// Supported types: [SchemaMediaObject], [String]
  dynamic afterMedia;

  /// A media object representing the circumstances before performing this
  /// direction.
  ///
  /// Supported types: [SchemaMediaObject], [String]
  dynamic beforeMedia;

  /// A media object representing the circumstances while performing this
  /// direction.
  ///
  /// Supported types: [SchemaMediaObject], [String]
  dynamic duringMedia;

  /// //en.wikipedia.org/wiki/ISO_8601).
  SchemaDuration? performTime;

  /// //en.wikipedia.org/wiki/ISO_8601).
  SchemaDuration? prepTime;

  /// A sub-property of instrument. A supply consumed when performing
  /// instructions or a direction.
  ///
  /// Supported types: [SchemaHowToSupply], [String]
  dynamic supply;

  /// A sub property of instrument. An object used (but not consumed) when
  /// performing instructions or a direction.
  ///
  /// Supported types: [SchemaHowToTool], [String]
  dynamic tool;

  /// //en.wikipedia.org/wiki/ISO_8601).
  SchemaDuration? totalTime;

  /// An entity represented by an entry in a list or data feed (e.g. an
  /// 'artist' in a list of 'artists').
  @override
  SchemaThing? item;

  /// A link to the ListItem that follows the current one.
  @override
  SchemaListItem? nextItem;

  /// A link to the ListItem that precedes the current one.
  @override
  SchemaListItem? previousItem;

  /// Create a new instance of [SchemaHowToDirection]
  SchemaHowToDirection({
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
    this.afterMedia,
    this.beforeMedia,
    this.duringMedia,
    this.performTime,
    this.prepTime,
    this.supply,
    this.tool,
    this.totalTime,
    this.item,
    this.nextItem,
    this.previousItem,
  });

  /// Serialize [SchemaHowToDirection] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HowToDirection',
        'afterMedia': convertToJsonLd(afterMedia, [SchemaMediaObject, String]),
        'beforeMedia':
            convertToJsonLd(beforeMedia, [SchemaMediaObject, String]),
        'duringMedia':
            convertToJsonLd(duringMedia, [SchemaMediaObject, String]),
        'performTime': convertToJsonLd(performTime, [SchemaDuration]),
        'prepTime': convertToJsonLd(prepTime, [SchemaDuration]),
        'supply': convertToJsonLd(supply, [SchemaHowToSupply, String]),
        'tool': convertToJsonLd(tool, [SchemaHowToTool, String]),
        'totalTime': convertToJsonLd(totalTime, [SchemaDuration]),
        'item': convertToJsonLd(item, [SchemaThing]),
        'nextItem': convertToJsonLd(nextItem, [SchemaListItem]),
        'previousItem': convertToJsonLd(previousItem, [SchemaListItem]),
      });
}
