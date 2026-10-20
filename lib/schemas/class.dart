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
import 'package:schema_org/schemas/enumeration.dart';
import 'package:schema_org/schemas/property.dart';

/// A class, also often called a 'Type'; equivalent to rdfs:Class.
/// See https://schema.org/Class
class SchemaClass extends SchemaIntangible {
  /// Relates a term (i.e. a property, class or enumeration) to one that
  /// supersedes it.
  ///
  /// Supported types: [SchemaClass], [SchemaEnumeration], [SchemaProperty]
  dynamic supersededBy;

  /// Create a new instance of [SchemaClass]
  SchemaClass({
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

  /// Serialize [SchemaClass] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Class',
        'supersededBy': convertToJsonLd(
            supersededBy,
            (v) =>
                v is SchemaClass ||
                v is SchemaEnumeration ||
                v is SchemaProperty),
      });
}
