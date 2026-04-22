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

/// A type of blood vessel that specifically carries blood to the heart.
/// See https://schema.org/Vein
class SchemaVein extends SchemaVessel {
  /// The vasculature that the vein drains into.
  SchemaVessel? drainsTo;

  /// The anatomical or organ system drained by this vessel; generally refers
  /// to a specific part of an organ.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaAnatomicalSystem]
  dynamic regionDrained;

  /// The anatomical or organ system that the vein flows into; a larger
  /// structure that the vein connects to.
  SchemaAnatomicalStructure? tributary;

  /// Create a new instance of [SchemaVein]
  SchemaVein({
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
    this.drainsTo,
    this.regionDrained,
    this.tributary,
  });

  /// Serialize [SchemaVein] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Vein',
        'drainsTo': convertToJsonLd(drainsTo, [SchemaVessel]),
        'regionDrained': convertToJsonLd(
            regionDrained, [SchemaAnatomicalStructure, SchemaAnatomicalSystem]),
        'tributary': convertToJsonLd(tributary, [SchemaAnatomicalStructure]),
      });
}
