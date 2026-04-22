// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/gene.dart';
import 'package:schema_org/schemas/taxon.dart';

/// a protein; a gene; a chemical; a synthetic chemical.
/// See https://schema.org/BioChemEntity
class SchemaBioChemEntity extends SchemaThing {
  /// Disease associated to this BioChemEntity. Such disease can be a
  /// MedicalCondition or a URL. If you want to add an evidence supporting the
  /// association, please use PropertyValue.
  ///
  /// Supported types: [SchemaMedicalCondition], [SchemaPropertyValue],
  /// [String]
  dynamic associatedDisease;

  /// A BioChemEntity that is known to interact with this item.
  SchemaBioChemEntity? bioChemInteraction;

  /// A similar BioChemEntity, e.g., obtained by fingerprint similarity
  /// algorithms.
  SchemaBioChemEntity? bioChemSimilarity;

  /// A role played by the BioChemEntity within a biological context.
  SchemaDefinedTerm? biologicalRole;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// Indicates a BioChemEntity that (in some sense) has this BioChemEntity as
  /// a part.
  SchemaBioChemEntity? hasBioChemEntityPart;

  /// Molecular function performed by this BioChemEntity; please use
  /// PropertyValue if you want to include any evidence.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaPropertyValue], [String]
  dynamic hasMolecularFunction;

  /// A common representation such as a protein sequence or chemical structure
  /// for this entity. For images use schema.org/image.
  ///
  /// Supported types: [SchemaPropertyValue], [String]
  dynamic hasRepresentation;

  /// Another BioChemEntity encoding by this one.
  SchemaGene? isEncodedByBioChemEntity;

  /// Biological process this BioChemEntity is involved in; please use
  /// PropertyValue if you want to include any evidence.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaPropertyValue], [String]
  dynamic isInvolvedInBiologicalProcess;

  /// Subcellular location where this BioChemEntity is located; please use
  /// PropertyValue if you want to include any evidence.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaPropertyValue], [String]
  dynamic isLocatedInSubcellularLocation;

  /// Indicates a BioChemEntity that is (in some sense) a part of this
  /// BioChemEntity.
  SchemaBioChemEntity? isPartOfBioChemEntity;

  /// The taxonomic grouping of the organism that expresses, encodes, or in
  /// some way related to the BioChemEntity.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [SchemaTaxon]
  dynamic taxonomicRange;

  /// Create a new instance of [SchemaBioChemEntity]
  SchemaBioChemEntity({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.associatedDisease,
    this.bioChemInteraction,
    this.bioChemSimilarity,
    this.biologicalRole,
    this.funding,
    this.hasBioChemEntityPart,
    this.hasMolecularFunction,
    this.hasRepresentation,
    this.isEncodedByBioChemEntity,
    this.isInvolvedInBiologicalProcess,
    this.isLocatedInSubcellularLocation,
    this.isPartOfBioChemEntity,
    this.taxonomicRange,
  });

  /// Serialize [SchemaBioChemEntity] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BioChemEntity',
        'associatedDisease': convertToJsonLd(associatedDisease,
            [SchemaMedicalCondition, SchemaPropertyValue, String]),
        'bioChemInteraction':
            convertToJsonLd(bioChemInteraction, [SchemaBioChemEntity]),
        'bioChemSimilarity':
            convertToJsonLd(bioChemSimilarity, [SchemaBioChemEntity]),
        'biologicalRole': convertToJsonLd(biologicalRole, [SchemaDefinedTerm]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'hasBioChemEntityPart':
            convertToJsonLd(hasBioChemEntityPart, [SchemaBioChemEntity]),
        'hasMolecularFunction': convertToJsonLd(hasMolecularFunction,
            [SchemaDefinedTerm, SchemaPropertyValue, String]),
        'hasRepresentation':
            convertToJsonLd(hasRepresentation, [SchemaPropertyValue, String]),
        'isEncodedByBioChemEntity':
            convertToJsonLd(isEncodedByBioChemEntity, [SchemaGene]),
        'isInvolvedInBiologicalProcess': convertToJsonLd(
            isInvolvedInBiologicalProcess,
            [SchemaDefinedTerm, SchemaPropertyValue, String]),
        'isLocatedInSubcellularLocation': convertToJsonLd(
            isLocatedInSubcellularLocation,
            [SchemaDefinedTerm, SchemaPropertyValue, String]),
        'isPartOfBioChemEntity':
            convertToJsonLd(isPartOfBioChemEntity, [SchemaBioChemEntity]),
        'taxonomicRange': convertToJsonLd(
            taxonomicRange, [SchemaDefinedTerm, String, SchemaTaxon]),
      });
}
