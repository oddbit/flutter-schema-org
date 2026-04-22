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
import 'package:schema_org/schemas/class.dart';
import 'package:schema_org/schemas/property.dart';

/// Lists or enumerations—for example, a list of cuisines or music genres,
/// etc.
/// See https://schema.org/Enumeration
class SchemaEnumeration extends SchemaIntangible {
  /// Relates a term (i.e. a property, class or enumeration) to one that
  /// supersedes it.
  ///
  /// Supported types: [SchemaClass], [SchemaEnumeration], [SchemaProperty]
  dynamic supersededBy;

  /// Create a new instance of [SchemaEnumeration]
  SchemaEnumeration({
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
    this.supersededBy,
  });

  /// Serialize [SchemaEnumeration] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Enumeration',
        'supersededBy': convertToJsonLd(
            supersededBy, [SchemaClass, SchemaEnumeration, SchemaProperty]),
      });
}
