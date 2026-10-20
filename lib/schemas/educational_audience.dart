// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/audience.dart';

/// An EducationalAudience.
/// See https://schema.org/EducationalAudience
class SchemaEducationalAudience extends SchemaAudience {
  /// An educationalRole of an EducationalAudience.
  String? educationalRole;

  /// Create a new instance of [SchemaEducationalAudience]
  SchemaEducationalAudience({
    super.additionalType,
    super.alternateName,
    super.audienceType,
    super.description,
    super.disambiguatingDescription,
    super.geographicArea,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.educationalRole,
  });

  /// Serialize [SchemaEducationalAudience] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EducationalAudience',
        'educationalRole': convertToJsonLd(educationalRole),
      });
}
