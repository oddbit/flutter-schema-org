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
import 'package:schema_org/schemas/defined_term.dart';

/// Event type: Education event.
/// See https://schema.org/EducationEvent
class SchemaEducationEvent extends SchemaEvent {
  /// The item being described is intended to assess the competency or learning
  /// outcome defined by the referenced term.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic assesses;

  /// The level in terms of progression through an educational or training
  /// context. Examples of educational levels include 'beginner',
  /// 'intermediate' or 'advanced', and formal sets of level indicators.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic educationalLevel;

  /// The item being described is intended to help a person learn the
  /// competency or learning outcome defined by the referenced term.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic teaches;

  /// Create a new instance of [SchemaEducationEvent]
  SchemaEducationEvent({
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
    this.assesses,
    this.educationalLevel,
    this.teaches,
  });

  /// Serialize [SchemaEducationEvent] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EducationEvent',
        'assesses': convertToJsonLd(
            assesses, (v) => v is SchemaDefinedTerm || v is String),
        'educationalLevel': convertToJsonLd(
            educationalLevel, (v) => v is SchemaDefinedTerm || v is String),
        'teaches': convertToJsonLd(
            teaches, (v) => v is SchemaDefinedTerm || v is String),
      });
}
