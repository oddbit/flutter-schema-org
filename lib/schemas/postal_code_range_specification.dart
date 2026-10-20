// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';

/// Indicates a range of postal codes, usually defined as the set of valid
/// codes between [SchemapostalCodeBegin] and [SchemapostalCodeEnd],
/// inclusively.
/// See https://schema.org/PostalCodeRangeSpecification
class SchemaPostalCodeRangeSpecification extends SchemaStructuredValue {
  /// First postal code in a range (included).
  String? postalCodeBegin;

  /// Last postal code in the range (included). Needs to be after
  /// [SchemapostalCodeBegin].
  String? postalCodeEnd;

  /// Create a new instance of [SchemaPostalCodeRangeSpecification]
  SchemaPostalCodeRangeSpecification({
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
    this.postalCodeBegin,
    this.postalCodeEnd,
  });

  /// Serialize [SchemaPostalCodeRangeSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PostalCodeRangeSpecification',
        'postalCodeBegin': convertToJsonLd(postalCodeBegin),
        'postalCodeEnd': convertToJsonLd(postalCodeEnd),
      });
}
