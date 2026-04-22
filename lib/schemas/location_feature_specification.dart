// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/opening_hours_specification.dart';

/// Specifies a location feature by providing a structured value representing
/// a feature of an accommodation as a property-value pair of varying degrees
/// of formality.
/// See https://schema.org/LocationFeatureSpecification
class SchemaLocationFeatureSpecification extends SchemaPropertyValue {
  /// The hours during which this service or contact is available.
  SchemaOpeningHoursSpecification? hoursAvailable;

  /// The date when the item becomes valid.
  String? validFrom;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  String? validThrough;

  /// Create a new instance of [SchemaLocationFeatureSpecification]
  SchemaLocationFeatureSpecification({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.maxValue,
    super.measurementMethod,
    super.measurementTechnique,
    super.minValue,
    super.name,
    super.owner,
    super.potentialAction,
    super.propertyID,
    super.sameAs,
    super.subjectOf,
    super.unitCode,
    super.unitText,
    super.url,
    super.value,
    super.valueReference,
    this.hoursAvailable,
    this.validFrom,
    this.validThrough,
  });

  /// Serialize [SchemaLocationFeatureSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'LocationFeatureSpecification',
        'hoursAvailable':
            convertToJsonLd(hoursAvailable, [SchemaOpeningHoursSpecification]),
        'validFrom': convertToJsonLd(validFrom, [String]),
        'validThrough': convertToJsonLd(validThrough, [String]),
      });
}
