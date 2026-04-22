// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates the different statuses of a Certification (Active and
/// Inactive).
/// See https://schema.org/CertificationStatusEnumeration
enum SchemaCertificationStatusEnumeration implements SchemaSerializable {
  /// Specifies that a certification is active.
  certificationActive('https://schema.org/CertificationStatusEnumeration'),

  /// Specifies that a certification is inactive (no longer in effect).
  certificationInactive('https://schema.org/CertificationStatusEnumeration');

  /// Constructor for [SchemaCertificationStatusEnumeration]
  const SchemaCertificationStatusEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaCertificationStatusEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
