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
import 'package:schema_org/schemas/anatomical_structure.dart';
import 'package:schema_org/schemas/anatomical_system.dart';
import 'package:schema_org/schemas/defined_term.dart';

/// A discrete unit of inheritance which affects one or more biological
/// traits (Source:
/// [https://en.wikipedia.org/wiki/Gene](https://en.wikipedia.org/wiki/Gene)).
/// Examples include FOXP2 (Forkhead box protein P2), SCARNA21 (small Cajal
/// body-specific RNA 21), A- (agouti genotype).
/// See https://schema.org/Gene
class SchemaGene extends SchemaBioChemEntity {
  /// Another gene which is a variation of this one.
  SchemaGene? alternativeOf;

  /// Another BioChemEntity encoded by this one.
  SchemaBioChemEntity? encodesBioChemEntity;

  /// Tissue, organ, biological sample, etc in which activity of this gene has
  /// been observed experimentally. For example brain, digestive system.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaAnatomicalSystem],
  /// [SchemaBioChemEntity], [SchemaDefinedTerm]
  dynamic expressedIn;

  /// A symbolic representation of a BioChemEntity. For example, a nucleotide
  /// sequence of a Gene or an amino acid sequence of a Protein.
  String? hasBioPolymerSequence;

  /// Create a new instance of [SchemaGene]
  SchemaGene({
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
    this.alternativeOf,
    this.encodesBioChemEntity,
    this.expressedIn,
    this.hasBioPolymerSequence,
  });

  /// Serialize [SchemaGene] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Gene',
        'alternativeOf': convertToJsonLd(alternativeOf),
        'encodesBioChemEntity': convertToJsonLd(encodesBioChemEntity),
        'expressedIn': convertToJsonLd(
            expressedIn,
            (v) =>
                v is SchemaAnatomicalStructure ||
                v is SchemaAnatomicalSystem ||
                v is SchemaBioChemEntity ||
                v is SchemaDefinedTerm),
        'hasBioPolymerSequence': convertToJsonLd(hasBioPolymerSequence),
      });
}
