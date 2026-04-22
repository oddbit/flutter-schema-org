// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/user_interaction.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/creative_work.dart';

/// UserInteraction and its subtypes is an old way of talking about users
/// interacting with pages. It is generally better to use
/// [SchemaAction]-based vocabulary, alongside types such as [SchemaComment].
/// See https://schema.org/UserComments
@Deprecated(
    'Use [SchemaInteractionCounter]. See https://schema.org/UserComments')
class SchemaUserComments extends SchemaUserInteraction {
  /// The text of the UserComment.
  String? commentText;

  /// The time at which the UserComment was made.
  String? commentTime;

  /// The creator/author of this CreativeWork. This is the same as the Author
  /// property for CreativeWork.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic creator;

  /// Specifies the CreativeWork associated with the UserComment.
  SchemaCreativeWork? discusses;

  /// The URL at which a reply may be posted to the specified UserComment.
  String? replyToUrl;

  /// Create a new instance of [SchemaUserComments]
  SchemaUserComments({
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
    this.commentText,
    this.commentTime,
    this.creator,
    this.discusses,
    this.replyToUrl,
  });

  /// Serialize [SchemaUserComments] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'UserComments',
        'commentText': convertToJsonLd(commentText, [String]),
        'commentTime': convertToJsonLd(commentTime, [String]),
        'creator': convertToJsonLd(creator, [SchemaOrganization, SchemaPerson]),
        'discusses': convertToJsonLd(discusses, [SchemaCreativeWork]),
        'replyToUrl': convertToJsonLd(replyToUrl, [String]),
      });
}
