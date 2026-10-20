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
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/structured_value.dart';

/// A rating is an evaluation on a numeric scale, such as 1 to 5 stars.
/// See https://schema.org/Rating
class SchemaRating extends SchemaIntangible {
  /// The author of this content or rating. Please note that author is special
  /// in that HTML 5 provides a special mechanism for indicating authorship via
  /// the rel tag. That is equivalent to this and may be used interchangeably.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic author;

  /// The highest value allowed in this rating system.
  ///
  /// Supported types: [String], [num]
  dynamic bestRating;

  /// A short explanation (e.g. one to two sentences) providing background
  /// context and other information that led to the conclusion expressed in the
  /// rating. This is particularly applicable to ratings associated with "fact
  /// check" markup using [SchemaClaimReview].
  String? ratingExplanation;

  /// The rating for the content.\n\nUsage guidelines:\n\n* Use values from
  /// 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039))
  /// rather than superficially similar Unicode symbols.\n* Use '.' (Unicode
  /// 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid
  /// using these symbols as a readability separator.
  ///
  /// Supported types: [String], [num]
  dynamic ratingValue;

  /// This Review or Rating is relevant to this part or facet of the
  /// itemReviewed.
  ///
  /// Supported types: [String], [SchemaStructuredValue]
  dynamic reviewAspect;

  /// The lowest value allowed in this rating system.
  ///
  /// Supported types: [String], [num]
  dynamic worstRating;

  /// Create a new instance of [SchemaRating]
  SchemaRating({
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
    this.author,
    this.bestRating,
    this.ratingExplanation,
    this.ratingValue,
    this.reviewAspect,
    this.worstRating,
  });

  /// Serialize [SchemaRating] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Rating',
        'author': convertToJsonLd(
            author, (v) => v is SchemaOrganization || v is SchemaPerson),
        'bestRating':
            convertToJsonLd(bestRating, (v) => v is String || v is num),
        'ratingExplanation': convertToJsonLd(ratingExplanation),
        'ratingValue':
            convertToJsonLd(ratingValue, (v) => v is String || v is num),
        'reviewAspect': convertToJsonLd(
            reviewAspect, (v) => v is String || v is SchemaStructuredValue),
        'worstRating':
            convertToJsonLd(worstRating, (v) => v is String || v is num),
      });
}
