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
import 'package:schema_org/schemas/anatomical_system.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/medical_therapy.dart';

/// Anatomical features that can be observed by sight (without dissection),
/// including the form and proportions of the human body as well as surface
/// landmarks that correspond to deeper subcutaneous structures. Superficial
/// anatomy plays an important role in sports medicine, phlebotomy, and other
/// medical specialties as underlying anatomical structures can be identified
/// through surface palpation. For example, during back surgery, superficial
/// anatomy can be used to palpate and count vertebrae to find the site of
/// incision. Or in phlebotomy, superficial anatomy can be used to locate an
/// underlying vein; for example, the median cubital vein can be located by
/// palpating the borders of the cubital fossa (such as the epicondyles of
/// the humerus) and then looking for the superficial signs of the vein, such
/// as size, prominence, ability to refill after depression, and feel of
/// surrounding tissue support. As another example, in a subluxation
/// (dislocation) of the glenohumeral joint, the bony structure becomes
/// pronounced with the deltoid muscle failing to cover the glenohumeral
/// joint allowing the edges of the scapula to be superficially visible.
/// Here, the superficial anatomy is the visible edges of the scapula,
/// implying the underlying dislocation of the joint (the related anatomical
/// structure).
/// See https://schema.org/SuperficialAnatomy
class SchemaSuperficialAnatomy extends SchemaMedicalEntity {
  /// If applicable, a description of the pathophysiology associated with the
  /// anatomical system, including potential abnormal changes in the
  /// mechanical, physical, and biochemical functions of the system.
  String? associatedPathophysiology;

  /// Anatomical systems or structures that relate to the superficial anatomy.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaAnatomicalSystem]
  dynamic relatedAnatomy;

  /// A medical condition associated with this anatomy.
  SchemaMedicalCondition? relatedCondition;

  /// A medical therapy related to this anatomy.
  SchemaMedicalTherapy? relatedTherapy;

  /// The significance associated with the superficial anatomy; as an example,
  /// how characteristics of the superficial anatomy can suggest underlying
  /// medical conditions or courses of treatment.
  String? significance;

  /// Create a new instance of [SchemaSuperficialAnatomy]
  SchemaSuperficialAnatomy({
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
    this.relatedAnatomy,
    this.relatedCondition,
    this.relatedTherapy,
    this.significance,
  });

  /// Serialize [SchemaSuperficialAnatomy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SuperficialAnatomy',
        'associatedPathophysiology': convertToJsonLd(associatedPathophysiology),
        'relatedAnatomy': convertToJsonLd(
            relatedAnatomy,
            (v) =>
                v is SchemaAnatomicalStructure || v is SchemaAnatomicalSystem),
        'relatedCondition': convertToJsonLd(relatedCondition),
        'relatedTherapy': convertToJsonLd(relatedTherapy),
        'significance': convertToJsonLd(significance),
      });
}
