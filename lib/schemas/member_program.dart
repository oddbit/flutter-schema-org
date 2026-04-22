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
import 'package:schema_org/schemas/member_program_tier.dart';
import 'package:schema_org/schemas/organization.dart';

/// A MemberProgram defines a loyalty (or membership) program that provides
/// its members with certain benefits, for example better pricing, free
/// shipping or returns, or the ability to earn loyalty points. Member
/// programs may have multiple tiers, for example silver and gold members,
/// each with different benefits.
/// See https://schema.org/MemberProgram
class SchemaMemberProgram extends SchemaIntangible {
  /// The tiers of a member program.
  SchemaMemberProgramTier? hasTiers;

  /// The Organization (airline, travelers' club, retailer, etc.) the
  /// membership is made with or which offers the MemberProgram.
  SchemaOrganization? hostingOrganization;

  /// Create a new instance of [SchemaMemberProgram]
  SchemaMemberProgram({
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
    this.hasTiers,
    this.hostingOrganization,
  });

  /// Serialize [SchemaMemberProgram] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MemberProgram',
        'hasTiers': convertToJsonLd(hasTiers, [SchemaMemberProgramTier]),
        'hostingOrganization':
            convertToJsonLd(hostingOrganization, [SchemaOrganization]),
      });
}
