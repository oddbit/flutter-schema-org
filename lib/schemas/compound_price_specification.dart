// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/price_type_enumeration.dart';

/// A compound price specification is one that bundles multiple prices that
/// all apply in combination for different dimensions of consumption. Use the
/// name property of the attached unit price specification for indicating the
/// dimension of a price component (e.g. "electricity" or "final cleaning").
/// See https://schema.org/CompoundPriceSpecification
class SchemaCompoundPriceSpecification extends SchemaPriceSpecification {
  /// This property links to all [SchemaUnitPriceSpecification] nodes that
  /// apply in parallel for the [SchemaCompoundPriceSpecification] node.
  SchemaPriceSpecification? priceComponent;

  /// Defines the type of a price specified for an offered product, for example
  /// a list price, a (temporary) sale price or a manufacturer suggested retail
  /// price. If multiple prices are specified for an offer the
  /// [SchemapriceType] property can be used to identify the type of each such
  /// specified price. The value of priceType can be specified as a value from
  /// enumeration PriceTypeEnumeration or, a UN/EDIFACT 5387 code, or as a free
  /// form text string for price types that are not already predefined in
  /// PriceTypeEnumeration.
  ///
  /// Supported types: [SchemaPriceTypeEnumeration], [String]
  dynamic priceType;

  /// Create a new instance of [SchemaCompoundPriceSpecification]
  SchemaCompoundPriceSpecification({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.eligibleQuantity,
    super.eligibleTransactionVolume,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.maxPrice,
    super.membershipPointsEarned,
    super.minPrice,
    super.name,
    super.owner,
    super.potentialAction,
    super.price,
    super.priceCurrency,
    super.sameAs,
    super.subjectOf,
    super.url,
    super.validForMemberTier,
    super.validFrom,
    super.validThrough,
    super.valueAddedTaxIncluded,
    this.priceComponent,
    this.priceType,
  });

  /// Serialize [SchemaCompoundPriceSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CompoundPriceSpecification',
        'priceComponent':
            convertToJsonLd(priceComponent, [SchemaPriceSpecification]),
        'priceType':
            convertToJsonLd(priceType, [SchemaPriceTypeEnumeration, String]),
      });
}
