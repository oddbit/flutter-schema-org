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
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// A statistical distribution of values.
/// See https://schema.org/QuantitativeValueDistribution
class SchemaQuantitativeValueDistribution extends SchemaStructuredValue {
  /// The duration of the item (movie, audio recording, event, etc.) in [ISO
  /// 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  dynamic duration;

  /// The median value.
  num? median;

  /// The 10th percentile value.
  num? percentile10;

  /// The 25th percentile value.
  num? percentile25;

  /// The 75th percentile value.
  num? percentile75;

  /// The 90th percentile value.
  num? percentile90;

  /// Create a new instance of [SchemaQuantitativeValueDistribution]
  SchemaQuantitativeValueDistribution({
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
    this.duration,
    this.median,
    this.percentile10,
    this.percentile25,
    this.percentile75,
    this.percentile90,
  });

  /// Serialize [SchemaQuantitativeValueDistribution] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'QuantitativeValueDistribution',
        'duration': convertToJsonLd(duration,
            (v) => v is SchemaDuration || v is SchemaQuantitativeValue),
        'median': convertToJsonLd(median),
        'percentile10': convertToJsonLd(percentile10),
        'percentile25': convertToJsonLd(percentile25),
        'percentile75': convertToJsonLd(percentile75),
        'percentile90': convertToJsonLd(percentile90),
      });
}
