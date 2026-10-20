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
import 'package:schema_org/schemas/item_list.dart';
import 'package:schema_org/schemas/list_item.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/item_list_order_type.dart';

/// A step in the instructions for how to achieve a result. It is an ordered
/// list with HowToDirection and/or HowToTip items.
/// See https://schema.org/HowToStep
class SchemaHowToStep extends SchemaCreativeWork
    implements SchemaItemList, SchemaListItem {
  /// Indicates a prototype of the elements in the list that is used to hold
  /// aggregate information (ratings, offers, etc.).
  @override
  SchemaThing? aggregateElement;

  /// For itemListElement values, you can use simple strings (e.g. "Peter",
  /// "Paul", "Mary"), existing entities, or use ListItem.\n\nText values are
  /// best if the elements in the list are plain strings. Existing entities are
  /// best for a simple, unordered list of existing things in your data.
  /// ListItem is used with ordered lists when you want to provide additional
  /// context about the element in that list or when the same item might be in
  /// different places in different lists.\n\nNote: The order of elements in
  /// your mark-up is not sufficient for indicating the order or elements. Use
  /// ListItem with a 'position' property in such cases.
  ///
  /// Supported types: [SchemaListItem], [String], [SchemaThing]
  @override
  dynamic itemListElement;

  /// Type of ordering (e.g. Ascending, Descending, Unordered).
  ///
  /// Supported types: [SchemaItemListOrderType], [String]
  @override
  dynamic itemListOrder;

  /// The number of items in an ItemList. Note that some descriptions might not
  /// fully describe all items in a list (e.g., multi-page pagination); in such
  /// cases, the numberOfItems would be for the entire list.
  @override
  int? numberOfItems;

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

  /// Create a new instance of [SchemaHowToStep]
  SchemaHowToStep({
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
    this.aggregateElement,
    this.itemListElement,
    this.itemListOrder,
    this.numberOfItems,
    this.item,
    this.nextItem,
    this.previousItem,
  });

  /// Serialize [SchemaHowToStep] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HowToStep',
        'aggregateElement': convertToJsonLd(aggregateElement),
        'itemListElement': convertToJsonLd(itemListElement,
            (v) => v is SchemaListItem || v is String || v is SchemaThing),
        'itemListOrder': convertToJsonLd(
            itemListOrder, (v) => v is SchemaItemListOrderType || v is String),
        'numberOfItems': convertToJsonLd(numberOfItems),
        'item': convertToJsonLd(item),
        'nextItem': convertToJsonLd(nextItem),
        'previousItem': convertToJsonLd(previousItem),
      });
}
