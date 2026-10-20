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
import 'package:schema_org/schemas/data_catalog.dart';
import 'package:schema_org/schemas/data_download.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/measurement_method_enum.dart';
import 'package:schema_org/schemas/property.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/statistical_variable.dart';

/// A body of structured information describing some topic(s) of interest.
/// See https://schema.org/Dataset
class SchemaDataset extends SchemaCreativeWork {
  /// A data catalog which contains this dataset.
  @Deprecated('Use [includedInDataCatalog]. See https://schema.org/catalog')
  SchemaDataCatalog? catalog;

  /// The range of temporal applicability of a dataset, e.g. for a 2011 census
  /// dataset, the year 2011 (in ISO 8601 time interval format).
  @Deprecated(
      'Use [temporalCoverage]. See https://schema.org/datasetTimeInterval')
  String? datasetTimeInterval;

  /// A downloadable form of this dataset, at a specific location, in a
  /// specific format. This property can be repeated if different variations
  /// are available. There is no expectation that different downloadable
  /// distributions must contain exactly equivalent information (see also
  /// [DCAT](https://www.w3.org/TR/vocab-dcat-3/#Class:Distribution) on this
  /// point). Different distributions might include or exclude different
  /// subsets of the entire dataset, for example.
  SchemaDataDownload? distribution;

  /// A data catalog which contains this dataset (this property was previously
  /// 'catalog', preferred name is now 'includedInDataCatalog').
  @Deprecated(
      'Use [includedInDataCatalog]. See https://schema.org/includedDataCatalog')
  SchemaDataCatalog? includedDataCatalog;

  /// A data catalog which contains this dataset.
  SchemaDataCatalog? includedInDataCatalog;

  /// The International Standard Serial Number (ISSN) that identifies this
  /// serial publication. You can repeat this property to identify different
  /// formats of, or the linking ISSN (ISSN-L) for, this serial publication.
  String? issn;

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

  /// The variableMeasured property can indicate (repeated as necessary) the
  /// variables that are measured in some dataset, either described as text or
  /// as pairs of identifier and description using PropertyValue, or more
  /// explicitly as a [SchemaStatisticalVariable].
  ///
  /// Supported types: [SchemaProperty], [SchemaPropertyValue],
  /// [SchemaStatisticalVariable], [String]
  dynamic variableMeasured;

  /// Create a new instance of [SchemaDataset]
  SchemaDataset({
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
    this.catalog,
    this.datasetTimeInterval,
    this.distribution,
    this.includedDataCatalog,
    this.includedInDataCatalog,
    this.issn,
    this.measurementMethod,
    this.measurementTechnique,
    this.variableMeasured,
  });

  /// Serialize [SchemaDataset] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Dataset',
        'catalog': convertToJsonLd(catalog),
        'datasetTimeInterval': convertToJsonLd(datasetTimeInterval),
        'distribution': convertToJsonLd(distribution),
        'includedDataCatalog': convertToJsonLd(includedDataCatalog),
        'includedInDataCatalog': convertToJsonLd(includedInDataCatalog),
        'issn': convertToJsonLd(issn),
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
        'variableMeasured': convertToJsonLd(
            variableMeasured,
            (v) =>
                v is SchemaProperty ||
                v is SchemaPropertyValue ||
                v is SchemaStatisticalVariable ||
                v is String),
      });
}
