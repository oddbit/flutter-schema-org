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
import 'package:schema_org/schemas/schedule.dart';
import 'package:schema_org/schemas/person.dart';

/// An instance of a [SchemaCourse] which is distinct from other instances
/// because it is offered at a different time or location or through
/// different media or modes of study or to a specific section of students.
/// See https://schema.org/CourseInstance
class SchemaCourseInstance extends SchemaEvent {
  /// The medium or means of delivery of the course instance or the mode of
  /// study, either as a text label (e.g. "online", "onsite" or "blended";
  /// "synchronous" or "asynchronous"; "full-time" or "part-time") or as a URL
  /// reference to a term from a controlled vocabulary (e.g.
  /// https://ceds.ed.gov/element/001311#Asynchronous).
  String? courseMode;

  /// Represents the length and pace of a course, expressed as a
  /// [SchemaSchedule].
  SchemaSchedule? courseSchedule;

  /// The amount of work expected of students taking the course, often provided
  /// as a figure per week or per month, and may be broken down by type. For
  /// example, "2 hours of lectures, 1 hour of lab work and 3 hours of
  /// independent study per week".
  String? courseWorkload;

  /// A person assigned to instruct or provide instructional assistance for the
  /// [SchemaCourseInstance].
  SchemaPerson? instructor;

  /// Create a new instance of [SchemaCourseInstance]
  SchemaCourseInstance({
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
    this.courseMode,
    this.courseSchedule,
    this.courseWorkload,
    this.instructor,
  });

  /// Serialize [SchemaCourseInstance] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CourseInstance',
        'courseMode': convertToJsonLd(courseMode),
        'courseSchedule': convertToJsonLd(courseSchedule),
        'courseWorkload': convertToJsonLd(courseWorkload),
        'instructor': convertToJsonLd(instructor),
      });
}
