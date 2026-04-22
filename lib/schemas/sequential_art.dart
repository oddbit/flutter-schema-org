// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/book.dart';
import 'package:schema_org/schemas/visual_artwork.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/mass.dart';

/// An art forms that use images deployed in a specific order for the purpose
/// of graphic storytelling (i.e., narration of graphic stories) or conveying
/// information. Examples of SequentialArt are Franco-Belgian Bande Dessinée,
/// Comics in the USA and 漫画 (Manga) in Japan.
/// See https://schema.org/SequentialArt
class SchemaSequentialArt extends SchemaBook implements SchemaVisualArtwork {
  /// The number of copies when multiple copies of a piece of artwork are
  /// produced - e.g. for a limited edition of 20 prints, 'artEdition' refers
  /// to the total number of copies (in this example "20").
  ///
  /// Supported types: [String], [int]
  @override
  dynamic artEdition;

  /// The material used. (E.g. Oil, Watercolour, Acrylic, Linoprint, Marble,
  /// Cyanotype, Digital, Lithograph, DryPoint, Intaglio, Pastel, Woodcut,
  /// Pencil, Mixed Media, etc.)
  @override
  String? artMedium;

  /// e.g. Painting, Drawing, Sculpture, Print, Photograph, Assemblage,
  /// Collage, etc.
  @override
  String? artform;

  /// The primary artist for a work in a medium other than pencils or digital
  /// line art--for example, if the primary artwork is done in watercolors or
  /// digital paints.
  @override
  SchemaPerson? artist;

  /// The supporting materials for the artwork, e.g. Canvas, Paper, Wood,
  /// Board, etc.
  @override
  String? artworkSurface;

  /// The individual who adds color to inked drawings.
  @override
  SchemaPerson? colorist;

  /// The depth of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  @override
  dynamic depth;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  @override
  dynamic height;

  /// The individual who traces over the pencil drawings in ink after pencils
  /// are complete.
  @override
  SchemaPerson? inker;

  /// The individual who adds lettering, including speech balloons and sound
  /// effects, to artwork.
  @override
  SchemaPerson? letterer;

  /// The individual who draws the primary narrative artwork.
  @override
  SchemaPerson? penciler;

  /// A material used as a surface in some artwork, e.g. Canvas, Paper, Wood,
  /// Board, etc.
  @override
  @Deprecated('Use [artworkSurface]. See https://schema.org/surface')
  String? surface;

  /// The weight of the product or person.
  ///
  /// Supported types: [SchemaMass], [SchemaQuantitativeValue]
  @override
  dynamic weight;

  /// The width of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  @override
  dynamic width;

  /// Create a new instance of [SchemaSequentialArt]
  SchemaSequentialArt({
    super.about,
    super.abridged,
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
    super.bookEdition,
    super.bookFormat,
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
    super.illustrator,
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
    super.isbn,
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
    super.numberOfPages,
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
    this.artEdition,
    this.artMedium,
    this.artform,
    this.artist,
    this.artworkSurface,
    this.colorist,
    this.depth,
    this.height,
    this.inker,
    this.letterer,
    this.penciler,
    this.surface,
    this.weight,
    this.width,
  });

  /// Serialize [SchemaSequentialArt] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SequentialArt',
        'artEdition': convertToJsonLd(artEdition, [String, int]),
        'artMedium': convertToJsonLd(artMedium, [String]),
        'artform': convertToJsonLd(artform, [String]),
        'artist': convertToJsonLd(artist, [SchemaPerson]),
        'artworkSurface': convertToJsonLd(artworkSurface, [String]),
        'colorist': convertToJsonLd(colorist, [SchemaPerson]),
        'depth':
            convertToJsonLd(depth, [SchemaDistance, SchemaQuantitativeValue]),
        'height':
            convertToJsonLd(height, [SchemaDistance, SchemaQuantitativeValue]),
        'inker': convertToJsonLd(inker, [SchemaPerson]),
        'letterer': convertToJsonLd(letterer, [SchemaPerson]),
        'penciler': convertToJsonLd(penciler, [SchemaPerson]),
        'surface': convertToJsonLd(surface, [String]),
        'weight':
            convertToJsonLd(weight, [SchemaMass, SchemaQuantitativeValue]),
        'width':
            convertToJsonLd(width, [SchemaDistance, SchemaQuantitativeValue]),
      });
}
