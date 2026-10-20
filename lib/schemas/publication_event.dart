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
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/broadcast_service.dart';

/// A PublicationEvent corresponds indifferently to the event of publication
/// for a CreativeWork of any type, e.g. a broadcast event, an on-demand
/// event, a book/journal publication via a variety of delivery media.
/// See https://schema.org/PublicationEvent
class SchemaPublicationEvent extends SchemaEvent {
  /// A flag to signal that the item, event, or place is accessible for free.
  @Deprecated('Use [isAccessibleForFree]. See https://schema.org/free')
  bool? free;

  /// An agent associated with the publication event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic publishedBy;

  /// A broadcast service associated with the publication event.
  SchemaBroadcastService? publishedOn;

  /// Create a new instance of [SchemaPublicationEvent]
  SchemaPublicationEvent({
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
    this.free,
    this.publishedBy,
    this.publishedOn,
  });

  /// Serialize [SchemaPublicationEvent] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PublicationEvent',
        'free': convertToJsonLd(free),
        'publishedBy': convertToJsonLd(
            publishedBy, (v) => v is SchemaOrganization || v is SchemaPerson),
        'publishedOn': convertToJsonLd(publishedOn),
      });
}
