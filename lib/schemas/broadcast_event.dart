// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/publication_event.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/language.dart';

/// An over the air or online broadcast event.
/// See https://schema.org/BroadcastEvent
class SchemaBroadcastEvent extends SchemaPublicationEvent {
  /// The event being broadcast such as a sporting event or awards ceremony.
  SchemaEvent? broadcastOfEvent;

  /// True if the broadcast is of a live event.
  bool? isLiveBroadcast;

  /// //tools.ietf.org/html/bcp47).
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic subtitleLanguage;

  /// The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD,
  /// etc.).
  String? videoFormat;

  /// Create a new instance of [SchemaBroadcastEvent]
  SchemaBroadcastEvent({
    super.about,
    super.actor,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.attendee,
    super.attendees,
    super.audience,
    super.composer,
    super.contributor,
    super.description,
    super.director,
    super.disambiguatingDescription,
    super.doorTime,
    super.duration,
    super.endDate,
    super.eventAttendanceMode,
    super.eventSchedule,
    super.eventStatus,
    super.free,
    super.funder,
    super.funding,
    super.hasParticipationOffer,
    super.hasSponsorshipOffer,
    super.identifier,
    super.image,
    super.inLanguage,
    super.isAccessibleForFree,
    super.keywords,
    super.location,
    super.mainEntityOfPage,
    super.maximumAttendeeCapacity,
    super.maximumPhysicalAttendeeCapacity,
    super.maximumVirtualAttendeeCapacity,
    super.name,
    super.offers,
    super.organizer,
    super.owner,
    super.performer,
    super.performers,
    super.potentialAction,
    super.previousStartDate,
    super.publishedBy,
    super.publishedOn,
    super.recordedIn,
    super.remainingAttendeeCapacity,
    super.review,
    super.sameAs,
    super.sponsor,
    super.startDate,
    super.subEvent,
    super.subEvents,
    super.subjectOf,
    super.superEvent,
    super.translator,
    super.typicalAgeRange,
    super.url,
    super.workFeatured,
    super.workPerformed,
    this.broadcastOfEvent,
    this.isLiveBroadcast,
    this.subtitleLanguage,
    this.videoFormat,
  });

  /// Serialize [SchemaBroadcastEvent] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BroadcastEvent',
        'broadcastOfEvent': convertToJsonLd(broadcastOfEvent, [SchemaEvent]),
        'isLiveBroadcast': convertToJsonLd(isLiveBroadcast, [bool]),
        'subtitleLanguage':
            convertToJsonLd(subtitleLanguage, [SchemaLanguage, String]),
        'videoFormat': convertToJsonLd(videoFormat, [String]),
      });
}
