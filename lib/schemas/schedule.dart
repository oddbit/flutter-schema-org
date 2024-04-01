library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schemas/day_of_week.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// A schedule defines a repeating time period used to describe a
/// regularly occurring [[Event]] At a minimum a schedule will
/// specify [[repeatFrequency]] which describes the interval between
/// occurrences of the event Additional information can be provided
/// to specify the schedule more precisely  This includes
/// identifying the day(s) of the week or month when the recurring
/// event will take place, in addition to its start and end time
/// Schedules may also  have start and end dates to indicate when
/// they are active, e.g to define a limited calendar of events.
/// See https://schema.org/Schedule
class SchemaSchedule {
  /// Defines the day(s) of the week on which a recurring [[Event]]
  /// takes place May be specified using either [[DayOfWeek]], or
  /// alternatively [[Text]] conforming to iCal's syntax for byDay
  /// recurrence rules.  Supported types: [DayOfWeek], [String]
  dynamic byDay;

  /// Defines the month(s) of the year on which a recurring [[Event]]
  /// takes place Specified as an [[Integer]] between 1-12 January is
  /// 1.
  int? byMonth;

  /// Defines the day(s) of the month on which a recurring [[Event]]
  /// takes place Specified as an [[Integer]] between 1-31.
  int? byMonthDay;

  /// Defines the week(s) of the month on which a recurring Event
  /// takes place Specified as an Integer between 1-5 For clarity,
  /// byMonthWeek is best used in conjunction with byDay to indicate
  /// concepts like the first and third Mondays of a month.
  int? byMonthWeek;

  /// //en.wikipedia.org/wiki/ISO_8601).
  SchemaDuration? duration;

  /// //en.wikipedia.org/wiki/ISO_8601)).  Supported types: [String],
  /// [String]
  String? endDate;

  /// The endTime of something For a reserved event or service (e.g
  /// FoodEstablishmentReservation), the time that it is expected to
  /// end For actions that span a period of time, when the action was
  /// performed E.g John wrote a book from January to *December* For
  /// media, including audio and video, it's the time offset of the
  /// end of a clip within a larger file.\n\nNote that Event uses
  /// startDate/endDate instead of startTime/endTime, even when
  /// describing dates with times This situation may be clarified in
  /// future revisions.  Supported types: [String], [String]
  String? endTime;

  /// Defines a [[Date]] or [[DateTime]] during which a scheduled
  /// [[Event]] will not take place The property allows exceptions to
  /// a [[Schedule]] to be specified If an exception is specified as a
  /// [[DateTime]] then only the event that would have started at that
  /// specific date and time  should be excluded from the schedule If
  /// an exception is specified as a [[Date]] then any event that is
  /// scheduled for that 24 hour period should be  excluded from the
  /// schedule This allows a whole day to be excluded from the
  /// schedule without having to itemise every scheduled event.
  /// Supported types: [String], [String]
  String? exceptDate;

  /// Defines the number of times a recurring [[Event]] will take
  /// place.
  int? repeatCount;

  /// Defines the frequency at which [[Event]]s will occur according
  /// to a schedule [[Schedule]] The intervals between  events should
  /// be defined as a [[Duration]] of time.  Supported types:
  /// [Duration], [String]
  dynamic repeatFrequency;

  /// Indicates the timezone for which the time(s) indicated in the
  /// [[Schedule]] are given The value provided should be among those
  /// listed in the IANA Time Zone Database.
  String? scheduleTimezone;

  /// //en.wikipedia.org/wiki/ISO_8601)).  Supported types: [String],
  /// [String]
  String? startDate;

  /// The startTime of something For a reserved event or service (e.g
  /// FoodEstablishmentReservation), the time that it is expected to
  /// start For actions that span a period of time, when the action
  /// was performed E.g John wrote a book from *January* to December
  /// For media, including audio and video, it's the time offset of
  /// the start of a clip within a larger file.\n\nNote that Event
  /// uses startDate/endDate instead of startTime/endTime, even when
  /// describing dates with times This situation may be clarified in
  /// future revisions.  Supported types: [String], [String]
  String? startTime;

  /// //schema.org/docs/styleguide.html">style guide</a>.  Supported
  /// types: [String], [String]
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.  Supported types: [String],
  /// [TextObject]
  dynamic description;

  /// A sub property of description A short description of the item
  /// used to disambiguate from other, similar items Information from
  /// other properties (in particular, name) may be necessary for the
  /// description to be useful for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for
  /// any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc
  /// Schema.org provides dedicated properties for representing many
  /// of these, either as textual strings or as URL (URI) links See
  /// [background notes](/docs/datamodel.html#identifierBg) for more
  /// details    Supported types: [PropertyValue], [String], [String]
  dynamic identifier;

  /// An image of the item This can be a [[URL]] or a fully described
  /// [[ImageObject]].  Supported types: [ImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is
  /// the main entity being described See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  /// Supported types: [CreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// Indicates a potential Action, which describes an idealized
  /// action in which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the
  /// item's identity E.g the URL of the item's Wikipedia page,
  /// Wikidata entry, or official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.  Supported types:
  /// [CreativeWork], [Event]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaSchedule]
  SchemaSchedule({
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
    this.additionalType,
    this.alternateName,
    this.description,
    this.disambiguatingDescription,
    this.identifier,
    this.image,
    this.mainEntityOfPage,
    this.name,
    this.potentialAction,
    this.sameAs,
    this.subjectOf,
    this.url,
  });

  /// Serialize [SchemaSchedule] to JSON-LD
  Map<String, dynamic> toJsonLd() => {
        '@context': 'https://schema.org',
        '@type': 'Schedule',
        'byDay': convertToJsonLd(byDay, [SchemaDayOfWeek, String]),
        'byMonth': convertToJsonLd(byMonth, [int]),
        'byMonthDay': convertToJsonLd(byMonthDay, [int]),
        'byMonthWeek': convertToJsonLd(byMonthWeek, [int]),
        'duration': convertToJsonLd(duration, [SchemaDuration]),
        'endDate': convertToJsonLd(endDate, [String, String]),
        'endTime': convertToJsonLd(endTime, [String, String]),
        'exceptDate': convertToJsonLd(exceptDate, [String, String]),
        'repeatCount': convertToJsonLd(repeatCount, [int]),
        'repeatFrequency':
            convertToJsonLd(repeatFrequency, [SchemaDuration, String]),
        'scheduleTimezone': convertToJsonLd(scheduleTimezone, [String]),
        'startDate': convertToJsonLd(startDate, [String, String]),
        'startTime': convertToJsonLd(startTime, [String, String]),
        'additionalType': convertToJsonLd(additionalType, [String, String]),
        'alternateName': convertToJsonLd(alternateName, [String]),
        'description': convertToJsonLd(description, [String, SchemaTextObject]),
        'disambiguatingDescription':
            convertToJsonLd(disambiguatingDescription, [String]),
        'identifier':
            convertToJsonLd(identifier, [SchemaPropertyValue, String, String]),
        'image': convertToJsonLd(image, [SchemaImageObject, String]),
        'mainEntityOfPage':
            convertToJsonLd(mainEntityOfPage, [SchemaCreativeWork, String]),
        'name': convertToJsonLd(name, [String]),
        'potentialAction': convertToJsonLd(potentialAction, [SchemaAction]),
        'sameAs': convertToJsonLd(sameAs, [String]),
        'subjectOf':
            convertToJsonLd(subjectOf, [SchemaCreativeWork, SchemaEvent]),
        'url': convertToJsonLd(url, [String]),
      };
}
