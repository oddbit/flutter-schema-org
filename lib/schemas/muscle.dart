// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/anatomical_structure.dart';
import 'package:schema_org/schemas/vessel.dart';
import 'package:schema_org/schemas/nerve.dart';

/// A muscle is an anatomical structure consisting of a contractile form of
/// tissue that animals use to effect movement.
/// See https://schema.org/Muscle
class SchemaMuscle extends SchemaAnatomicalStructure {
  /// The muscle whose action counteracts the specified muscle.
  SchemaMuscle? antagonist;

  /// The blood vessel that carries blood from the heart to the muscle.
  SchemaVessel? bloodSupply;

  /// The place of attachment of a muscle, or what the muscle moves.
  SchemaAnatomicalStructure? insertion;

  /// The movement the muscle generates.
  String? muscleAction;

  /// The underlying innervation associated with the muscle.
  SchemaNerve? nerve;

  /// Create a new instance of [SchemaMuscle]
  SchemaMuscle({
    super.additionalType,
    super.alternateName,
    super.associatedPathophysiology,
    super.bodyLocation,
    super.code,
    super.connectedTo,
    super.description,
    super.diagram,
    super.disambiguatingDescription,
    super.funding,
    super.guideline,
    super.identifier,
    super.image,
    super.legalStatus,
    super.mainEntityOfPage,
    super.medicineSystem,
    super.name,
    super.owner,
    super.partOfSystem,
    super.potentialAction,
    super.recognizingAuthority,
    super.relatedCondition,
    super.relatedTherapy,
    super.relevantSpecialty,
    super.sameAs,
    super.study,
    super.subStructure,
    super.subjectOf,
    super.url,
    this.antagonist,
    this.bloodSupply,
    this.insertion,
    this.muscleAction,
    this.nerve,
  });

  /// Serialize [SchemaMuscle] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Muscle',
        'antagonist': convertToJsonLd(antagonist),
        'bloodSupply': convertToJsonLd(bloodSupply),
        'insertion': convertToJsonLd(insertion),
        'muscleAction': convertToJsonLd(muscleAction),
        'nerve': convertToJsonLd(nerve),
      });
}
