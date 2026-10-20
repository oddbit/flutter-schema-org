// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/size_group_enumeration.dart';

/// Enumerates common size groups (also known as "size types") for wearable
/// products.
/// See https://schema.org/WearableSizeGroupEnumeration
enum SchemaWearableSizeGroupEnumeration implements SchemaSizeGroupEnumeration {
  /// Size group "Big" for wearables.
  wearableSizeGroupBig('https://schema.org/WearableSizeGroupBig'),

  /// Size group "Boys" for wearables.
  wearableSizeGroupBoys('https://schema.org/WearableSizeGroupBoys'),

  /// Size group "Extra Short" for wearables.
  wearableSizeGroupExtraShort('https://schema.org/WearableSizeGroupExtraShort'),

  /// Size group "Extra Tall" for wearables.
  wearableSizeGroupExtraTall('https://schema.org/WearableSizeGroupExtraTall'),

  /// Size group "Girls" for wearables.
  wearableSizeGroupGirls('https://schema.org/WearableSizeGroupGirls'),

  /// Size group "Husky" (or "Stocky") for wearables.
  wearableSizeGroupHusky('https://schema.org/WearableSizeGroupHusky'),

  /// Size group "Infants" for wearables.
  wearableSizeGroupInfants('https://schema.org/WearableSizeGroupInfants'),

  /// Size group "Juniors" for wearables.
  wearableSizeGroupJuniors('https://schema.org/WearableSizeGroupJuniors'),

  /// Size group "Maternity" for wearables.
  wearableSizeGroupMaternity('https://schema.org/WearableSizeGroupMaternity'),

  /// Size group "Mens" for wearables.
  wearableSizeGroupMens('https://schema.org/WearableSizeGroupMens'),

  /// Size group "Misses" (also known as "Missy") for wearables.
  wearableSizeGroupMisses('https://schema.org/WearableSizeGroupMisses'),

  /// Size group "Petite" for wearables.
  wearableSizeGroupPetite('https://schema.org/WearableSizeGroupPetite'),

  /// Size group "Plus" for wearables.
  wearableSizeGroupPlus('https://schema.org/WearableSizeGroupPlus'),

  /// Size group "Regular" for wearables.
  wearableSizeGroupRegular('https://schema.org/WearableSizeGroupRegular'),

  /// Size group "Short" for wearables.
  wearableSizeGroupShort('https://schema.org/WearableSizeGroupShort'),

  /// Size group "Tall" for wearables.
  wearableSizeGroupTall('https://schema.org/WearableSizeGroupTall'),

  /// Size group "Womens" for wearables.
  wearableSizeGroupWomens('https://schema.org/WearableSizeGroupWomens');

  /// Constructor for [SchemaWearableSizeGroupEnumeration]
  const SchemaWearableSizeGroupEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaWearableSizeGroupEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
