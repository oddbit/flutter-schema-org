// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/performing_group.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/aggregate_rating.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/event_attendance_mode_enumeration.dart';
import 'package:schema_org/schemas/schedule.dart';
import 'package:schema_org/schemas/event_status_type.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/virtual_location.dart';
import 'package:schema_org/schemas/demand.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/review.dart';

/// An event happening at a certain time and location, such as a concert,
/// lecture, or festival. Ticketing information may be added via the
/// [Schemaoffers] property. Repeated events may be structured as separate
/// Event objects.
/// See https://schema.org/Event
class SchemaEvent extends SchemaThing {
  /// The subject matter of an object.
  SchemaThing? about;

  /// An actor (individual or a group), e.g. in TV, radio, movie, video games
  /// etc., or in an event. Actors can be associated with individual items or
  /// with a series, episode, clip.
  ///
  /// Supported types: [SchemaPerformingGroup], [SchemaPerson]
  dynamic actor;

  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

  /// A person or organization attending the event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic attendee;

  /// A person attending the event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @Deprecated('Use [attendee]. See https://schema.org/attendees')
  dynamic attendees;

  /// An intended audience, i.e. a group for whom something was created.
  SchemaAudience? audience;

  /// The person or organization who wrote a composition, or who is the
  /// composer of a work performed at some event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic composer;

  /// A secondary contributor to the CreativeWork or Event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic contributor;

  /// A director of e.g. TV, radio, movie, video gaming etc. content, or of an
  /// event. Directors can be associated with individual items or with a
  /// series, episode, clip.
  SchemaPerson? director;

  /// The time admission will commence.
  String? doorTime;

  /// The duration of the item (movie, audio recording, event, etc.) in [ISO
  /// 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  dynamic duration;

  /// The end date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? endDate;

  /// The eventAttendanceMode of an event indicates whether it occurs online,
  /// offline, or a mix.
  SchemaEventAttendanceModeEnumeration? eventAttendanceMode;

  /// Associates an [SchemaEvent] with a [SchemaSchedule]. There are
  /// circumstances where it is preferable to share a schedule for a series of
  /// repeating events rather than data on the individual events themselves.
  /// For example, a website or application might prefer to publish a schedule
  /// for a weekly gym class rather than provide data on every event. A
  /// schedule could be processed by applications to add forthcoming events to
  /// a calendar. An [SchemaEvent] that is associated with a [SchemaSchedule]
  /// using this property should not have [SchemastartDate] or [SchemaendDate]
  /// properties. These are instead defined within the associated
  /// [SchemaSchedule], this avoids any ambiguity for clients using the data.
  /// The property might have repeated values to specify different schedules,
  /// e.g. for different months or seasons.
  SchemaSchedule? eventSchedule;

  /// An eventStatus of an event represents its status; particularly useful
  /// when an event is cancelled or rescheduled.
  SchemaEventStatusType? eventStatus;

  /// A person or organization that supports (sponsors) something through some
  /// kind of financial contribution.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic funder;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// An offer to participate in the event, for example, Call for Proposals,
  /// Call for Speakers, or Call for Performers.
  SchemaOffer? hasParticipationOffer;

  /// An offer to sponsor the event, for example, Sponsorship Prospectus,
  /// Sponsorship Opportunities, or Sponsor Packages.
  SchemaOffer? hasSponsorshipOffer;

  /// The language of the content or performance or used in an action. Please
  /// use one of the language codes from the [IETF BCP 47
  /// standard](http://tools.ietf.org/html/bcp47). See also
  /// [SchemaavailableLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic inLanguage;

  /// A flag to signal that the item, event, or place is accessible for free.
  bool? isAccessibleForFree;

  /// Keywords or tags used to describe some item. Multiple textual entries in
  /// a keywords list are typically delimited by commas, or by repeating the
  /// property.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic keywords;

  /// The location of, for example, where an event is happening, where an
  /// organization is located, or where an action takes place.
  ///
  /// Supported types: [SchemaPlace], [SchemaPostalAddress], [String],
  /// [SchemaVirtualLocation]
  dynamic location;

  /// The total number of individuals that may attend an event or venue.
  int? maximumAttendeeCapacity;

  /// The maximum physical attendee capacity of an [SchemaEvent] whose
  /// [SchemaeventAttendanceMode] is [SchemaOfflineEventAttendanceMode] (or the
  /// offline aspects, in the case of a [SchemaMixedEventAttendanceMode]).
  int? maximumPhysicalAttendeeCapacity;

  /// The maximum virtual attendee capacity of an [SchemaEvent] whose
  /// [SchemaeventAttendanceMode] is [SchemaOnlineEventAttendanceMode] (or the
  /// online aspects, in the case of a [SchemaMixedEventAttendanceMode]).
  int? maximumVirtualAttendeeCapacity;

  /// An offer to provide this item&#x2014;for example, an offer to sell a
  /// product, rent the DVD of a movie, perform a service, or give away tickets
  /// to an event. Use [SchemabusinessFunction] to indicate the kind of
  /// transaction offered, i.e. sell, lease, etc. This property can also be
  /// used to describe a [SchemaDemand]. While this property is listed as
  /// expected on a number of common types, it can be used in others. In that
  /// case, using a second type, such as Product or a subtype of Product, can
  /// clarify the nature of the offer.
  ///
  /// Supported types: [SchemaDemand], [SchemaOffer]
  dynamic offers;

  /// An organizer of an Event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic organizer;

  /// A performer at the event&#x2014;for example, a presenter, musician,
  /// musical group or actor.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic performer;

  /// The main performer or performers of the event&#x2014;for example, a
  /// presenter, musician, or actor.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @Deprecated('Use [performer]. See https://schema.org/performers')
  dynamic performers;

  /// Used in conjunction with eventStatus for rescheduled or cancelled events.
  /// This property contains the previously scheduled start date. For
  /// rescheduled events, the startDate property should be used for the newly
  /// scheduled start date. In the (rare) case of an event that has been
  /// postponed and rescheduled multiple times, this field may be repeated.
  String? previousStartDate;

  /// The CreativeWork that captured all or part of this Event.
  SchemaCreativeWork? recordedIn;

  /// The number of attendee places for an event that remain unallocated.
  int? remainingAttendeeCapacity;

  /// A review of the item.
  SchemaReview? review;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

  /// The start date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? startDate;

  /// An Event that is part of this event. For example, a conference event
  /// includes many presentations, each of which is a subEvent of the
  /// conference.
  SchemaEvent? subEvent;

  /// Events that are a part of this event. For example, a conference event
  /// includes many presentations, each subEvents of the conference.
  @Deprecated('Use [subEvent]. See https://schema.org/subEvents')
  SchemaEvent? subEvents;

  /// An event that this event is a part of. For example, a collection of
  /// individual music performances might each have a music festival as their
  /// superEvent.
  SchemaEvent? superEvent;

  /// Organization or person who adapts a creative work to different languages,
  /// regional differences and technical requirements of a target market, or
  /// that translates during some event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic translator;

  /// The typical expected age range, e.g. '7-9', '11-'.
  String? typicalAgeRange;

  /// A work featured in some event, e.g. exhibited in an ExhibitionEvent.
  /// Specific subproperties are available for workPerformed (e.g. a play), or
  /// a workPresented (a Movie at a ScreeningEvent).
  SchemaCreativeWork? workFeatured;

  /// A work performed in some event, for example a play performed in a
  /// TheaterEvent.
  SchemaCreativeWork? workPerformed;

  /// Create a new instance of [SchemaEvent]
  SchemaEvent({
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
    this.about,
    this.actor,
    this.aggregateRating,
    this.attendee,
    this.attendees,
    this.audience,
    this.composer,
    this.contributor,
    this.director,
    this.doorTime,
    this.duration,
    this.endDate,
    this.eventAttendanceMode,
    this.eventSchedule,
    this.eventStatus,
    this.funder,
    this.funding,
    this.hasParticipationOffer,
    this.hasSponsorshipOffer,
    this.inLanguage,
    this.isAccessibleForFree,
    this.keywords,
    this.location,
    this.maximumAttendeeCapacity,
    this.maximumPhysicalAttendeeCapacity,
    this.maximumVirtualAttendeeCapacity,
    this.offers,
    this.organizer,
    this.performer,
    this.performers,
    this.previousStartDate,
    this.recordedIn,
    this.remainingAttendeeCapacity,
    this.review,
    this.sponsor,
    this.startDate,
    this.subEvent,
    this.subEvents,
    this.superEvent,
    this.translator,
    this.typicalAgeRange,
    this.workFeatured,
    this.workPerformed,
  });

  /// Serialize [SchemaEvent] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Event',
        'about': convertToJsonLd(about),
        'actor': convertToJsonLd(
            actor, (v) => v is SchemaPerformingGroup || v is SchemaPerson),
        'aggregateRating': convertToJsonLd(aggregateRating),
        'attendee': convertToJsonLd(
            attendee, (v) => v is SchemaOrganization || v is SchemaPerson),
        'attendees': convertToJsonLd(
            attendees, (v) => v is SchemaOrganization || v is SchemaPerson),
        'audience': convertToJsonLd(audience),
        'composer': convertToJsonLd(
            composer, (v) => v is SchemaOrganization || v is SchemaPerson),
        'contributor': convertToJsonLd(
            contributor, (v) => v is SchemaOrganization || v is SchemaPerson),
        'director': convertToJsonLd(director),
        'doorTime': convertToJsonLd(doorTime),
        'duration': convertToJsonLd(duration,
            (v) => v is SchemaDuration || v is SchemaQuantitativeValue),
        'endDate': convertToJsonLd(endDate),
        'eventAttendanceMode': convertToJsonLd(eventAttendanceMode),
        'eventSchedule': convertToJsonLd(eventSchedule),
        'eventStatus': convertToJsonLd(eventStatus),
        'funder': convertToJsonLd(
            funder, (v) => v is SchemaOrganization || v is SchemaPerson),
        'funding': convertToJsonLd(funding),
        'hasParticipationOffer': convertToJsonLd(hasParticipationOffer),
        'hasSponsorshipOffer': convertToJsonLd(hasSponsorshipOffer),
        'inLanguage': convertToJsonLd(
            inLanguage, (v) => v is SchemaLanguage || v is String),
        'isAccessibleForFree': convertToJsonLd(isAccessibleForFree),
        'keywords': convertToJsonLd(
            keywords, (v) => v is SchemaDefinedTerm || v is String),
        'location': convertToJsonLd(
            location,
            (v) =>
                v is SchemaPlace ||
                v is SchemaPostalAddress ||
                v is String ||
                v is SchemaVirtualLocation),
        'maximumAttendeeCapacity': convertToJsonLd(maximumAttendeeCapacity),
        'maximumPhysicalAttendeeCapacity':
            convertToJsonLd(maximumPhysicalAttendeeCapacity),
        'maximumVirtualAttendeeCapacity':
            convertToJsonLd(maximumVirtualAttendeeCapacity),
        'offers': convertToJsonLd(
            offers, (v) => v is SchemaDemand || v is SchemaOffer),
        'organizer': convertToJsonLd(
            organizer, (v) => v is SchemaOrganization || v is SchemaPerson),
        'performer': convertToJsonLd(
            performer, (v) => v is SchemaOrganization || v is SchemaPerson),
        'performers': convertToJsonLd(
            performers, (v) => v is SchemaOrganization || v is SchemaPerson),
        'previousStartDate': convertToJsonLd(previousStartDate),
        'recordedIn': convertToJsonLd(recordedIn),
        'remainingAttendeeCapacity': convertToJsonLd(remainingAttendeeCapacity),
        'review': convertToJsonLd(review),
        'sponsor': convertToJsonLd(
            sponsor, (v) => v is SchemaOrganization || v is SchemaPerson),
        'startDate': convertToJsonLd(startDate),
        'subEvent': convertToJsonLd(subEvent),
        'subEvents': convertToJsonLd(subEvents),
        'superEvent': convertToJsonLd(superEvent),
        'translator': convertToJsonLd(
            translator, (v) => v is SchemaOrganization || v is SchemaPerson),
        'typicalAgeRange': convertToJsonLd(typicalAgeRange),
        'workFeatured': convertToJsonLd(workFeatured),
        'workPerformed': convertToJsonLd(workPerformed),
      });
}
