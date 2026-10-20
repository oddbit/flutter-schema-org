// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/nonprofit_type.dart';

/// UKNonprofitType: Non-profit organization type originating from the United
/// Kingdom.
/// See https://schema.org/UKNonprofitType
enum SchemaUKNonprofitType implements SchemaNonprofitType {
  /// CharitableIncorporatedOrganization: Non-profit type referring to a
  /// Charitable Incorporated Organization (UK).
  charitableIncorporatedOrganization(
      'https://schema.org/CharitableIncorporatedOrganization'),

  /// LimitedByGuaranteeCharity: Non-profit type referring to a charitable
  /// company that is limited by guarantee (UK).
  limitedByGuaranteeCharity('https://schema.org/LimitedByGuaranteeCharity'),

  /// UKTrust: Non-profit type referring to a UK trust.
  uKTrust('https://schema.org/UKTrust'),

  /// UnincorporatedAssociationCharity: Non-profit type referring to a
  /// charitable company that is not incorporated (UK).
  unincorporatedAssociationCharity(
      'https://schema.org/UnincorporatedAssociationCharity');

  /// Constructor for [SchemaUKNonprofitType]
  const SchemaUKNonprofitType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaUKNonprofitType] to JSON-LD
  @override
  String toJsonLd() => value;
}
