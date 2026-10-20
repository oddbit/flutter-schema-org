// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/action_access_specification.dart';
import 'package:schema_org/schemas/offer.dart';

/// The act of ingesting information/resources/food.
/// See https://schema.org/ConsumeAction
class SchemaConsumeAction extends SchemaAction {
  /// A set of requirements that must be fulfilled in order to perform an
  /// Action. If more than one value is specified, fulfilling one set of
  /// requirements will allow the Action to be performed.
  SchemaActionAccessSpecification? actionAccessibilityRequirement;

  /// An Offer which must be accepted before the user can perform the Action.
  /// For example, the user may need to buy a movie before being able to watch
  /// it.
  SchemaOffer? expectsAcceptanceOf;

  /// Create a new instance of [SchemaConsumeAction]
  SchemaConsumeAction({
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
    this.actionAccessibilityRequirement,
    this.expectsAcceptanceOf,
  });

  /// Serialize [SchemaConsumeAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ConsumeAction',
        'actionAccessibilityRequirement':
            convertToJsonLd(actionAccessibilityRequirement),
        'expectsAcceptanceOf': convertToJsonLd(expectsAcceptanceOf),
      });
}
