// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/event.dart';

/// Live performance <a class="localLink"
/// href="http://schema.org/Event">Event of the performing arts (music,
/// theatre, dance, acrobatics, spoken word), including performance art and
/// performative sports (e.g. choreographed forms of martial arts, figure
/// skating, competitive ballroom dancing).<br/><br/>Note: Use <a
/// class="localLink"
/// href="http://schema.org/additionalType">additionalType</a> to
/// differentiate between productions / shows (PerformanceWork, EventSeries),
/// tours (EventSeries), and individual performances.
/// See https://schema.org/PerformingArtsEvent
class SchemaPerformingArtsEvent extends SchemaEvent {
  /// Create a new instance of [SchemaPerformingArtsEvent]
  SchemaPerformingArtsEvent({
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
  });

  /// Serialize [SchemaPerformingArtsEvent] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PerformingArtsEvent',
      });
}
