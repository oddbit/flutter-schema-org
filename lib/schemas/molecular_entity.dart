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
import 'package:schema_org/schemas/quantitative_value.dart';

/// Any constitutionally or isotopically distinct atom, molecule, ion, ion
/// pair, radical, radical ion, complex, conformer etc., identifiable as a
/// separately distinguishable entity.
/// See https://schema.org/MolecularEntity
class SchemaMolecularEntity extends SchemaBioChemEntity {
  /// A role played by the BioChemEntity within a chemical context.
  SchemaDefinedTerm? chemicalRole;

  /// Non-proprietary identifier for molecular entity that can be used in
  /// printed and electronic data sources thus enabling easier linking of
  /// diverse data compilations.
  String? inChI;

  /// InChIKey is a hashed version of the full InChI (using the SHA-256
  /// algorithm).
  String? inChIKey;

  /// Systematic method of naming chemical compounds as recommended by the
  /// International Union of Pure and Applied Chemistry (IUPAC).
  String? iupacName;

  /// The empirical formula is the simplest whole number ratio of all the atoms
  /// in a molecule.
  String? molecularFormula;

  /// This is the molecular weight of the entity being described, not of the
  /// parent. Units should be included in the form '&lt;Number&gt;
  /// &lt;unit&gt;', for example '12 amu' or as '&lt;QuantitativeValue&gt;.
  ///
  /// Supported types: [SchemaQuantitativeValue], [String]
  dynamic molecularWeight;

  /// The monoisotopic mass is the sum of the masses of the atoms in a molecule
  /// using the unbound, ground-state, rest mass of the principal (most
  /// abundant) isotope for each element instead of the isotopic average mass.
  /// Please include the units in the form '&lt;Number&gt; &lt;unit&gt;', for
  /// example '770.230488 g/mol' or as '&lt;QuantitativeValue&gt;.
  ///
  /// Supported types: [SchemaQuantitativeValue], [String]
  dynamic monoisotopicMolecularWeight;

  /// Intended use of the BioChemEntity by humans.
  SchemaDefinedTerm? potentialUse;

  /// A specification in form of a line notation for describing the structure
  /// of chemical species using short ASCII strings. Double bond
  /// stereochemistry \ indicators may need to be escaped in the string in
  /// formats where the backslash is an escape character.
  String? smiles;

  /// Create a new instance of [SchemaMolecularEntity]
  SchemaMolecularEntity({
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
    this.chemicalRole,
    this.inChI,
    this.inChIKey,
    this.iupacName,
    this.molecularFormula,
    this.molecularWeight,
    this.monoisotopicMolecularWeight,
    this.potentialUse,
    this.smiles,
  });

  /// Serialize [SchemaMolecularEntity] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MolecularEntity',
        'chemicalRole': convertToJsonLd(chemicalRole),
        'inChI': convertToJsonLd(inChI),
        'inChIKey': convertToJsonLd(inChIKey),
        'iupacName': convertToJsonLd(iupacName),
        'molecularFormula': convertToJsonLd(molecularFormula),
        'molecularWeight': convertToJsonLd(molecularWeight,
            (v) => v is SchemaQuantitativeValue || v is String),
        'monoisotopicMolecularWeight': convertToJsonLd(
            monoisotopicMolecularWeight,
            (v) => v is SchemaQuantitativeValue || v is String),
        'potentialUse': convertToJsonLd(potentialUse),
        'smiles': convertToJsonLd(smiles),
      });
}
