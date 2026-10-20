// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/vessel.dart';
import 'package:schema_org/schemas/anatomical_structure.dart';
import 'package:schema_org/schemas/anatomical_system.dart';

/// A type of blood vessel that specifically carries lymph fluid
/// unidirectionally toward the heart.
/// See https://schema.org/LymphaticVessel
class SchemaLymphaticVessel extends SchemaVessel {
  /// The vasculature the lymphatic structure originates, or afferents, from.
  SchemaVessel? originatesFrom;

  /// The anatomical or organ system drained by this vessel; generally refers
  /// to a specific part of an organ.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaAnatomicalSystem]
  dynamic regionDrained;

  /// The vasculature the lymphatic structure runs, or efferents, to.
  SchemaVessel? runsTo;

  /// Create a new instance of [SchemaLymphaticVessel]
  SchemaLymphaticVessel({
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
    this.originatesFrom,
    this.regionDrained,
    this.runsTo,
  });

  /// Serialize [SchemaLymphaticVessel] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'LymphaticVessel',
        'originatesFrom': convertToJsonLd(originatesFrom),
        'regionDrained': convertToJsonLd(
            regionDrained,
            (v) =>
                v is SchemaAnatomicalStructure || v is SchemaAnatomicalSystem),
        'runsTo': convertToJsonLd(runsTo),
      });
}
