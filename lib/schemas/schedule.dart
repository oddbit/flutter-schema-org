// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/day_of_week.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// A schedule defines a repeating time period used to describe a regularly
/// occurring [SchemaEvent]. At a minimum a schedule will specify
/// [SchemarepeatFrequency] which describes the interval between occurrences
/// of the event. Additional information can be provided to specify the
/// schedule more precisely. This includes identifying the day(s) of the week
/// or month when the recurring event will take place, in addition to its
/// start and end time. Schedules may also have start and end dates to
/// indicate when they are active, e.g. to define a limited calendar of
/// events.
/// See https://schema.org/Schedule
class SchemaSchedule extends SchemaIntangible {
  /// Defines the day(s) of the week on which a recurring [SchemaEvent] takes
  /// place. May be specified using either [SchemaDayOfWeek], or alternatively
  /// [SchemaText] conforming to iCal's syntax for byDay recurrence rules.
  ///
  /// Supported types: [SchemaDayOfWeek], [String]
  dynamic byDay;

  /// Defines the month(s) of the year on which a recurring [SchemaEvent] takes
  /// place. Specified as an [SchemaInteger] between 1-12. January is 1.
  int? byMonth;

  /// Defines the day(s) of the month on which a recurring [SchemaEvent] takes
  /// place. Specified as an [SchemaInteger] between 1-31.
  int? byMonthDay;

  /// Defines the week(s) of the month on which a recurring Event takes place.
  /// Specified as an Integer between 1-5. For clarity, byMonthWeek is best
  /// used in conjunction with byDay to indicate concepts like the first and
  /// third Mondays of a month.
  int? byMonthWeek;

  /// The duration of the item (movie, audio recording, event, etc.) in [ISO
  /// 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  dynamic duration;

  /// The end date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? endDate;

  /// The endTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to end. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from January to *December*. For media, including audio
  /// and video, it's the time offset of the end of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  String? endTime;

  /// Defines a [SchemaDate] or [SchemaDateTime] during which a scheduled
  /// [SchemaEvent] will not take place. The property allows exceptions to a
  /// [SchemaSchedule] to be specified. If an exception is specified as a
  /// [SchemaDateTime] then only the event that would have started at that
  /// specific date and time should be excluded from the schedule. If an
  /// exception is specified as a [SchemaDate] then any event that is scheduled
  /// for that 24 hour period should be excluded from the schedule. This allows
  /// a whole day to be excluded from the schedule without having to itemise
  /// every scheduled event.
  String? exceptDate;

  /// Defines the number of times a recurring [SchemaEvent] will take place.
  int? repeatCount;

  /// Defines the frequency at which [SchemaEvent]s will occur according to a
  /// schedule [SchemaSchedule]. The intervals between events should be defined
  /// as a [SchemaDuration] of time.
  ///
  /// Supported types: [SchemaDuration], [String]
  dynamic repeatFrequency;

  /// Indicates the timezone for which the time(s) indicated in the
  /// [SchemaSchedule] are given. The value provided should be among those
  /// listed in the IANA Time Zone Database.
  String? scheduleTimezone;

  /// The start date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? startDate;

  /// The startTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to start. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from *January* to December. For media, including audio
  /// and video, it's the time offset of the start of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  String? startTime;

  /// Create a new instance of [SchemaSchedule]
  SchemaSchedule({
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
    this.byDay,
    this.byMonth,
    this.byMonthDay,
    this.byMonthWeek,
    this.duration,
    this.endDate,
    this.endTime,
    this.exceptDate,
    this.repeatCount,
    this.repeatFrequency,
    this.scheduleTimezone,
    this.startDate,
    this.startTime,
  });

  /// Serialize [SchemaSchedule] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Schedule',
        'byDay':
            convertToJsonLd(byDay, (v) => v is SchemaDayOfWeek || v is String),
        'byMonth': convertToJsonLd(byMonth),
        'byMonthDay': convertToJsonLd(byMonthDay),
        'byMonthWeek': convertToJsonLd(byMonthWeek),
        'duration': convertToJsonLd(duration,
            (v) => v is SchemaDuration || v is SchemaQuantitativeValue),
        'endDate': convertToJsonLd(endDate),
        'endTime': convertToJsonLd(endTime),
        'exceptDate': convertToJsonLd(exceptDate),
        'repeatCount': convertToJsonLd(repeatCount),
        'repeatFrequency': convertToJsonLd(
            repeatFrequency, (v) => v is SchemaDuration || v is String),
        'scheduleTimezone': convertToJsonLd(scheduleTimezone),
        'startDate': convertToJsonLd(startDate),
        'startTime': convertToJsonLd(startTime),
      });
}
