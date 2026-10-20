// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumeration of considerations that make a product relevant or potentially
/// restricted for adults only.
/// See https://schema.org/AdultOrientedEnumeration
enum SchemaAdultOrientedEnumeration implements SchemaSerializable {
  /// Item contains alcohol or promotes alcohol consumption.
  alcoholConsideration('https://schema.org/AlcoholConsideration'),

  /// The item is dangerous and requires careful handling and/or special
  /// training of the user. See also the [UN Model
  /// Classification](https://unece.org/DAM/trans/danger/publi/unrec/rev17/English/02EREv17_Part2.pdf)
  /// defining the 9 classes of dangerous goods such as explosives, gases,
  /// flammables, and more.
  dangerousGoodConsideration('https://schema.org/DangerousGoodConsideration'),

  /// Item is a pharmaceutical (e.g., a prescription or OTC drug) or a
  /// restricted medical device.
  healthcareConsideration('https://schema.org/HealthcareConsideration'),

  /// Item is a narcotic as defined by the [1961 UN
  /// convention](https://www.incb.org/incb/en/narcotic-drugs/Yellowlist/yellow-list.html),
  /// for example marijuana or heroin.
  narcoticConsideration('https://schema.org/NarcoticConsideration'),

  /// A general code for cases where relevance to children is reduced, e.g.
  /// adult education, mortgages, retirement-related products, etc.
  reducedRelevanceForChildrenConsideration(
      'https://schema.org/ReducedRelevanceForChildrenConsideration'),

  /// The item contains sexually oriented content such as nudity,
  /// suggestive or explicit material, or related online services, or is
  /// intended to enhance sexual activity. Examples: Erotic videos or
  /// magazine, sexual enhancement devices, sex toys.
  sexualContentConsideration('https://schema.org/SexualContentConsideration'),

  /// Item contains tobacco and/or nicotine, for example cigars,
  /// cigarettes, chewing tobacco, e-cigarettes, or hookahs.
  tobaccoNicotineConsideration(
      'https://schema.org/TobaccoNicotineConsideration'),

  /// The item is suitable only for adults, without indicating why. Due to
  /// widespread use of "adult" as a euphemism for "sexual", many such
  /// items are likely suited also for the SexualContentConsideration code.
  unclassifiedAdultConsideration(
      'https://schema.org/UnclassifiedAdultConsideration'),

  /// Item shows or promotes violence.
  violenceConsideration('https://schema.org/ViolenceConsideration'),

  /// The item is intended to induce bodily harm, for example guns, mace,
  /// combat knives, brass knuckles, nail or other bombs, and spears.
  weaponConsideration('https://schema.org/WeaponConsideration');

  /// Constructor for [SchemaAdultOrientedEnumeration]
  const SchemaAdultOrientedEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaAdultOrientedEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
