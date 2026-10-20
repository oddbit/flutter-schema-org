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

/// Natural languages such as Spanish, Tamil, Hindi, English, etc. Formal
/// language code tags expressed in [BCP
/// 47](https://en.wikipedia.org/wiki/IETF_language_tag) can be used via the
/// [SchemaalternateName] property. The Language type previously also covered
/// programming languages such as Scheme and Lisp, which are now best
/// represented using [SchemaComputerLanguage].
/// See https://schema.org/Language
class SchemaLanguage extends SchemaIntangible {
  /// Create a new instance of [SchemaLanguage]
  SchemaLanguage({
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
  });

  /// Serialize [SchemaLanguage] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Language',
      });
}
