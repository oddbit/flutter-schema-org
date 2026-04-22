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
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/administrative_area.dart';

/// A permit issued by an organization, e.g. a parking pass.
/// See https://schema.org/Permit
class SchemaPermit extends SchemaIntangible {
  /// The organization issuing the item, for example a [SchemaPermit],
  /// [SchemaTicket], or [SchemaCertification].
  SchemaOrganization? issuedBy;

  /// The service through which the permit was granted.
  SchemaService? issuedThrough;

  /// The target audience for this permit.
  SchemaAudience? permitAudience;

  /// The duration of validity of a permit or similar thing.
  SchemaDuration? validFor;

  /// The date when the item becomes valid.
  String? validFrom;

  /// The geographic area where the item is valid. Applies for example to a
  /// [SchemaPermit], a [SchemaCertification], or an
  /// [SchemaEducationalOccupationalCredential].
  SchemaAdministrativeArea? validIn;

  /// The date when the item is no longer valid.
  String? validUntil;

  /// Create a new instance of [SchemaPermit]
  SchemaPermit({
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
    this.issuedBy,
    this.issuedThrough,
    this.permitAudience,
    this.validFor,
    this.validFrom,
    this.validIn,
    this.validUntil,
  });

  /// Serialize [SchemaPermit] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Permit',
        'issuedBy': convertToJsonLd(issuedBy, [SchemaOrganization]),
        'issuedThrough': convertToJsonLd(issuedThrough, [SchemaService]),
        'permitAudience': convertToJsonLd(permitAudience, [SchemaAudience]),
        'validFor': convertToJsonLd(validFor, [SchemaDuration]),
        'validFrom': convertToJsonLd(validFrom, [String]),
        'validIn': convertToJsonLd(validIn, [SchemaAdministrativeArea]),
        'validUntil': convertToJsonLd(validUntil, [String]),
      });
}
