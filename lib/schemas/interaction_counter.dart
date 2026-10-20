// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/software_application.dart';
import 'package:schema_org/schemas/web_site.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/virtual_location.dart';

/// A summary of how users have interacted with this CreativeWork. In most
/// cases, authors will use a subtype to specify the specific type of
/// interaction.
/// See https://schema.org/InteractionCounter
class SchemaInteractionCounter extends SchemaStructuredValue {
  /// The endTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to end. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from January to *December*. For media, including audio
  /// and video, it's the time offset of the end of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  String? endTime;

  /// The WebSite or SoftwareApplication where the interactions took place.
  ///
  /// Supported types: [SchemaSoftwareApplication], [SchemaWebSite]
  dynamic interactionService;

  /// The Action representing the type of interaction. For up votes, +1s, etc.
  /// use [SchemaLikeAction]. For down votes use [SchemaDislikeAction].
  /// Otherwise, use the most specific Action.
  SchemaAction? interactionType;

  /// The location of, for example, where an event is happening, where an
  /// organization is located, or where an action takes place.
  ///
  /// Supported types: [SchemaPlace], [SchemaPostalAddress], [String],
  /// [SchemaVirtualLocation]
  dynamic location;

  /// The startTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to start. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from *January* to December. For media, including audio
  /// and video, it's the time offset of the start of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  String? startTime;

  /// The number of interactions for the CreativeWork using the WebSite or
  /// SoftwareApplication.
  int? userInteractionCount;

  /// Create a new instance of [SchemaInteractionCounter]
  SchemaInteractionCounter({
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
    this.endTime,
    this.interactionService,
    this.interactionType,
    this.location,
    this.startTime,
    this.userInteractionCount,
  });

  /// Serialize [SchemaInteractionCounter] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'InteractionCounter',
        'endTime': convertToJsonLd(endTime),
        'interactionService': convertToJsonLd(interactionService,
            (v) => v is SchemaSoftwareApplication || v is SchemaWebSite),
        'interactionType': convertToJsonLd(interactionType),
        'location': convertToJsonLd(
            location,
            (v) =>
                v is SchemaPlace ||
                v is SchemaPostalAddress ||
                v is String ||
                v is SchemaVirtualLocation),
        'startTime': convertToJsonLd(startTime),
        'userInteractionCount': convertToJsonLd(userInteractionCount),
      });
}
