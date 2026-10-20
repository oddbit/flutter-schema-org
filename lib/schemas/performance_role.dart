// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/role.dart';

/// A PerformanceRole is a Role that some entity places with regard to a
/// theatrical performance, e.g. in a Movie, TVSeries etc.
/// See https://schema.org/PerformanceRole
class SchemaPerformanceRole extends SchemaRole {
  /// The name of a character played in some acting or performing role, i.e. in
  /// a PerformanceRole.
  String? characterName;

  /// Create a new instance of [SchemaPerformanceRole]
  SchemaPerformanceRole({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endDate,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.namedPosition,
    super.owner,
    super.potentialAction,
    super.roleName,
    super.sameAs,
    super.startDate,
    super.subjectOf,
    super.url,
    this.characterName,
  });

  /// Serialize [SchemaPerformanceRole] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PerformanceRole',
        'characterName': convertToJsonLd(characterName),
      });
}
