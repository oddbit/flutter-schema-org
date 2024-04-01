library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/aggregate_rating.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/event_attendance_mode_enumeration.dart';
import 'package:schema_org/schemas/schedule.dart';
import 'package:schema_org/schemas/event_status_type.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/virtual_location.dart';
import 'package:schema_org/schemas/demand.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/review.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/action.dart';

/// UserInteraction and its subtypes is an old way of talking about
/// users interacting with pages It is generally better to use
/// [[Action]]-based vocabulary, alongside types such as
/// [[Comment]].
/// See https://schema.org/UserInteraction
class SchemaUserInteraction {
  /// The subject matter of the content.
  SchemaThing? about;

  /// An actor, e.g in TV, radio, movie, video games etc., or in an
  /// event Actors can be associated with individual items or with a
  /// series, episode, clip.
  SchemaPerson? actor;

  /// The overall rating, based on a collection of reviews or ratings,
  /// of the item.
  SchemaAggregateRating? aggregateRating;

  /// A person or organization attending the event.  Supported types:
  /// [Organization], [Person]
  dynamic attendee;

  /// A person attending the event.  Supported types: [Organization],
  /// [Person]
  dynamic attendees;

  /// An intended audience, i.e a group for whom something was
  /// created.
  SchemaAudience? audience;

  /// The person or organization who wrote a composition, or who is
  /// the composer of a work performed at some event.  Supported
  /// types: [Organization], [Person]
  dynamic composer;

  /// A secondary contributor to the CreativeWork or Event.  Supported
  /// types: [Organization], [Person]
  dynamic contributor;

  /// A director of e.g TV, radio, movie, video gaming etc content, or
  /// of an event Directors can be associated with individual items or
  /// with a series, episode, clip.
  SchemaPerson? director;

  /// The time admission will commence.  Supported types: [String],
  /// [String]
  String? doorTime;

  /// //en.wikipedia.org/wiki/ISO_8601).
  SchemaDuration? duration;

  /// //en.wikipedia.org/wiki/ISO_8601)).  Supported types: [String],
  /// [String]
  String? endDate;

  /// The eventAttendanceMode of an event indicates whether it occurs
  /// online, offline, or a mix.
  SchemaEventAttendanceModeEnumeration? eventAttendanceMode;

  /// Associates an [[Event]] with a [[Schedule]] There are
  /// circumstances where it is preferable to share a schedule for a
  /// series of  repeating events rather than data on the individual
  /// events themselves For example, a website or application might
  /// prefer to publish a schedule for a weekly  gym class rather than
  /// provide data on every event A schedule could be processed by
  /// applications to add forthcoming events to a calendar An
  /// [[Event]] that  is associated with a [[Schedule]] using this
  /// property should not have [[startDate]] or [[endDate]] properties
  /// These are instead defined within the associated  [[Schedule]],
  /// this avoids any ambiguity for clients using the data The
  /// property might have repeated values to specify different
  /// schedules, e.g for different months  or seasons.
  SchemaSchedule? eventSchedule;

  /// An eventStatus of an event represents its status; particularly
  /// useful when an event is cancelled or rescheduled.
  SchemaEventStatusType? eventStatus;

  /// A person or organization that supports (sponsors) something
  /// through some kind of financial contribution.  Supported types:
  /// [Organization], [Person]
  dynamic funder;

  /// A [[Grant]] that directly or indirectly provide funding or
  /// sponsorship for this item See also [[ownershipFundingInfo]].
  SchemaGrant? funding;

  /// //tools.ietf.org/html/bcp47) See also [[availableLanguage]].
  /// Supported types: [Language], [String]
  dynamic inLanguage;

  /// A flag to signal that the item, event, or place is accessible
  /// for free.
  bool? isAccessibleForFree;

  /// Keywords or tags used to describe some item Multiple textual
  /// entries in a keywords list are typically delimited by commas, or
  /// by repeating the property.  Supported types: [DefinedTerm],
  /// [String], [String]
  dynamic keywords;

  /// The location of, for example, where an event is happening, where
  /// an organization is located, or where an action takes place.
  /// Supported types: [Place], [PostalAddress], [String],
  /// [VirtualLocation]
  dynamic location;

  /// The total number of individuals that may attend an event or
  /// venue.
  int? maximumAttendeeCapacity;

  /// The maximum physical attendee capacity of an [[Event]] whose
  /// [[eventAttendanceMode]] is [[OfflineEventAttendanceMode]] (or
  /// the offline aspects, in the case of a
  /// [[MixedEventAttendanceMode]]).
  int? maximumPhysicalAttendeeCapacity;

  /// The maximum virtual attendee capacity of an [[Event]] whose
  /// [[eventAttendanceMode]] is [[OnlineEventAttendanceMode]] (or the
  /// online aspects, in the case of a [[MixedEventAttendanceMode]]).
  int? maximumVirtualAttendeeCapacity;

  /// An offer to provide this item&#x2014;for example, an offer to
  /// sell a product, rent the DVD of a movie, perform a service, or
  /// give away tickets to an event Use [[businessFunction]] to
  /// indicate the kind of transaction offered, i.e sell, lease, etc
  /// This property can also be used to describe a [[Demand]] While
  /// this property is listed as expected on a number of common types,
  /// it can be used in others In that case, using a second type, such
  /// as Product or a subtype of Product, can clarify the nature of
  /// the offer    Supported types: [Demand], [Offer]
  dynamic offers;

  /// An organizer of an Event.  Supported types: [Organization],
  /// [Person]
  dynamic organizer;

  /// A performer at the event&#x2014;for example, a presenter,
  /// musician, musical group or actor.  Supported types:
  /// [Organization], [Person]
  dynamic performer;

  /// The main performer or performers of the event&#x2014;for
  /// example, a presenter, musician, or actor.  Supported types:
  /// [Organization], [Person]
  dynamic performers;

  /// Used in conjunction with eventStatus for rescheduled or
  /// cancelled events This property contains the previously scheduled
  /// start date For rescheduled events, the startDate property should
  /// be used for the newly scheduled start date In the (rare) case of
  /// an event that has been postponed and rescheduled multiple times,
  /// this field may be repeated.
  String? previousStartDate;

  /// The CreativeWork that captured all or part of this Event.
  SchemaCreativeWork? recordedIn;

  /// The number of attendee places for an event that remain
  /// unallocated.
  int? remainingAttendeeCapacity;

  /// A review of the item.
  SchemaReview? review;

  /// A person or organization that supports a thing through a pledge,
  /// promise, or financial contribution E.g a sponsor of a Medical
  /// Study or a corporate sponsor of an event.  Supported types:
  /// [Organization], [Person]
  dynamic sponsor;

  /// //en.wikipedia.org/wiki/ISO_8601)).  Supported types: [String],
  /// [String]
  String? startDate;

  /// An Event that is part of this event For example, a conference
  /// event includes many presentations, each of which is a subEvent
  /// of the conference.
  SchemaEvent? subEvent;

  /// Events that are a part of this event For example, a conference
  /// event includes many presentations, each subEvents of the
  /// conference.
  SchemaEvent? subEvents;

  /// An event that this event is a part of For example, a collection
  /// of individual music performances might each have a music
  /// festival as their superEvent.
  SchemaEvent? superEvent;

  /// Organization or person who adapts a creative work to different
  /// languages, regional differences and technical requirements of a
  /// target market, or that translates during some event.  Supported
  /// types: [Organization], [Person]
  dynamic translator;

  /// The typical expected age range, e.g '7-9', '11-'.
  String? typicalAgeRange;

  /// A work featured in some event, e.g exhibited in an
  /// ExhibitionEvent  Specific subproperties are available for
  /// workPerformed (e.g a play), or a workPresented (a Movie at a
  /// ScreeningEvent).
  SchemaCreativeWork? workFeatured;

  /// A work performed in some event, for example a play performed in
  /// a TheaterEvent.
  SchemaCreativeWork? workPerformed;

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

  /// Create a new instance of [SchemaUserInteraction]
  SchemaUserInteraction({
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

  /// Serialize [SchemaUserInteraction] to JSON-LD
  Map<String, dynamic> toJsonLd() => {
        '@context': 'https://schema.org',
        '@type': 'UserInteraction',
        'about': convertToJsonLd(about, [SchemaThing]),
        'actor': convertToJsonLd(actor, [SchemaPerson]),
        'aggregateRating':
            convertToJsonLd(aggregateRating, [SchemaAggregateRating]),
        'attendee':
            convertToJsonLd(attendee, [SchemaOrganization, SchemaPerson]),
        'attendees':
            convertToJsonLd(attendees, [SchemaOrganization, SchemaPerson]),
        'audience': convertToJsonLd(audience, [SchemaAudience]),
        'composer':
            convertToJsonLd(composer, [SchemaOrganization, SchemaPerson]),
        'contributor':
            convertToJsonLd(contributor, [SchemaOrganization, SchemaPerson]),
        'director': convertToJsonLd(director, [SchemaPerson]),
        'doorTime': convertToJsonLd(doorTime, [String, String]),
        'duration': convertToJsonLd(duration, [SchemaDuration]),
        'endDate': convertToJsonLd(endDate, [String, String]),
        'eventAttendanceMode': convertToJsonLd(
            eventAttendanceMode, [SchemaEventAttendanceModeEnumeration]),
        'eventSchedule': convertToJsonLd(eventSchedule, [SchemaSchedule]),
        'eventStatus': convertToJsonLd(eventStatus, [SchemaEventStatusType]),
        'funder': convertToJsonLd(funder, [SchemaOrganization, SchemaPerson]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'inLanguage': convertToJsonLd(inLanguage, [SchemaLanguage, String]),
        'isAccessibleForFree': convertToJsonLd(isAccessibleForFree, [bool]),
        'keywords':
            convertToJsonLd(keywords, [SchemaDefinedTerm, String, String]),
        'location': convertToJsonLd(location,
            [SchemaPlace, SchemaPostalAddress, String, SchemaVirtualLocation]),
        'maximumAttendeeCapacity':
            convertToJsonLd(maximumAttendeeCapacity, [int]),
        'maximumPhysicalAttendeeCapacity':
            convertToJsonLd(maximumPhysicalAttendeeCapacity, [int]),
        'maximumVirtualAttendeeCapacity':
            convertToJsonLd(maximumVirtualAttendeeCapacity, [int]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
        'organizer':
            convertToJsonLd(organizer, [SchemaOrganization, SchemaPerson]),
        'performer':
            convertToJsonLd(performer, [SchemaOrganization, SchemaPerson]),
        'performers':
            convertToJsonLd(performers, [SchemaOrganization, SchemaPerson]),
        'previousStartDate': convertToJsonLd(previousStartDate, [String]),
        'recordedIn': convertToJsonLd(recordedIn, [SchemaCreativeWork]),
        'remainingAttendeeCapacity':
            convertToJsonLd(remainingAttendeeCapacity, [int]),
        'review': convertToJsonLd(review, [SchemaReview]),
        'sponsor': convertToJsonLd(sponsor, [SchemaOrganization, SchemaPerson]),
        'startDate': convertToJsonLd(startDate, [String, String]),
        'subEvent': convertToJsonLd(subEvent, [SchemaEvent]),
        'subEvents': convertToJsonLd(subEvents, [SchemaEvent]),
        'superEvent': convertToJsonLd(superEvent, [SchemaEvent]),
        'translator':
            convertToJsonLd(translator, [SchemaOrganization, SchemaPerson]),
        'typicalAgeRange': convertToJsonLd(typicalAgeRange, [String]),
        'workFeatured': convertToJsonLd(workFeatured, [SchemaCreativeWork]),
        'workPerformed': convertToJsonLd(workPerformed, [SchemaCreativeWork]),
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
