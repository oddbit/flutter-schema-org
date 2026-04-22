// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/status_enumeration.dart';

/// A list of possible statuses for the legal force of a legislation.
/// See https://schema.org/LegalForceStatus
enum SchemaLegalForceStatus implements SchemaStatusEnumeration {
  /// Indicates that a legislation is in force.
  inForce('https://schema.org/LegalForceStatus'),

  /// Indicates that a legislation is currently not in force.
  notInForce('https://schema.org/LegalForceStatus'),

  /// Indicates that parts of the legislation are in force, and parts are
  /// not.
  partiallyInForce('https://schema.org/LegalForceStatus');

  /// Constructor for [SchemaLegalForceStatus]
  const SchemaLegalForceStatus(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaLegalForceStatus] to JSON-LD
  @override
  String toJsonLd() => value;
}
