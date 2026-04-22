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
import 'package:schema_org/schemas/thing.dart';

/// A Property value specification.
/// See https://schema.org/PropertyValueSpecification
class SchemaPropertyValueSpecification extends SchemaIntangible {
  /// The default value of the input. For properties that expect a literal, the
  /// default is a literal value, for properties that expect an object, it's an
  /// ID reference to one of the current values.
  ///
  /// Supported types: [String], [SchemaThing]
  dynamic defaultValue;

  /// The upper value of some characteristic or property.
  num? maxValue;

  /// The lower value of some characteristic or property.
  num? minValue;

  /// Whether multiple values are allowed for the property. Default is false.
  bool? multipleValues;

  /// Whether or not a property is mutable. Default is false. Specifying this
  /// for a property that also has a value makes it act similar to a "hidden"
  /// input in an HTML form.
  bool? readonlyValue;

  /// The stepValue attribute indicates the granularity that is expected (and
  /// required) of the value in a PropertyValueSpecification.
  num? stepValue;

  /// Specifies the allowed range for number of characters in a literal value.
  num? valueMaxLength;

  /// Specifies the minimum allowed range for number of characters in a literal
  /// value.
  num? valueMinLength;

  /// Indicates the name of the PropertyValueSpecification to be used in URL
  /// templates and form encoding in a manner analogous to HTML's input@name.
  String? valueName;

  /// Specifies a regular expression for testing literal values according to
  /// the HTML spec.
  String? valuePattern;

  /// Whether the property must be filled in to complete the action. Default is
  /// false.
  bool? valueRequired;

  /// Create a new instance of [SchemaPropertyValueSpecification]
  SchemaPropertyValueSpecification({
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
    this.defaultValue,
    this.maxValue,
    this.minValue,
    this.multipleValues,
    this.readonlyValue,
    this.stepValue,
    this.valueMaxLength,
    this.valueMinLength,
    this.valueName,
    this.valuePattern,
    this.valueRequired,
  });

  /// Serialize [SchemaPropertyValueSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PropertyValueSpecification',
        'defaultValue': convertToJsonLd(defaultValue, [String, SchemaThing]),
        'maxValue': convertToJsonLd(maxValue, [num]),
        'minValue': convertToJsonLd(minValue, [num]),
        'multipleValues': convertToJsonLd(multipleValues, [bool]),
        'readonlyValue': convertToJsonLd(readonlyValue, [bool]),
        'stepValue': convertToJsonLd(stepValue, [num]),
        'valueMaxLength': convertToJsonLd(valueMaxLength, [num]),
        'valueMinLength': convertToJsonLd(valueMinLength, [num]),
        'valueName': convertToJsonLd(valueName, [String]),
        'valuePattern': convertToJsonLd(valuePattern, [String]),
        'valueRequired': convertToJsonLd(valueRequired, [bool]),
      });
}
