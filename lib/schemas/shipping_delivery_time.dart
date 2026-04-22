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
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/service_period.dart';

/// ShippingDeliveryTime provides various pieces of information about
/// delivery times for shipping.
/// See https://schema.org/ShippingDeliveryTime
class SchemaShippingDeliveryTime extends SchemaStructuredValue {
  /// Days of the week when the merchant typically operates, indicated via
  /// opening hours markup.
  ///
  /// Supported types: [SchemaDayOfWeek], [SchemaOpeningHoursSpecification]
  dynamic businessDays;

  /// 30 pm Eastern Standard Time (EST) which is 5 hours behind Coordinated
  /// Universal Time (UTC).
  String? cutoffTime;

  /// minValue, maxValue, unitCode (d for DAY). This is by common convention
  /// assumed to mean business days (if a unitCode is used, coded as "d"), i.e.
  /// only counting days when the business normally operates.
  ///
  /// In the context of [SchemaShippingService], use the [SchemaServicePeriod]
  /// format, that contains the same information in a structured form, with
  /// cut-off time, business days and duration.
  ///
  /// Supported types: [SchemaQuantitativeValue], [SchemaServicePeriod]
  dynamic handlingTime;

  /// minValue, maxValue, unitCode (d for DAY).
  ///
  /// In the context of [SchemaShippingConditions], use the
  /// [SchemaServicePeriod]. It has a duration (as a [SchemaQuantitativeValue])
  /// and also business days and a cut-off time.
  ///
  /// Supported types: [SchemaQuantitativeValue], [SchemaServicePeriod]
  dynamic transitTime;

  /// Create a new instance of [SchemaShippingDeliveryTime]
  SchemaShippingDeliveryTime({
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
    this.handlingTime,
    this.transitTime,
  });

  /// Serialize [SchemaShippingDeliveryTime] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ShippingDeliveryTime',
        'businessDays': convertToJsonLd(
            businessDays, [SchemaDayOfWeek, SchemaOpeningHoursSpecification]),
        'cutoffTime': convertToJsonLd(cutoffTime, [String]),
        'handlingTime': convertToJsonLd(
            handlingTime, [SchemaQuantitativeValue, SchemaServicePeriod]),
        'transitTime': convertToJsonLd(
            transitTime, [SchemaQuantitativeValue, SchemaServicePeriod]),
      });
}
