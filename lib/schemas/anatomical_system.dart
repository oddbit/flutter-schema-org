// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_entity.dart';
import 'package:schema_org/schemas/anatomical_structure.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/medical_therapy.dart';

/// An anatomical system is a group of anatomical structures that work
/// together to perform a certain task. Anatomical systems, such as organ
/// systems, are one organizing principle of anatomy, and can include
/// circulatory, digestive, endocrine, integumentary, immune, lymphatic,
/// muscular, nervous, reproductive, respiratory, skeletal, urinary,
/// vestibular, and other systems.
/// See https://schema.org/AnatomicalSystem
class SchemaAnatomicalSystem extends SchemaMedicalEntity {
  /// If applicable, a description of the pathophysiology associated with the
  /// anatomical system, including potential abnormal changes in the
  /// mechanical, physical, and biochemical functions of the system.
  String? associatedPathophysiology;

  /// Specifying something physically contained by something else. Typically
  /// used here for the underlying anatomical structures, such as organs, that
  /// comprise the anatomical system.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaAnatomicalSystem]
  dynamic comprisedOf;

  /// A medical condition associated with this anatomy.
  SchemaMedicalCondition? relatedCondition;

  /// Related anatomical structure(s) that are not part of the system but
  /// relate or connect to it, such as vascular bundles associated with an
  /// organ system.
  SchemaAnatomicalStructure? relatedStructure;

  /// A medical therapy related to this anatomy.
  SchemaMedicalTherapy? relatedTherapy;

  /// Create a new instance of [SchemaAnatomicalSystem]
  SchemaAnatomicalSystem({
    super.additionalType,
    super.alternateName,
    super.code,
    super.description,
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
    super.potentialAction,
    super.recognizingAuthority,
    super.relevantSpecialty,
    super.sameAs,
    super.study,
    super.subjectOf,
    super.url,
    this.associatedPathophysiology,
    this.comprisedOf,
    this.relatedCondition,
    this.relatedStructure,
    this.relatedTherapy,
  });

  /// Serialize [SchemaAnatomicalSystem] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'AnatomicalSystem',
        'associatedPathophysiology':
            convertToJsonLd(associatedPathophysiology, [String]),
        'comprisedOf': convertToJsonLd(
            comprisedOf, [SchemaAnatomicalStructure, SchemaAnatomicalSystem]),
        'relatedCondition':
            convertToJsonLd(relatedCondition, [SchemaMedicalCondition]),
        'relatedStructure':
            convertToJsonLd(relatedStructure, [SchemaAnatomicalStructure]),
        'relatedTherapy':
            convertToJsonLd(relatedTherapy, [SchemaMedicalTherapy]),
      });
}
