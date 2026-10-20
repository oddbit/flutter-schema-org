// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates common size systems specific for wearable products.
/// See https://schema.org/WearableSizeSystemEnumeration
enum SchemaWearableSizeSystemEnumeration implements SchemaSerializable {
  /// Australian size system for wearables.
  wearableSizeSystemAU('https://schema.org/WearableSizeSystemAU'),

  /// Brazilian size system for wearables.
  wearableSizeSystemBR('https://schema.org/WearableSizeSystemBR'),

  /// Chinese size system for wearables.
  wearableSizeSystemCN('https://schema.org/WearableSizeSystemCN'),

  /// Continental size system for wearables.
  wearableSizeSystemContinental(
      'https://schema.org/WearableSizeSystemContinental'),

  /// German size system for wearables.
  wearableSizeSystemDE('https://schema.org/WearableSizeSystemDE'),

  /// EN 13402 (joint European standard for size labelling of clothes).
  wearableSizeSystemEN13402('https://schema.org/WearableSizeSystemEN13402'),

  /// European size system for wearables.
  wearableSizeSystemEurope('https://schema.org/WearableSizeSystemEurope'),

  /// French size system for wearables.
  wearableSizeSystemFR('https://schema.org/WearableSizeSystemFR'),

  /// GS1 (formerly NRF) size system for wearables.
  wearableSizeSystemGS1('https://schema.org/WearableSizeSystemGS1'),

  /// Italian size system for wearables.
  wearableSizeSystemIT('https://schema.org/WearableSizeSystemIT'),

  /// Japanese size system for wearables.
  wearableSizeSystemJP('https://schema.org/WearableSizeSystemJP'),

  /// Mexican size system for wearables.
  wearableSizeSystemMX('https://schema.org/WearableSizeSystemMX'),

  /// United Kingdom size system for wearables.
  wearableSizeSystemUK('https://schema.org/WearableSizeSystemUK'),

  /// United States size system for wearables.
  wearableSizeSystemUS('https://schema.org/WearableSizeSystemUS');

  /// Constructor for [SchemaWearableSizeSystemEnumeration]
  const SchemaWearableSizeSystemEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaWearableSizeSystemEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
