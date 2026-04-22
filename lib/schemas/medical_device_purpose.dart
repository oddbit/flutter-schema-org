// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Categories of medical devices, organized by the purpose or intended use
/// of the device.
/// See https://schema.org/MedicalDevicePurpose
enum SchemaMedicalDevicePurpose implements SchemaMedicalEnumeration {
  /// A medical device used for diagnostic purposes.
  diagnostic('https://schema.org/MedicalDevicePurpose'),

  /// A medical device used for therapeutic purposes.
  therapeutic('https://schema.org/MedicalDevicePurpose');

  /// Constructor for [SchemaMedicalDevicePurpose]
  const SchemaMedicalDevicePurpose(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalDevicePurpose] to JSON-LD
  @override
  String toJsonLd() => value;
}
