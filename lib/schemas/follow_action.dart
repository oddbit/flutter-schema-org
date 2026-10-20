// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/interact_action.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// The act of forming a personal connection with someone/something (object)
/// unidirectionally/asymmetrically to get updates polled from.\n\nRelated
/// actions:\n\n* [SchemaBefriendAction]: Unlike BefriendAction, FollowAction
/// implies that the connection is *not* necessarily reciprocal.\n*
/// [SchemaSubscribeAction]: Unlike SubscribeAction, FollowAction implies
/// that the follower acts as an active agent constantly/actively polling for
/// updates.\n* [SchemaRegisterAction]: Unlike RegisterAction, FollowAction
/// implies that the agent is interested in continuing receiving updates from
/// the object.\n* [SchemaJoinAction]: Unlike JoinAction, FollowAction
/// implies that the agent is interested in getting updates from the
/// object.\n* [SchemaTrackAction]: Unlike TrackAction, FollowAction refers
/// to the polling of updates of all aspects of animate objects rather than
/// the location of inanimate objects (e.g. you track a package, but you
/// don't follow it).
/// See https://schema.org/FollowAction
class SchemaFollowAction extends SchemaInteractAction {
  /// A sub property of object. The person or organization being followed.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic followee;

  /// Create a new instance of [SchemaFollowAction]
  SchemaFollowAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.identifier,
    super.image,
    super.instrument,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.provider,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
    this.followee,
  });

  /// Serialize [SchemaFollowAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'FollowAction',
        'followee': convertToJsonLd(
            followee, (v) => v is SchemaOrganization || v is SchemaPerson),
      });
}
