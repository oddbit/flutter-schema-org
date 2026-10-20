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
import 'package:schema_org/schemas/bio_chem_entity.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/medical_entity.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/product.dart';

/// A grant, typically financial or otherwise quantifiable, of resources.
/// Typically a [Schemafunder] sponsors some [SchemaMonetaryAmount] to an
/// [SchemaOrganization] or [SchemaPerson], sometimes not necessarily via a
/// dedicated or long-lived [SchemaProject], resulting in one or more
/// outputs, or [SchemafundedItem]s. For financial sponsorship, indicate the
/// [Schemafunder] of a [SchemaMonetaryGrant]. For non-financial support,
/// indicate [Schemasponsor] of [SchemaGrant]s of resources (e.g. office
/// space).
///
/// Grants support activities directed towards some agreed collective goals,
/// often but not always organized as [SchemaProject]s. Long-lived projects
/// are sometimes sponsored by a variety of grants over time, but it is also
/// common for a project to be associated with a single grant.
///
/// The amount of a [SchemaGrant] is represented using [Schemaamount] as a
/// [SchemaMonetaryAmount].
/// See https://schema.org/Grant
class SchemaGrant extends SchemaIntangible {
  /// Indicates something directly or indirectly funded or sponsored through a
  /// [SchemaGrant]. See also [SchemaownershipFundingInfo].
  ///
  /// Supported types: [SchemaBioChemEntity], [SchemaCreativeWork],
  /// [SchemaEvent], [SchemaMedicalEntity], [SchemaOrganization],
  /// [SchemaPerson], [SchemaProduct]
  dynamic fundedItem;

  /// A person or organization that supports (sponsors) something through some
  /// kind of financial contribution.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic funder;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

  /// Create a new instance of [SchemaGrant]
  SchemaGrant({
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
    this.fundedItem,
    this.funder,
    this.sponsor,
  });

  /// Serialize [SchemaGrant] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Grant',
        'fundedItem': convertToJsonLd(
            fundedItem,
            (v) =>
                v is SchemaBioChemEntity ||
                v is SchemaCreativeWork ||
                v is SchemaEvent ||
                v is SchemaMedicalEntity ||
                v is SchemaOrganization ||
                v is SchemaPerson ||
                v is SchemaProduct),
        'funder': convertToJsonLd(
            funder, (v) => v is SchemaOrganization || v is SchemaPerson),
        'sponsor': convertToJsonLd(
            sponsor, (v) => v is SchemaOrganization || v is SchemaPerson),
      });
}
