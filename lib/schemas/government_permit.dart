// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/permit.dart';

/// A permit issued by a government agency.
/// See https://schema.org/GovernmentPermit
class SchemaGovernmentPermit extends SchemaPermit {
  /// Create a new instance of [SchemaGovernmentPermit]
  SchemaGovernmentPermit({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.issuedBy,
    super.issuedThrough,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.permitAudience,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    super.validFor,
    super.validFrom,
    super.validIn,
    super.validUntil,
  });

  /// Serialize [SchemaGovernmentPermit] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'GovernmentPermit',
      });
}
