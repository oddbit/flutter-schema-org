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
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/property_value.dart';

/// A set of organisms asserted to represent a natural cohesive biological
/// unit.
/// See https://schema.org/Taxon
class SchemaTaxon extends SchemaThing {
  /// Closest child taxa of the taxon in question.
  ///
  /// Supported types: [String], [SchemaTaxon]
  dynamic childTaxon;

  /// A Defined Term contained in this term set.
  SchemaDefinedTerm? hasDefinedTerm;

  /// Closest parent taxon of the taxon in question.
  ///
  /// Supported types: [String], [SchemaTaxon]
  dynamic parentTaxon;

  /// The taxonomic rank of this taxon given preferably as a URI from a
  /// controlled vocabulary – typically the ranks from TDWG TaxonRank ontology
  /// or equivalent Wikidata URIs.
  ///
  /// Supported types: [SchemaPropertyValue], [String]
  dynamic taxonRank;

  /// Create a new instance of [SchemaTaxon]
  SchemaTaxon({
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
    this.childTaxon,
    this.hasDefinedTerm,
    this.parentTaxon,
    this.taxonRank,
  });

  /// Serialize [SchemaTaxon] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Taxon',
        'childTaxon':
            convertToJsonLd(childTaxon, (v) => v is String || v is SchemaTaxon),
        'hasDefinedTerm': convertToJsonLd(hasDefinedTerm),
        'parentTaxon': convertToJsonLd(
            parentTaxon, (v) => v is String || v is SchemaTaxon),
        'taxonRank': convertToJsonLd(
            taxonRank, (v) => v is SchemaPropertyValue || v is String),
      });
}
