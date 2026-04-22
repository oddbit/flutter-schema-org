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
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/enumeration.dart';
import 'package:schema_org/schemas/measurement_type_enumeration.dart';
import 'package:schema_org/schemas/qualitative_value.dart';

/// A point value or interval for product characteristics and other purposes.
/// See https://schema.org/QuantitativeValue
class SchemaQuantitativeValue extends SchemaStructuredValue {
  /// //schema.org/gtin13, ...) will typically expect such data to be provided
  /// using those properties, rather than using the generic property/value
  /// mechanism.
  SchemaPropertyValue? additionalProperty;

  /// The upper value of some characteristic or property.
  num? maxValue;

  /// The lower value of some characteristic or property.
  num? minValue;

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
  /// For [SchemaPropertyValue], it can be 'Text', 'Number', 'Boolean', or
  /// 'StructuredValue'.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO'
  /// (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar
  /// Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than
  /// ',' to indicate a decimal point. Avoid using these symbols as a
  /// readability separator.
  ///
  /// Supported types: [String], [SchemaStructuredValue], [bool], [num]
  dynamic value;

  /// A secondary value that provides additional information on the original
  /// value, e.g. a reference temperature or a type of measurement.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaEnumeration],
  /// [SchemaMeasurementTypeEnumeration], [SchemaPropertyValue],
  /// [SchemaQualitativeValue], [SchemaQuantitativeValue], [String],
  /// [SchemaStructuredValue]
  dynamic valueReference;

  /// Create a new instance of [SchemaQuantitativeValue]
  SchemaQuantitativeValue({
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
    this.additionalProperty,
    this.maxValue,
    this.minValue,
    this.unitCode,
    this.unitText,
    this.value,
    this.valueReference,
  });

  /// Serialize [SchemaQuantitativeValue] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'QuantitativeValue',
        'additionalProperty':
            convertToJsonLd(additionalProperty, [SchemaPropertyValue]),
        'maxValue': convertToJsonLd(maxValue, [num]),
        'minValue': convertToJsonLd(minValue, [num]),
        'unitCode': convertToJsonLd(unitCode, [String]),
        'unitText': convertToJsonLd(unitText, [String]),
        'value':
            convertToJsonLd(value, [String, SchemaStructuredValue, bool, num]),
        'valueReference': convertToJsonLd(valueReference, [
          SchemaDefinedTerm,
          SchemaEnumeration,
          SchemaMeasurementTypeEnumeration,
          SchemaPropertyValue,
          SchemaQualitativeValue,
          SchemaQuantitativeValue,
          String,
          SchemaStructuredValue
        ]),
      });
}
