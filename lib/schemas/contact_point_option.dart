// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerated options related to a ContactPoint.
/// See https://schema.org/ContactPointOption
enum SchemaContactPointOption implements SchemaSerializable {
  /// Uses devices to support users with hearing impairments.
  hearingImpairedSupported('https://schema.org/HearingImpairedSupported'),

  /// The associated telephone number is toll free.
  tollFree('https://schema.org/TollFree');

  /// Constructor for [SchemaContactPointOption]
  const SchemaContactPointOption(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaContactPointOption] to JSON-LD
  @override
  String toJsonLd() => value;
}
