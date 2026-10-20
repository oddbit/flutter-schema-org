// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/assess_action.dart';
import 'package:schema_org/schemas/review.dart';

/// The act of producing a balanced opinion about the object for an audience.
/// An agent reviews an object with participants resulting in a review.
/// See https://schema.org/ReviewAction
class SchemaReviewAction extends SchemaAssessAction {
  /// A sub property of result. The review that resulted in the performing of
  /// the action.
  SchemaReview? resultReview;

  /// Create a new instance of [SchemaReviewAction]
  SchemaReviewAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.identifier,
    super.image,
    super.instrument,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.provider,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
    this.resultReview,
  });

  /// Serialize [SchemaReviewAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ReviewAction',
        'resultReview': convertToJsonLd(resultReview),
      });
}
