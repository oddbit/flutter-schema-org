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

/// A ProductReturnPolicy provides information about product return policies
/// associated with an [SchemaOrganization] or [SchemaProduct].
/// See https://schema.org/ProductReturnPolicy
@Deprecated(
    'Use [SchemaMerchantReturnPolicy]. See https://schema.org/ProductReturnPolicy')
class SchemaProductReturnPolicy extends SchemaIntangible {
  /// The productReturnDays property indicates the number of days (from
  /// purchase) within which relevant product return policy is applicable.
  @Deprecated(
      'Use [merchantReturnDays]. See https://schema.org/productReturnDays')
  int? productReturnDays;

  /// Indicates a Web page or service by URL, for product return.
  @Deprecated(
      'Use [merchantReturnLink]. See https://schema.org/productReturnLink')
  String? productReturnLink;

  /// Create a new instance of [SchemaProductReturnPolicy]
  SchemaProductReturnPolicy({
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
    this.productReturnDays,
    this.productReturnLink,
  });

  /// Serialize [SchemaProductReturnPolicy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ProductReturnPolicy',
        'productReturnDays': convertToJsonLd(productReturnDays),
        'productReturnLink': convertToJsonLd(productReturnLink),
      });
}
