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

/// the population type is [SchemaPerson]; the measuredProperty
/// [Schemaheight]; the [SchemastatType] [Schemamedian]; the [Schemagender]
/// [SchemaFemale]. It is important to note that there are many kinds of
/// scientific quantitative observation which are not fully, perfectly or
/// unambiguously described following this pattern, or with solely Schema.org
/// terminology. The approach taken here is designed to allow partial,
/// incremental or minimal description of [SchemaStatisticalVariable]s, and
/// the use of detailed sets of entity and property IDs from external
/// repositories. The [SchemameasurementMethod], [SchemaunitCode] and
/// [SchemaunitText] properties can also be used to clarify the specific
/// nature and notation of an observed measurement.
/// See https://schema.org/StatisticalVariable
class SchemaStatisticalVariable extends SchemaConstraintNode {
  /// //www.gs1.org/voc/?show=properties).
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

  /// "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or
  /// "immunofluorescence". If the [SchemavariableMeasured] is "depression
  /// rating", the [SchemameasurementTechnique] could be "Zung Scale" or
  /// "HAM-D" or "Beck Depression Inventory".
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
        'measuredProperty': convertToJsonLd(measuredProperty, [SchemaProperty]),
        'measurementDenominator': convertToJsonLd(
            measurementDenominator, [SchemaStatisticalVariable]),
        'measurementMethod': convertToJsonLd(measurementMethod,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String]),
        'measurementQualifier':
            convertToJsonLd(measurementQualifier, [SchemaEnumeration]),
        'measurementTechnique': convertToJsonLd(measurementTechnique,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String]),
        'populationType': convertToJsonLd(populationType, [SchemaClass]),
        'statType': convertToJsonLd(statType, [SchemaProperty, String]),
      });
}
