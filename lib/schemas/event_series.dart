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
import 'package:schema_org/schemas/series.dart';

/// A series of [SchemaEvent]s. Included events can relate with the series
/// using the [SchemasuperEvent] property.
///
/// An EventSeries is a collection of events that share some unifying
/// characteristic. For example, "The Olympic Games" is a series, which is
/// repeated regularly. The "2012 London Olympics" can be presented both as
/// an [SchemaEvent] in the series "Olympic Games", and as an
/// [SchemaEventSeries] that included a number of sporting competitions as
/// Events.
///
/// The nature of the association between the events in an
/// [SchemaEventSeries] can vary, but typical examples could include a
/// thematic event series (e.g. topical meetups or classes), or a series of
/// regular events that share a location, attendee group and/or organizers.
///
/// EventSeries has been defined as a kind of Event to make it easy for
/// publishers to use it in an Event context without worrying about which
/// kinds of series are really event-like enough to call an Event. In general
/// an EventSeries may seem more Event-like when the period of time is
/// compact and when aspects such as location are fixed, but it may also
/// sometimes prove useful to describe a longer-term series as an Event.
/// See https://schema.org/EventSeries
class SchemaEventSeries extends SchemaEvent implements SchemaSeries {
  /// Create a new instance of [SchemaEventSeries]
  SchemaEventSeries({
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

  /// Serialize [SchemaEventSeries] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EventSeries',
      });
}
