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
import 'package:schema_org/schemas/day_of_week.dart';
import 'package:schema_org/schemas/opening_hours_specification.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// ServicePeriod represents a duration with some constraints about cutoff
/// time and business days. This is used e.g. in shipping for handling times
/// or transit time.
/// See https://schema.org/ServicePeriod
class SchemaServicePeriod extends SchemaStructuredValue {
  /// Days of the week when the merchant typically operates, indicated via
  /// opening hours markup.
  ///
  /// Supported types: [SchemaDayOfWeek], [SchemaOpeningHoursSpecification]
  dynamic businessDays;

  /// 30 pm Eastern Standard Time (EST) which is 5 hours behind Coordinated
  /// Universal Time (UTC).
  String? cutoffTime;

  /// //en.wikipedia.org/wiki/ISO_8601).
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  dynamic duration;

  /// Create a new instance of [SchemaServicePeriod]
  SchemaServicePeriod({
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
    this.businessDays,
    this.cutoffTime,
    this.duration,
  });

  /// Serialize [SchemaServicePeriod] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ServicePeriod',
        'businessDays': convertToJsonLd(
            businessDays, [SchemaDayOfWeek, SchemaOpeningHoursSpecification]),
        'cutoffTime': convertToJsonLd(cutoffTime, [String]),
        'duration': convertToJsonLd(
            duration, [SchemaDuration, SchemaQuantitativeValue]),
      });
}
