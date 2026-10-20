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
import 'package:schema_org/schemas/medical_entity.dart';

/// The anatomical location at which two or more bones make contact.
/// See https://schema.org/Joint
class SchemaJoint extends SchemaAnatomicalStructure {
  /// The biomechanical properties of the bone.
  String? biomechnicalClass;

  /// The degree of mobility the joint allows.
  ///
  /// Supported types: [SchemaMedicalEntity], [String]
  dynamic functionalClass;

  /// The name given to how bone physically connects to each other.
  String? structuralClass;

  /// Create a new instance of [SchemaJoint]
  SchemaJoint({
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
    this.biomechnicalClass,
    this.functionalClass,
    this.structuralClass,
  });

  /// Serialize [SchemaJoint] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Joint',
        'biomechnicalClass': convertToJsonLd(biomechnicalClass),
        'functionalClass': convertToJsonLd(
            functionalClass, (v) => v is SchemaMedicalEntity || v is String),
        'structuralClass': convertToJsonLd(structuralClass),
      });
}
