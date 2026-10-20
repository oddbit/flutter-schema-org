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

/// A structured value providing information about the opening hours of a
/// place or a certain service inside a place.\n\n The place is __open__ if
/// the [Schemaopens] property is specified, and __closed__ otherwise.\n\nIf
/// the value for the [Schemacloses] property is less than the value for the
/// [Schemaopens] property then the hour range is assumed to span over the
/// next day.
/// See https://schema.org/OpeningHoursSpecification
class SchemaOpeningHoursSpecification extends SchemaStructuredValue {
  /// The closing hour of the place or service on the given day(s) of the week.
  String? closes;

  /// The day of the week for which these opening hours are valid.
  SchemaDayOfWeek? dayOfWeek;

  /// The opening hour of the place or service on the given day(s) of the week.
  String? opens;

  /// The date when the item becomes valid.
  String? validFrom;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  String? validThrough;

  /// Create a new instance of [SchemaOpeningHoursSpecification]
  SchemaOpeningHoursSpecification({
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
    this.closes,
    this.dayOfWeek,
    this.opens,
    this.validFrom,
    this.validThrough,
  });

  /// Serialize [SchemaOpeningHoursSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'OpeningHoursSpecification',
        'closes': convertToJsonLd(closes),
        'dayOfWeek': convertToJsonLd(dayOfWeek),
        'opens': convertToJsonLd(opens),
        'validFrom': convertToJsonLd(validFrom),
        'validThrough': convertToJsonLd(validThrough),
      });
}
