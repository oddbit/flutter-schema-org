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

/// A SpeakableSpecification indicates (typically via [Schemaxpath] or
/// [SchemacssSelector]) sections of a document that are highlighted as
/// particularly [Schemaspeakable]. Instances of this type are expected to be
/// used primarily as values of the [Schemaspeakable] property.
/// See https://schema.org/SpeakableSpecification
class SchemaSpeakableSpecification extends SchemaIntangible {
  /// A CSS selector, e.g. of a [SchemaSpeakableSpecification] or
  /// [SchemaWebPageElement]. In the latter case, multiple matches within a
  /// page can constitute a single conceptual "Web page element".
  String? cssSelector;

  /// An XPath, e.g. of a [SchemaSpeakableSpecification] or
  /// [SchemaWebPageElement]. In the latter case, multiple matches within a
  /// page can constitute a single conceptual "Web page element".
  String? xpath;

  /// Create a new instance of [SchemaSpeakableSpecification]
  SchemaSpeakableSpecification({
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
    this.cssSelector,
    this.xpath,
  });

  /// Serialize [SchemaSpeakableSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SpeakableSpecification',
        'cssSelector': convertToJsonLd(cssSelector, [String]),
        'xpath': convertToJsonLd(xpath, [String]),
      });
}
