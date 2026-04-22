// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/status_enumeration.dart';

/// The status of an Action.
/// See https://schema.org/ActionStatusType
enum SchemaActionStatusType implements SchemaStatusEnumeration {
  /// An in-progress action (e.g., while watching the movie, or driving to
  /// a location).
  activeActionStatus('https://schema.org/ActionStatusType'),

  /// An action that has already taken place.
  completedActionStatus('https://schema.org/ActionStatusType'),

  /// An action that failed to complete. The action's error property and
  /// the HTTP return code contain more information about the failure.
  failedActionStatus('https://schema.org/ActionStatusType'),

  /// A description of an action that is supported.
  potentialActionStatus('https://schema.org/ActionStatusType');

  /// Constructor for [SchemaActionStatusType]
  const SchemaActionStatusType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaActionStatusType] to JSON-LD
  @override
  String toJsonLd() => value;
}
