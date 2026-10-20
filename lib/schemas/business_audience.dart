// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// A set of characteristics belonging to businesses, e.g. who compose an
/// item's target audience.
/// See https://schema.org/BusinessAudience
class SchemaBusinessAudience extends SchemaAudience {
  /// The number of employees in an organization, e.g. business.
  SchemaQuantitativeValue? numberOfEmployees;

  /// The size of the business in annual revenue.
  SchemaQuantitativeValue? yearlyRevenue;

  /// The age of the business.
  SchemaQuantitativeValue? yearsInOperation;

  /// Create a new instance of [SchemaBusinessAudience]
  SchemaBusinessAudience({
    super.additionalType,
    super.alternateName,
    super.audienceType,
    super.description,
    super.disambiguatingDescription,
    super.geographicArea,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.numberOfEmployees,
    this.yearlyRevenue,
    this.yearsInOperation,
  });

  /// Serialize [SchemaBusinessAudience] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BusinessAudience',
        'numberOfEmployees': convertToJsonLd(numberOfEmployees),
        'yearlyRevenue': convertToJsonLd(yearlyRevenue),
        'yearsInOperation': convertToJsonLd(yearsInOperation),
      });
}
