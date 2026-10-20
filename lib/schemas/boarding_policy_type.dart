// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// A type of boarding policy used by an airline.
/// See https://schema.org/BoardingPolicyType
enum SchemaBoardingPolicyType implements SchemaSerializable {
  /// The airline boards by groups based on check-in time, priority, etc.
  groupBoardingPolicy('https://schema.org/GroupBoardingPolicy'),

  /// The airline boards by zones of the plane.
  zoneBoardingPolicy('https://schema.org/ZoneBoardingPolicy');

  /// Constructor for [SchemaBoardingPolicyType]
  const SchemaBoardingPolicyType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaBoardingPolicyType] to JSON-LD
  @override
  String toJsonLd() => value;
}
