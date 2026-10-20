// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/property.dart';
import 'package:schema_org/schemas/statistical_variable.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/measurement_method_enum.dart';
import 'package:schema_org/schemas/enumeration.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/qualitative_value.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/measurement_type_enumeration.dart';

/// Instances of the class [SchemaObservation] are used to specify
/// observations about an entity at a particular time. The principal
/// properties of an [SchemaObservation] are [SchemaobservationAbout],
/// [SchemameasuredProperty], [SchemastatType], [Schemavalue] and
/// [[observationDate] and [SchemameasuredProperty]. Some but not all
/// Observations represent a [SchemaQuantitativeValue]. Quantitative
/// observations can be about a [SchemaStatisticalVariable], which is an
/// abstract specification about which we can make observations that are
/// grounded at a particular location and time.
///
/// Observations can also encode a subset of simple RDF-like statements (its
/// observationAbout, a StatisticalVariable, defining the measuredPoperty;
/// its observationAbout property indicating the entity the statement is
/// about, and [Schemavalue] )
///
/// In the context of a quantitative knowledge graph, typical properties
/// could include [SchemameasuredProperty], [SchemaobservationAbout],
/// [SchemaobservationDate], [Schemavalue], [SchemaunitCode],
/// [SchemaunitText], [SchemameasurementMethod].
/// See https://schema.org/Observation
class SchemaObservation extends SchemaIntangible
    implements SchemaQuantitativeValue {
  /// A [SchemamarginOfError] for an [SchemaObservation].
  SchemaQuantitativeValue? marginOfError;

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

  /// The [SchemaobservationAbout] property identifies an entity, often a
  /// [SchemaPlace], associated with an [SchemaObservation].
  ///
  /// Supported types: [SchemaPlace], [SchemaThing]
  dynamic observationAbout;

  /// The observationDate of an [SchemaObservation].
  String? observationDate;

  /// The length of time an Observation took place over. The format follows
  /// `P[0-9]*[Y|M|D|h|m|s]`. For example, P1Y is Period 1 Year, P3M is Period
  /// 3 Months, P3h is Period 3 hours.
  String? observationPeriod;

  /// The variableMeasured property can indicate (repeated as necessary) the
  /// variables that are measured in some dataset, either described as text or
  /// as pairs of identifier and description using PropertyValue, or more
  /// explicitly as a [SchemaStatisticalVariable].
  ///
  /// Supported types: [SchemaProperty], [SchemaPropertyValue],
  /// [SchemaStatisticalVariable], [String]
  dynamic variableMeasured;

  /// A property-value pair representing an additional characteristic of the
  /// entity, e.g. a product feature or another characteristic for which there
  /// is no matching property in schema.org.\n\nNote: Publishers should be
  /// aware that applications designed to use specific schema.org properties
  /// (e.g. https://schema.org/width, https://schema.org/color,
  /// https://schema.org/gtin13, ...) will typically expect such data to be
  /// provided using those properties, rather than using the generic
  /// property/value mechanism.
  @override
  SchemaPropertyValue? additionalProperty;

  /// The upper value of some characteristic or property.
  @override
  num? maxValue;

  /// The lower value of some characteristic or property.
  @override
  num? minValue;

  /// The unit of measurement given using the UN/CEFACT Common Code (3
  /// characters) or a URL. Other codes than the UN/CEFACT Common Code may be
  /// used with a prefix followed by a colon.
  @override
  String? unitCode;

  /// A string or text indicating the unit of measurement. Useful if you cannot
  /// provide a standard unit code for <a href='unitCode'>unitCode</a>.
  @override
  String? unitText;

  /// The value of a [SchemaQuantitativeValue] (including [SchemaObservation])
  /// or property value node.\n\n* For [SchemaQuantitativeValue] and
  /// [SchemaMonetaryAmount], the recommended type for values is 'Number'.\n*
  /// For [SchemaPropertyValue], it can be 'Text', 'Number', 'Boolean',
  /// 'StructuredValue' or 'QualitativeValue'.\n* Use values from 0123456789
  /// (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than
  /// superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP'
  /// (U+002E)) rather than ',' to indicate a decimal point. Avoid using these
  /// symbols as a readability separator.
  ///
  /// Supported types: [SchemaQualitativeValue], [String],
  /// [SchemaStructuredValue], [bool], [num]
  @override
  dynamic value;

  /// A secondary value that provides additional information on the original
  /// value, e.g. a reference temperature or a type of measurement.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaEnumeration],
  /// [SchemaMeasurementTypeEnumeration], [SchemaPropertyValue],
  /// [SchemaQualitativeValue], [SchemaQuantitativeValue], [String],
  /// [SchemaStructuredValue]
  @override
  dynamic valueReference;

  /// Create a new instance of [SchemaObservation]
  SchemaObservation({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.marginOfError,
    this.measuredProperty,
    this.measurementDenominator,
    this.measurementMethod,
    this.measurementQualifier,
    this.measurementTechnique,
    this.observationAbout,
    this.observationDate,
    this.observationPeriod,
    this.variableMeasured,
    this.additionalProperty,
    this.maxValue,
    this.minValue,
    this.unitCode,
    this.unitText,
    this.value,
    this.valueReference,
  });

  /// Serialize [SchemaObservation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Observation',
        'marginOfError': convertToJsonLd(marginOfError),
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
        'observationAbout': convertToJsonLd(
            observationAbout, (v) => v is SchemaPlace || v is SchemaThing),
        'observationDate': convertToJsonLd(observationDate),
        'observationPeriod': convertToJsonLd(observationPeriod),
        'variableMeasured': convertToJsonLd(
            variableMeasured,
            (v) =>
                v is SchemaProperty ||
                v is SchemaPropertyValue ||
                v is SchemaStatisticalVariable ||
                v is String),
        'additionalProperty': convertToJsonLd(additionalProperty),
        'maxValue': convertToJsonLd(maxValue),
        'minValue': convertToJsonLd(minValue),
        'unitCode': convertToJsonLd(unitCode),
        'unitText': convertToJsonLd(unitText),
        'value': convertToJsonLd(
            value,
            (v) =>
                v is SchemaQualitativeValue ||
                v is String ||
                v is SchemaStructuredValue ||
                v is bool ||
                v is num),
        'valueReference': convertToJsonLd(
            valueReference,
            (v) =>
                v is SchemaDefinedTerm ||
                v is SchemaEnumeration ||
                v is SchemaMeasurementTypeEnumeration ||
                v is SchemaPropertyValue ||
                v is SchemaQualitativeValue ||
                v is SchemaQuantitativeValue ||
                v is String ||
                v is SchemaStructuredValue),
      });
}
