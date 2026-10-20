// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/measurement_method_enum.dart';
import 'package:schema_org/schemas/qualitative_value.dart';
import 'package:schema_org/schemas/enumeration.dart';
import 'package:schema_org/schemas/measurement_type_enumeration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// A property-value pair, e.g. representing a feature of a product or place.
/// Use the 'name' property for the name of the property. If there is an
/// additional human-readable version of the value, put that into the
/// 'description' property.\n\n Always use specific schema.org properties
/// when a) they exist and b) you can populate them. Using PropertyValue as a
/// substitute will typically not trigger the same effect as using the
/// original, specific property.
/// See https://schema.org/PropertyValue
class SchemaPropertyValue extends SchemaStructuredValue {
  /// The upper value of some characteristic or property.
  num? maxValue;

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

  /// The lower value of some characteristic or property.
  num? minValue;

  /// A commonly used identifier for the characteristic represented by the
  /// property, e.g. a manufacturer or a standard code for a property.
  /// propertyID can be (1) a prefixed string, mainly meant to be used with
  /// standards for product properties; (2) a site-specific, non-prefixed
  /// string (e.g. the primary key of the property or the vendor-specific ID of
  /// the property), or (3) a URL indicating the type of the property, either
  /// pointing to an external vocabulary, or a Web resource that describes the
  /// property (e.g. a glossary entry). Standards bodies should promote a
  /// standard prefix for the identifiers of properties from their standards.
  String? propertyID;

  /// The unit of measurement given using the UN/CEFACT Common Code (3
  /// characters) or a URL. Other codes than the UN/CEFACT Common Code may be
  /// used with a prefix followed by a colon.
  String? unitCode;

  /// A string or text indicating the unit of measurement. Useful if you cannot
  /// provide a standard unit code for <a href='unitCode'>unitCode</a>.
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
  dynamic value;

  /// A header or section name for grouping related property values.
  String? valueGroup;

  /// A secondary value that provides additional information on the original
  /// value, e.g. a reference temperature or a type of measurement.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaEnumeration],
  /// [SchemaMeasurementTypeEnumeration], [SchemaPropertyValue],
  /// [SchemaQualitativeValue], [SchemaQuantitativeValue], [String],
  /// [SchemaStructuredValue]
  dynamic valueReference;

  /// Create a new instance of [SchemaPropertyValue]
  SchemaPropertyValue({
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
    this.maxValue,
    this.measurementMethod,
    this.measurementTechnique,
    this.minValue,
    this.propertyID,
    this.unitCode,
    this.unitText,
    this.value,
    this.valueGroup,
    this.valueReference,
  });

  /// Serialize [SchemaPropertyValue] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PropertyValue',
        'maxValue': convertToJsonLd(maxValue),
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
        'minValue': convertToJsonLd(minValue),
        'propertyID': convertToJsonLd(propertyID),
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
        'valueGroup': convertToJsonLd(valueGroup),
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
