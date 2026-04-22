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

/// A StatisticalPopulation is a set of instances of a certain given type
/// that satisfy some set of constraints. The property [SchemapopulationType]
/// is used to specify the type. Any property that can be used on instances
/// of that type can appear on the statistical population. For example, a
/// [SchemaStatisticalPopulation] representing all [SchemaPerson]s with a
/// [SchemahomeLocation] of East Podunk California would be described by
/// applying the appropriate [SchemahomeLocation] and [SchemapopulationType]
/// properties to a [SchemaStatisticalPopulation] item that stands for that
/// set of people. The properties [SchemanumConstraints] and
/// [SchemaconstraintProperty] are used to specify which of the populations
/// properties are used to specify the population. Note that the sense of
/// "population" used here is the general sense of a statistical population,
/// and does not imply that the population consists of people. For example, a
/// [SchemapopulationType] of [SchemaEvent] or [SchemaNewsArticle] could be
/// used. See also [SchemaObservation], where a [SchemapopulationType] such
/// as [SchemaPerson] or [SchemaEvent] can be indicated directly. In most
/// cases it may be better to use [SchemaStatisticalVariable] instead of
/// [SchemaStatisticalPopulation].
/// See https://schema.org/StatisticalPopulation
class SchemaStatisticalPopulation extends SchemaIntangible {
  /// Indicates the populationType common to all members of a
  /// [SchemaStatisticalPopulation] or all cases within the scope of a
  /// [SchemaStatisticalVariable].
  SchemaClass? populationType;

  /// Create a new instance of [SchemaStatisticalPopulation]
  SchemaStatisticalPopulation({
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
    this.populationType,
  });

  /// Serialize [SchemaStatisticalPopulation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'StatisticalPopulation',
        'populationType': convertToJsonLd(populationType, [SchemaClass]),
      });
}
