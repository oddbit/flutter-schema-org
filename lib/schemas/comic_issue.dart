// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/publication_issue.dart';
import 'package:schema_org/schemas/person.dart';

/// Individual comic issues are serially published as part of a larger
/// series. For the sake of consistency, even one-shot issues belong to a
/// series comprised of a single issue. All comic issues can be uniquely
/// identified by: the combination of the name and volume number of the
/// series to which the issue belongs; the issue number; and the variant
/// description of the issue (if any).
/// See https://schema.org/ComicIssue
class SchemaComicIssue extends SchemaPublicationIssue {
  /// The primary artist for a work in a medium other than pencils or digital
  /// line art--for example, if the primary artwork is done in watercolors or
  /// digital paints.
  SchemaPerson? artist;

  /// The individual who adds color to inked drawings.
  SchemaPerson? colorist;

  /// The individual who traces over the pencil drawings in ink after pencils
  /// are complete.
  SchemaPerson? inker;

  /// The individual who adds lettering, including speech balloons and sound
  /// effects, to artwork.
  SchemaPerson? letterer;

  /// The individual who draws the primary narrative artwork.
  SchemaPerson? penciler;

  /// A description of the variant cover for the issue, if the issue is a
  /// variant printing. For example, "Bryan Hitch Variant Cover" or "2nd
  /// Printing Variant".
  String? variantCover;

  /// Create a new instance of [SchemaComicIssue]
  SchemaComicIssue({
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
    super.issueNumber,
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
    super.pageEnd,
    super.pageStart,
    super.pagination,
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
    this.artist,
    this.colorist,
    this.inker,
    this.letterer,
    this.penciler,
    this.variantCover,
  });

  /// Serialize [SchemaComicIssue] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ComicIssue',
        'artist': convertToJsonLd(artist),
        'colorist': convertToJsonLd(colorist),
        'inker': convertToJsonLd(inker),
        'letterer': convertToJsonLd(letterer),
        'penciler': convertToJsonLd(penciler),
        'variantCover': convertToJsonLd(variantCover),
      });
}
