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
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/anatomical_system.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/medical_therapy.dart';

/// Any part of the human body, typically a component of an anatomical
/// system. Organs, tissues, and cells are all anatomical structures.
/// See https://schema.org/AnatomicalStructure
class SchemaAnatomicalStructure extends SchemaMedicalEntity {
  /// If applicable, a description of the pathophysiology associated with the
  /// anatomical system, including potential abnormal changes in the
  /// mechanical, physical, and biochemical functions of the system.
  String? associatedPathophysiology;

  /// Location in the body of the anatomical structure.
  String? bodyLocation;

  /// Other anatomical structures to which this structure is connected.
  SchemaAnatomicalStructure? connectedTo;

  /// An image containing a diagram that illustrates the structure and/or its
  /// component substructures and/or connections with other structures.
  SchemaImageObject? diagram;

  /// The anatomical or organ system that this structure is part of.
  SchemaAnatomicalSystem? partOfSystem;

  /// A medical condition associated with this anatomy.
  SchemaMedicalCondition? relatedCondition;

  /// A medical therapy related to this anatomy.
  SchemaMedicalTherapy? relatedTherapy;

  /// Component (sub-)structure(s) that comprise this anatomical structure.
  SchemaAnatomicalStructure? subStructure;

  /// Create a new instance of [SchemaAnatomicalStructure]
  SchemaAnatomicalStructure({
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
    this.bodyLocation,
    this.connectedTo,
    this.diagram,
    this.partOfSystem,
    this.relatedCondition,
    this.relatedTherapy,
    this.subStructure,
  });

  /// Serialize [SchemaAnatomicalStructure] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'AnatomicalStructure',
        'associatedPathophysiology':
            convertToJsonLd(associatedPathophysiology, [String]),
        'bodyLocation': convertToJsonLd(bodyLocation, [String]),
        'connectedTo':
            convertToJsonLd(connectedTo, [SchemaAnatomicalStructure]),
        'diagram': convertToJsonLd(diagram, [SchemaImageObject]),
        'partOfSystem': convertToJsonLd(partOfSystem, [SchemaAnatomicalSystem]),
        'relatedCondition':
            convertToJsonLd(relatedCondition, [SchemaMedicalCondition]),
        'relatedTherapy':
            convertToJsonLd(relatedTherapy, [SchemaMedicalTherapy]),
        'subStructure':
            convertToJsonLd(subStructure, [SchemaAnatomicalStructure]),
      });
}
