// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/bio_chem_entity.dart';
import 'package:schema_org/schemas/defined_term.dart';

/// A chemical substance is 'a portion of matter of constant composition,
/// composed of molecular entities of the same type or of different types'
/// (source:
/// [ChEBI:59999](https://www.ebi.ac.uk/chebi/searchId.do?chebiId=59999)).
/// See https://schema.org/ChemicalSubstance
class SchemaChemicalSubstance extends SchemaBioChemEntity {
  /// The chemical composition describes the identity and relative ratio of the
  /// chemical elements that make up the substance.
  String? chemicalComposition;

  /// A role played by the BioChemEntity within a chemical context.
  SchemaDefinedTerm? chemicalRole;

  /// Intended use of the BioChemEntity by humans.
  SchemaDefinedTerm? potentialUse;

  /// Create a new instance of [SchemaChemicalSubstance]
  SchemaChemicalSubstance({
    super.additionalType,
    super.alternateName,
    super.associatedDisease,
    super.bioChemInteraction,
    super.bioChemSimilarity,
    super.biologicalRole,
    super.description,
    super.disambiguatingDescription,
    super.funding,
    super.hasBioChemEntityPart,
    super.hasMolecularFunction,
    super.hasRepresentation,
    super.identifier,
    super.image,
    super.isEncodedByBioChemEntity,
    super.isInvolvedInBiologicalProcess,
    super.isLocatedInSubcellularLocation,
    super.isPartOfBioChemEntity,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.taxonomicRange,
    super.url,
    this.chemicalComposition,
    this.chemicalRole,
    this.potentialUse,
  });

  /// Serialize [SchemaChemicalSubstance] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ChemicalSubstance',
        'chemicalComposition': convertToJsonLd(chemicalComposition),
        'chemicalRole': convertToJsonLd(chemicalRole),
        'potentialUse': convertToJsonLd(potentialUse),
      });
}
