// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/aggregate_rating.dart';

/// An aggregate rating of an Organization related to its role as an
/// employer.
/// See https://schema.org/EmployerAggregateRating
class SchemaEmployerAggregateRating extends SchemaAggregateRating {
  /// Create a new instance of [SchemaEmployerAggregateRating]
  SchemaEmployerAggregateRating({
    super.additionalType,
    super.alternateName,
    super.author,
    super.bestRating,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.itemReviewed,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.ratingCount,
    super.ratingExplanation,
    super.ratingValue,
    super.reviewAspect,
    super.reviewCount,
    super.sameAs,
    super.subjectOf,
    super.url,
    super.worstRating,
  });

  /// Serialize [SchemaEmployerAggregateRating] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EmployerAggregateRating',
      });
}
