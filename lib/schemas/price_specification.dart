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
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/member_program_tier.dart';

/// A structured value representing a price or price range. Typically, only
/// the subclasses of this type are used for markup. It is recommended to use
/// [SchemaMonetaryAmount] to describe independent amounts of money such as a
/// salary, credit card limits, etc.
/// See https://schema.org/PriceSpecification
class SchemaPriceSpecification extends SchemaStructuredValue {
  /// The interval and unit of measurement of ordering quantities for which the
  /// offer or price specification is valid. This allows e.g. specifying that a
  /// certain freight charge is valid only for a certain quantity.
  SchemaQuantitativeValue? eligibleQuantity;

  /// The transaction volume, in a monetary unit, for which the offer or price
  /// specification is valid, e.g. for indicating a minimal purchasing volume,
  /// to express free shipping above a certain order volume, or to limit the
  /// acceptance of credit cards to purchases to a certain minimal amount.
  SchemaPriceSpecification? eligibleTransactionVolume;

  /// The highest price if the price is a range.
  num? maxPrice;

  /// The number of membership points earned by the member. If necessary, the
  /// unitText can be used to express the units the points are issued in. (E.g.
  /// stars, miles, etc.)
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic membershipPointsEarned;

  /// The lowest price if the price is a range.
  num? minPrice;

  /// //www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and
  /// Microdata syntax allow the use of a "content=" attribute for publishing
  /// simple machine-readable values alongside more human-friendly
  /// formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030)
  /// to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode
  /// symbols.
  ///
  /// Supported types: [String], [num]
  dynamic price;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? priceCurrency;

  /// The membership program tier(s) an Offer (or a PriceSpecification,
  /// OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid
  /// for.
  SchemaMemberProgramTier? validForMemberTier;

  /// The date when the item becomes valid.
  String? validFrom;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  String? validThrough;

  /// Specifies whether the applicable value-added tax (VAT) is included in the
  /// price specification or not.
  bool? valueAddedTaxIncluded;

  /// Create a new instance of [SchemaPriceSpecification]
  SchemaPriceSpecification({
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
    this.eligibleQuantity,
    this.eligibleTransactionVolume,
    this.maxPrice,
    this.membershipPointsEarned,
    this.minPrice,
    this.price,
    this.priceCurrency,
    this.validForMemberTier,
    this.validFrom,
    this.validThrough,
    this.valueAddedTaxIncluded,
  });

  /// Serialize [SchemaPriceSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PriceSpecification',
        'eligibleQuantity':
            convertToJsonLd(eligibleQuantity, [SchemaQuantitativeValue]),
        'eligibleTransactionVolume': convertToJsonLd(
            eligibleTransactionVolume, [SchemaPriceSpecification]),
        'maxPrice': convertToJsonLd(maxPrice, [num]),
        'membershipPointsEarned': convertToJsonLd(
            membershipPointsEarned, [SchemaQuantitativeValue, num]),
        'minPrice': convertToJsonLd(minPrice, [num]),
        'price': convertToJsonLd(price, [String, num]),
        'priceCurrency': convertToJsonLd(priceCurrency, [String]),
        'validForMemberTier':
            convertToJsonLd(validForMemberTier, [SchemaMemberProgramTier]),
        'validFrom': convertToJsonLd(validFrom, [String]),
        'validThrough': convertToJsonLd(validThrough, [String]),
        'valueAddedTaxIncluded': convertToJsonLd(valueAddedTaxIncluded, [bool]),
      });
}
