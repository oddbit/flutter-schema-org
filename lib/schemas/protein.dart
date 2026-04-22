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

/// Protein. They can be imagined, synthetic, hypothetical or naturally
/// occurring.
/// See https://schema.org/Protein
class SchemaProtein extends SchemaBioChemEntity {
  /// A symbolic representation of a BioChemEntity. For example, a nucleotide
  /// sequence of a Gene or an amino acid sequence of a Protein.
  String? hasBioPolymerSequence;

  /// Create a new instance of [SchemaProtein]
  SchemaProtein({
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
    this.hasBioPolymerSequence,
  });

  /// Serialize [SchemaProtein] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Protein',
        'hasBioPolymerSequence':
            convertToJsonLd(hasBioPolymerSequence, [String]),
      });
}
