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

/// having an explicit type for indicating a positive, endorsement rating is
/// particularly useful in the absence of numeric scales as it helps
/// consumers understand that the rating is broadly positive.
/// See https://schema.org/EndorsementRating
class SchemaEndorsementRating extends SchemaRating {
  /// Create a new instance of [SchemaEndorsementRating]
  SchemaEndorsementRating({
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
  });

  /// Serialize [SchemaEndorsementRating] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EndorsementRating',
      });
}
