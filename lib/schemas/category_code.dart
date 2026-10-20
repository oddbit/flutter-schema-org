// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/category_code_set.dart';

/// A Category Code.
/// See https://schema.org/CategoryCode
class SchemaCategoryCode extends SchemaDefinedTerm {
  /// A short textual code that uniquely identifies the value.
  String? codeValue;

  /// A [SchemaCategoryCodeSet] that contains this category code.
  ///
  /// Supported types: [SchemaCategoryCodeSet], [String]
  dynamic inCodeSet;

  /// Create a new instance of [SchemaCategoryCode]
  SchemaCategoryCode({
    super.about,
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.inDefinedTermSet,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.termCode,
    super.url,
    this.codeValue,
    this.inCodeSet,
  });

  /// Serialize [SchemaCategoryCode] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CategoryCode',
        'codeValue': convertToJsonLd(codeValue),
        'inCodeSet': convertToJsonLd(
            inCodeSet, (v) => v is SchemaCategoryCodeSet || v is String),
      });
}
