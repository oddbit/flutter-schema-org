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
import 'package:schema_org/schemas/delivery_method.dart';

/// An event involving the delivery of an item.
/// See https://schema.org/DeliveryEvent
class SchemaDeliveryEvent extends SchemaEvent {
  /// Password, PIN, or access code needed for delivery (e.g. from a locker).
  String? accessCode;

  /// When the item is available for pickup from the store, locker, etc.
  String? availableFrom;

  /// After this date, the item will no longer be available for pickup.
  String? availableThrough;

  /// Method used for delivery or shipping.
  SchemaDeliveryMethod? hasDeliveryMethod;

  /// Create a new instance of [SchemaDeliveryEvent]
  SchemaDeliveryEvent({
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
    this.accessCode,
    this.availableFrom,
    this.availableThrough,
    this.hasDeliveryMethod,
  });

  /// Serialize [SchemaDeliveryEvent] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DeliveryEvent',
        'accessCode': convertToJsonLd(accessCode, [String]),
        'availableFrom': convertToJsonLd(availableFrom, [String]),
        'availableThrough': convertToJsonLd(availableThrough, [String]),
        'hasDeliveryMethod':
            convertToJsonLd(hasDeliveryMethod, [SchemaDeliveryMethod]),
      });
}
