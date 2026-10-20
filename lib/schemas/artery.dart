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

/// A type of blood vessel that specifically carries blood away from the
/// heart.
/// See https://schema.org/Artery
class SchemaArtery extends SchemaVessel {
  /// The branches that comprise the arterial structure.
  SchemaAnatomicalStructure? arterialBranch;

  /// The area to which the artery supplies blood.
  SchemaAnatomicalStructure? supplyTo;

  /// Create a new instance of [SchemaArtery]
  SchemaArtery({
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
    this.arterialBranch,
    this.supplyTo,
  });

  /// Serialize [SchemaArtery] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Artery',
        'arterialBranch': convertToJsonLd(arterialBranch),
        'supplyTo': convertToJsonLd(supplyTo),
      });
}
