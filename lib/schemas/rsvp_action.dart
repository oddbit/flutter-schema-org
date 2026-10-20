// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/inform_action.dart';
import 'package:schema_org/schemas/comment.dart';
import 'package:schema_org/schemas/rsvp_response_type.dart';

/// The act of notifying an event organizer as to whether you expect to
/// attend the event.
/// See https://schema.org/RsvpAction
class SchemaRsvpAction extends SchemaInformAction {
  /// If responding yes, the number of guests who will attend in addition to
  /// the invitee.
  num? additionalNumberOfGuests;

  /// Comments, typically from users.
  SchemaComment? comment;

  /// The response (yes, no, maybe) to the RSVP.
  SchemaRsvpResponseType? rsvpResponse;

  /// Create a new instance of [SchemaRsvpAction]
  SchemaRsvpAction({
    super.about,
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.event,
    super.identifier,
    super.image,
    super.inLanguage,
    super.instrument,
    super.language,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.provider,
    super.recipient,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
    this.additionalNumberOfGuests,
    this.comment,
    this.rsvpResponse,
  });

  /// Serialize [SchemaRsvpAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'RsvpAction',
        'additionalNumberOfGuests': convertToJsonLd(additionalNumberOfGuests),
        'comment': convertToJsonLd(comment),
        'rsvpResponse': convertToJsonLd(rsvpResponse),
      });
}
