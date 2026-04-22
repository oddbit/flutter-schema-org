// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/defined_term_set.dart';

/// A word, name, acronym, phrase, etc. with a formal definition. Often used
/// in the context of category or subject classification, glossaries or
/// dictionaries, product or creative work types, etc. Use the name property
/// for the term being defined, use termCode if the term has an alpha-numeric
/// code allocated, use description to provide the definition of the term.
/// Use the about property to specify what the term is about.
/// See https://schema.org/DefinedTerm
class SchemaDefinedTerm extends SchemaIntangible {
  /// The subject matter of an object.
  SchemaThing? about;

  /// A [SchemaDefinedTermSet] that contains this term.
  ///
  /// Supported types: [SchemaDefinedTermSet], [String]
  dynamic inDefinedTermSet;

  /// A code that identifies this [SchemaDefinedTerm] within a
  /// [SchemaDefinedTermSet].
  String? termCode;

  /// Create a new instance of [SchemaDefinedTerm]
  SchemaDefinedTerm({
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
    this.about,
    this.inDefinedTermSet,
    this.termCode,
  });

  /// Serialize [SchemaDefinedTerm] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DefinedTerm',
        'about': convertToJsonLd(about, [SchemaThing]),
        'inDefinedTermSet':
            convertToJsonLd(inDefinedTermSet, [SchemaDefinedTermSet, String]),
        'termCode': convertToJsonLd(termCode, [String]),
      });
}
