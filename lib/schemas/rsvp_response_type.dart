// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// RsvpResponseType is an enumeration type whose instances represent
/// responding to an RSVP request.
/// See https://schema.org/RsvpResponseType
enum SchemaRsvpResponseType implements SchemaSerializable {
  /// The invitee may or may not attend.
  rsvpResponseMaybe('https://schema.org/RsvpResponseMaybe'),

  /// The invitee will not attend.
  rsvpResponseNo('https://schema.org/RsvpResponseNo'),

  /// The invitee will attend.
  rsvpResponseYes('https://schema.org/RsvpResponseYes');

  /// Constructor for [SchemaRsvpResponseType]
  const SchemaRsvpResponseType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaRsvpResponseType] to JSON-LD
  @override
  String toJsonLd() => value;
}
