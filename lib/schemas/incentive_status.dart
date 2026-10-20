// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates a status for an incentive, such as whether it is active.
/// See https://schema.org/IncentiveStatus
enum SchemaIncentiveStatus implements SchemaSerializable {
  /// This incentive is currently active.
  incentiveStatusActive('https://schema.org/IncentiveStatusActive'),

  /// This incentive is currently being developed, and may become
  /// active/retired in the future.
  incentiveStatusInDevelopment(
      'https://schema.org/IncentiveStatusInDevelopment'),

  /// This incentive is currently active, but may not be accepting new
  /// applicants (e.g. max number of redemptions reached for a year)
  incentiveStatusOnHold('https://schema.org/IncentiveStatusOnHold'),

  /// This incentive is not longer available.
  incentiveStatusRetired('https://schema.org/IncentiveStatusRetired');

  /// Constructor for [SchemaIncentiveStatus]
  const SchemaIncentiveStatus(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaIncentiveStatus] to JSON-LD
  @override
  String toJsonLd() => value;
}
