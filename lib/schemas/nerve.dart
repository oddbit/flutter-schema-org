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
import 'package:schema_org/schemas/muscle.dart';
import 'package:schema_org/schemas/superficial_anatomy.dart';
import 'package:schema_org/schemas/brain_structure.dart';

/// A common pathway for the electrochemical nerve impulses that are
/// transmitted along each of the axons.
/// See https://schema.org/Nerve
class SchemaNerve extends SchemaAnatomicalStructure {
  /// The branches that delineate from the nerve bundle. Not to be confused
  /// with [SchemabranchOf].
  @Deprecated('Use [arterialBranch]. See https://schema.org/branch')
  SchemaAnatomicalStructure? branch;

  /// The neurological pathway extension that involves muscle control.
  SchemaMuscle? nerveMotor;

  /// The neurological pathway extension that inputs and sends information to
  /// the brain or spinal cord.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaSuperficialAnatomy]
  dynamic sensoryUnit;

  /// The neurological pathway that originates the neurons.
  SchemaBrainStructure? sourcedFrom;

  /// Create a new instance of [SchemaNerve]
  SchemaNerve({
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
    this.branch,
    this.nerveMotor,
    this.sensoryUnit,
    this.sourcedFrom,
  });

  /// Serialize [SchemaNerve] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Nerve',
        'branch': convertToJsonLd(branch, [SchemaAnatomicalStructure]),
        'nerveMotor': convertToJsonLd(nerveMotor, [SchemaMuscle]),
        'sensoryUnit': convertToJsonLd(
            sensoryUnit, [SchemaAnatomicalStructure, SchemaSuperficialAnatomy]),
        'sourcedFrom': convertToJsonLd(sourcedFrom, [SchemaBrainStructure]),
      });
}
