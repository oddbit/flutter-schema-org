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
import 'package:schema_org/schemas/administrative_area.dart';

/// Intended audience for an item, i.e. the group for whom the item was
/// created.
/// See https://schema.org/Audience
class SchemaAudience extends SchemaIntangible {
  /// The target group associated with a given audience (e.g. veterans, car
  /// owners, musicians, etc.).
  String? audienceType;

  /// The geographic area associated with the audience.
  SchemaAdministrativeArea? geographicArea;

  /// Create a new instance of [SchemaAudience]
  SchemaAudience({
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
    this.audienceType,
    this.geographicArea,
  });

  /// Serialize [SchemaAudience] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Audience',
        'audienceType': convertToJsonLd(audienceType),
        'geographicArea': convertToJsonLd(geographicArea),
      });
}
