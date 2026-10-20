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

/// The act of registering to be a user of a service, product or web
/// page.\n\nRelated actions:\n\n* [SchemaJoinAction]: Unlike JoinAction,
/// RegisterAction implies you are registering to be a user of a service,
/// *not* a group/team of people.\n* [SchemaFollowAction]: Unlike
/// FollowAction, RegisterAction doesn't imply that the agent is expecting to
/// poll for updates from the object.\n* [SchemaSubscribeAction]: Unlike
/// SubscribeAction, RegisterAction doesn't imply that the agent is expecting
/// updates from the object.
/// See https://schema.org/RegisterAction
class SchemaRegisterAction extends SchemaInteractAction {
  /// Create a new instance of [SchemaRegisterAction]
  SchemaRegisterAction({
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
  });

  /// Serialize [SchemaRegisterAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'RegisterAction',
      });
}
