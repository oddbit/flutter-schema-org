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
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/how_to_section.dart';
import 'package:schema_org/schemas/how_to_step.dart';
import 'package:schema_org/schemas/item_list.dart';
import 'package:schema_org/schemas/how_to_supply.dart';
import 'package:schema_org/schemas/how_to_tool.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// Instructions that explain how to achieve a result by performing a
/// sequence of steps.
/// See https://schema.org/HowTo
class SchemaHowTo extends SchemaCreativeWork {
  /// The estimated cost of the supply or supplies consumed when performing
  /// instructions.
  ///
  /// Supported types: [SchemaMonetaryAmount], [String]
  dynamic estimatedCost;

  /// The length of time it takes to perform instructions or a direction (not
  /// including time to prepare the supplies), in [ISO 8601 duration
  /// format](http://en.wikipedia.org/wiki/ISO_8601).
  SchemaDuration? performTime;

  /// The length of time it takes to prepare the items to be used in
  /// instructions or a direction, in [ISO 8601 duration
  /// format](http://en.wikipedia.org/wiki/ISO_8601).
  SchemaDuration? prepTime;

  /// A single step item (as HowToStep, text, document, video, etc.) or a
  /// HowToSection.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaHowToSection],
  /// [SchemaHowToStep], [String]
  dynamic step;

  /// A single step item (as HowToStep, text, document, video, etc.) or a
  /// HowToSection (originally misnamed 'steps'; 'step' is preferred).
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaItemList], [String]
  @Deprecated('Use [step]. See https://schema.org/steps')
  dynamic steps;

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

  /// The total time required to perform instructions or a direction (including
  /// time to prepare the supplies), in [ISO 8601 duration
  /// format](http://en.wikipedia.org/wiki/ISO_8601).
  SchemaDuration? totalTime;

  /// The quantity that results by performing instructions. For example, a
  /// paper airplane, 10 personalized candles.
  ///
  /// Supported types: [SchemaQuantitativeValue], [String]
  dynamic yield;

  /// Create a new instance of [SchemaHowTo]
  SchemaHowTo({
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
    this.estimatedCost,
    this.performTime,
    this.prepTime,
    this.step,
    this.steps,
    this.supply,
    this.tool,
    this.totalTime,
    this.yield,
  });

  /// Serialize [SchemaHowTo] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HowTo',
        'estimatedCost': convertToJsonLd(
            estimatedCost, (v) => v is SchemaMonetaryAmount || v is String),
        'performTime': convertToJsonLd(performTime),
        'prepTime': convertToJsonLd(prepTime),
        'step': convertToJsonLd(
            step,
            (v) =>
                v is SchemaCreativeWork ||
                v is SchemaHowToSection ||
                v is SchemaHowToStep ||
                v is String),
        'steps': convertToJsonLd(
            steps,
            (v) =>
                v is SchemaCreativeWork || v is SchemaItemList || v is String),
        'supply': convertToJsonLd(
            supply, (v) => v is SchemaHowToSupply || v is String),
        'tool':
            convertToJsonLd(tool, (v) => v is SchemaHowToTool || v is String),
        'totalTime': convertToJsonLd(totalTime),
        'yield': convertToJsonLd(
            yield, (v) => v is SchemaQuantitativeValue || v is String),
      });
}
