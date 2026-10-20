// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/media_object.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/measurement_method_enum.dart';

/// All or part of a [SchemaDataset] in downloadable form.
/// See https://schema.org/DataDownload
class SchemaDataDownload extends SchemaMediaObject {
  /// A subproperty of [SchemameasurementTechnique] that can be used for
  /// specifying specific methods, in particular via
  /// [SchemaMeasurementMethodEnum].
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaMeasurementMethodEnum],
  /// [String]
  dynamic measurementMethod;

  /// A technique, method or technology used in an [SchemaObservation],
  /// [SchemaStatisticalVariable] or [SchemaDataset] (or [SchemaDataDownload],
  /// [SchemaDataCatalog]), corresponding to the method used for measuring the
  /// corresponding variable(s) (for datasets, described using
  /// [SchemavariableMeasured]; for [SchemaObservation], a
  /// [SchemaStatisticalVariable]). Often but not necessarily each
  /// [SchemavariableMeasured] will have an explicit representation as (or
  /// mapping to) an property such as those defined in Schema.org, or other RDF
  /// vocabularies and "knowledge graphs". In that case the subproperty of
  /// [SchemavariableMeasured] called [SchemameasuredProperty] is applicable.
  /// The [SchemameasurementTechnique] property helps when extra clarification
  /// is needed about how a [SchemameasuredProperty] was measured. This is
  /// oriented towards scientific and scholarly dataset publication but may
  /// have broader applicability; it is not intended as a full representation
  /// of measurement, but can often serve as a high level summary for dataset
  /// discovery.
  ///
  /// For example, if [SchemavariableMeasured] is: molecule concentration,
  /// [SchemameasurementTechnique] could be: "mass spectrometry" or "nmr
  /// spectroscopy" or "colorimetry" or "immunofluorescence". If the
  /// [SchemavariableMeasured] is "depression rating", the
  /// [SchemameasurementTechnique] could be "Zung Scale" or "HAM-D" or "Beck
  /// Depression Inventory".
  ///
  /// If there are several [SchemavariableMeasured] properties recorded for
  /// some given data object, use a [SchemaPropertyValue] for each
  /// [SchemavariableMeasured] and attach the corresponding
  /// [SchemameasurementTechnique]. The value can also be from an enumeration,
  /// organized as a [SchemaMeasurementMethodEnum].
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaMeasurementMethodEnum],
  /// [String]
  dynamic measurementTechnique;

  /// Create a new instance of [SchemaDataDownload]
  SchemaDataDownload({
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
    super.associatedArticle,
    super.associatedMedia,
    super.audience,
    super.audio,
    super.author,
    super.award,
    super.awards,
    super.bitrate,
    super.character,
    super.citation,
    super.comment,
    super.commentCount,
    super.conditionsOfAccess,
    super.contentLocation,
    super.contentRating,
    super.contentReferenceTime,
    super.contentSize,
    super.contentUrl,
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
    super.duration,
    super.editEIDR,
    super.editor,
    super.educationalAlignment,
    super.educationalLevel,
    super.educationalUse,
    super.embedUrl,
    super.encodesCreativeWork,
    super.encoding,
    super.encodingFormat,
    super.encodings,
    super.endTime,
    super.exampleOfWork,
    super.expires,
    super.fileFormat,
    super.funder,
    super.funding,
    super.genre,
    super.hasPart,
    super.headline,
    super.height,
    super.identifier,
    super.image,
    super.inLanguage,
    super.ineligibleRegion,
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
    super.playerType,
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
    super.regionsAllowed,
    super.releasedEvent,
    super.requiresSubscription,
    super.review,
    super.reviews,
    super.sameAs,
    super.schemaVersion,
    super.sdDatePublished,
    super.sdLicense,
    super.sdPublisher,
    super.sha256,
    super.size,
    super.sourceOrganization,
    super.spatial,
    super.spatialCoverage,
    super.sponsor,
    super.startTime,
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
    super.uploadDate,
    super.url,
    super.usageInfo,
    super.version,
    super.video,
    super.width,
    super.wordCount,
    super.workExample,
    super.workTranslation,
    this.measurementMethod,
    this.measurementTechnique,
  });

  /// Serialize [SchemaDataDownload] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DataDownload',
        'measurementMethod': convertToJsonLd(
            measurementMethod,
            (v) =>
                v is SchemaDefinedTerm ||
                v is SchemaMeasurementMethodEnum ||
                v is String),
        'measurementTechnique': convertToJsonLd(
            measurementTechnique,
            (v) =>
                v is SchemaDefinedTerm ||
                v is SchemaMeasurementMethodEnum ||
                v is String),
      });
}
