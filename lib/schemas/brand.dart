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
import 'package:schema_org/schemas/aggregate_rating.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/review.dart';

/// A brand is a name used by an organization or business person for labeling
/// a product, product group, or similar.
/// See https://schema.org/Brand
class SchemaBrand extends SchemaIntangible {
  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

  /// An associated logo.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic logo;

  /// A review of the item.
  SchemaReview? review;

  /// A slogan or motto associated with the item.
  String? slogan;

  /// Create a new instance of [SchemaBrand]
  SchemaBrand({
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
    this.aggregateRating,
    this.logo,
    this.review,
    this.slogan,
  });

  /// Serialize [SchemaBrand] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Brand',
        'aggregateRating': convertToJsonLd(aggregateRating),
        'logo':
            convertToJsonLd(logo, (v) => v is SchemaImageObject || v is String),
        'review': convertToJsonLd(review),
        'slogan': convertToJsonLd(slogan),
      });
}
