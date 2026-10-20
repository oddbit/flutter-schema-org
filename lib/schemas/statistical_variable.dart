// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/constraint_node.dart';
import 'package:schema_org/schemas/property.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/measurement_method_enum.dart';
import 'package:schema_org/schemas/enumeration.dart';
import 'package:schema_org/schemas/class.dart';

/// [SchemaStatisticalVariable] represents any type of statistical metric
/// that can be measured at a place and time. The usage pattern for
/// [SchemaStatisticalVariable] is typically expressed using
/// [SchemaObservation] with an explicit [SchemapopulationType], which is a
/// type, typically drawn from Schema.org. Each [SchemaStatisticalVariable]
/// is marked as a [SchemaConstraintNode], meaning that some properties
/// (those listed using [SchemaconstraintProperty]) serve in this setting
/// solely to define the statistical variable rather than literally describe
/// a specific person, place or thing. For example, a
/// [SchemaStatisticalVariable] Median_Height_Person_Female representing the
/// median height of women, could be written as follows: the population type
/// is [SchemaPerson]; the measuredProperty [Schemaheight]; the
/// [SchemastatType] [Schemamedian]; the [Schemagender] [SchemaFemale]. It is
/// important to note that there are many kinds of scientific quantitative
/// observation which are not fully, perfectly or unambiguously described
/// following this pattern, or with solely Schema.org terminology. The
/// approach taken here is designed to allow partial, incremental or minimal
/// description of [SchemaStatisticalVariable]s, and the use of detailed sets
/// of entity and property IDs from external repositories. The
/// [SchemameasurementMethod], [SchemaunitCode] and [SchemaunitText]
/// properties can also be used to clarify the specific nature and notation
/// of an observed measurement.
/// See https://schema.org/StatisticalVariable
class SchemaStatisticalVariable extends SchemaConstraintNode {
  /// The measuredProperty of an [SchemaObservation], typically via its
  /// [SchemaStatisticalVariable]. There are various kinds of applicable
  /// [SchemaProperty]: a schema.org property, a property from other
  /// RDF-compatible systems, e.g. W3C RDF Data Cube, Data Commons, Wikidata,
  /// or schema.org extensions such as
  /// [GS1's](https://www.gs1.org/voc/?show=properties).
  SchemaProperty? measuredProperty;

  /// Identifies the denominator variable when an observation represents a
  /// ratio or percentage.
  SchemaStatisticalVariable? measurementDenominator;

  /// A subproperty of [SchemameasurementTechnique] that can be used for
  /// specifying specific methods, in particular via
  /// [SchemaMeasurementMethodEnum].
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaMeasurementMethodEnum],
  /// [String]
  dynamic measurementMethod;

  /// Provides additional qualification to an observation. For example, a GDP
  /// observation measures the Nominal value.
  SchemaEnumeration? measurementQualifier;

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

  /// Indicates the populationType common to all members of a
  /// [SchemaStatisticalPopulation] or all cases within the scope of a
  /// [SchemaStatisticalVariable].
  SchemaClass? populationType;

  /// Indicates the kind of statistic represented by a
  /// [SchemaStatisticalVariable], e.g. mean, count etc. The value of statType
  /// is a property, either from within Schema.org (e.g. [Schemamedian],
  /// [SchemamarginOfError], [SchemamaxValue], [SchemaminValue]) or from other
  /// compatible (e.g. RDF) systems such as DataCommons.org or Wikidata.org.
  ///
  /// Supported types: [SchemaProperty], [String]
  dynamic statType;

  /// Create a new instance of [SchemaStatisticalVariable]
  SchemaStatisticalVariable({
    super.additionalType,
    super.alternateName,
    super.constraintProperty,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.numConstraints,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.measuredProperty,
    this.measurementDenominator,
    this.measurementMethod,
    this.measurementQualifier,
    this.measurementTechnique,
    this.populationType,
    this.statType,
  });

  /// Serialize [SchemaStatisticalVariable] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'StatisticalVariable',
        'measuredProperty': convertToJsonLd(measuredProperty),
        'measurementDenominator': convertToJsonLd(measurementDenominator),
        'measurementMethod': convertToJsonLd(
            measurementMethod,
            (v) =>
                v is SchemaDefinedTerm ||
                v is SchemaMeasurementMethodEnum ||
                v is String),
        'measurementQualifier': convertToJsonLd(measurementQualifier),
        'measurementTechnique': convertToJsonLd(
            measurementTechnique,
            (v) =>
                v is SchemaDefinedTerm ||
                v is SchemaMeasurementMethodEnum ||
                v is String),
        'populationType': convertToJsonLd(populationType),
        'statType': convertToJsonLd(
            statType, (v) => v is SchemaProperty || v is String),
      });
}
