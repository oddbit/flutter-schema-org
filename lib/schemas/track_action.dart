// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/find_action.dart';
import 'package:schema_org/schemas/delivery_method.dart';

/// An agent tracks an object for updates.\n\nRelated actions:\n\n*
/// [SchemaFollowAction]: Unlike FollowAction, TrackAction refers to the
/// interest on the location of innanimates objects.\n*
/// [SchemaSubscribeAction]: Unlike SubscribeAction, TrackAction refers to
/// the interest on the location of innanimate objects.
/// See https://schema.org/TrackAction
class SchemaTrackAction extends SchemaFindAction {
  /// A sub property of instrument. The method of delivery.
  SchemaDeliveryMethod? deliveryMethod;

  /// Create a new instance of [SchemaTrackAction]
  SchemaTrackAction({
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
    this.deliveryMethod,
  });

  /// Serialize [SchemaTrackAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TrackAction',
        'deliveryMethod': convertToJsonLd(deliveryMethod),
      });
}
