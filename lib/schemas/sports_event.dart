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
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/sports_team.dart';

/// Sports event.
/// See https://schema.org/SportsEvent
class SchemaSportsEvent extends SchemaEvent {
  /// The away team in a sports event.
  ///
  /// Supported types: [SchemaPerson], [SchemaSportsTeam]
  dynamic awayTeam;

  /// A competitor in a sports event.
  ///
  /// Supported types: [SchemaPerson], [SchemaSportsTeam]
  dynamic competitor;

  /// The home team in a sports event.
  ///
  /// Supported types: [SchemaPerson], [SchemaSportsTeam]
  dynamic homeTeam;

  /// An official who watches a game or match closely to enforce the rules and
  /// arbitrate on matters arising from the play such as referees, umpires or
  /// judges. The name of the effective function can vary according to the
  /// sport.
  SchemaPerson? referee;

  /// A type of sport (e.g. Baseball).
  String? sport;

  /// Create a new instance of [SchemaSportsEvent]
  SchemaSportsEvent({
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
    this.awayTeam,
    this.competitor,
    this.homeTeam,
    this.referee,
    this.sport,
  });

  /// Serialize [SchemaSportsEvent] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SportsEvent',
        'awayTeam': convertToJsonLd(awayTeam, [SchemaPerson, SchemaSportsTeam]),
        'competitor':
            convertToJsonLd(competitor, [SchemaPerson, SchemaSportsTeam]),
        'homeTeam': convertToJsonLd(homeTeam, [SchemaPerson, SchemaSportsTeam]),
        'referee': convertToJsonLd(referee, [SchemaPerson]),
        'sport': convertToJsonLd(sport, [String]),
      });
}
