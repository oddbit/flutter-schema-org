// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/rating.dart';
import 'package:schema_org/schemas/thing.dart';

/// The average rating based on multiple ratings or reviews.
/// See https://schema.org/AggregateRating
class SchemaAggregateRating extends SchemaRating {
  /// The item that is being reviewed/rated.
  SchemaThing? itemReviewed;

  /// The count of total number of ratings.
  int? ratingCount;

  /// The count of total number of reviews.
  int? reviewCount;

  /// Create a new instance of [SchemaAggregateRating]
  SchemaAggregateRating({
    super.additionalType,
    super.alternateName,
    super.author,
    super.bestRating,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.ratingExplanation,
    super.ratingValue,
    super.reviewAspect,
    super.sameAs,
    super.subjectOf,
    super.url,
    super.worstRating,
    this.itemReviewed,
    this.ratingCount,
    this.reviewCount,
  });

  /// Serialize [SchemaAggregateRating] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'AggregateRating',
        'itemReviewed': convertToJsonLd(itemReviewed, [SchemaThing]),
        'ratingCount': convertToJsonLd(ratingCount, [int]),
        'reviewCount': convertToJsonLd(reviewCount, [int]),
      });
}
