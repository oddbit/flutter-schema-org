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
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/price_component_type_enumeration.dart';
import 'package:schema_org/schemas/price_type_enumeration.dart';

/// The price asked for a given offer by the respective organization or
/// person.
/// See https://schema.org/UnitPriceSpecification
class SchemaUnitPriceSpecification extends SchemaPriceSpecification {
  /// Specifies for how long this price (or price component) will be billed.
  /// Can be used, for example, to model the contractual duration of a
  /// subscription or payment plan. Type can be either a Duration or a Number
  /// (in which case the unit of measurement, for example month, is specified
  /// by the unitCode property).
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue], [num]
  dynamic billingDuration;

  /// This property specifies the minimal quantity and rounding increment that
  /// will be the basis for the billing. The unit of measurement is specified
  /// by the unitCode property.
  num? billingIncrement;

  /// Specifies after how much time this price (or price component) becomes
  /// valid and billing starts. Can be used, for example, to model a price
  /// increase after the first year of a subscription. The unit of measurement
  /// is specified by the unitCode property.
  num? billingStart;

  /// Identifies a price component (for example, a line item on an invoice),
  /// part of the total price for an offer.
  SchemaPriceComponentTypeEnumeration? priceComponentType;

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

  /// The reference quantity for which a certain price applies, e.g. 1 EUR per
  /// 4 kWh of electricity. This property is a replacement for
  /// unitOfMeasurement for the advanced cases where the price does not relate
  /// to a standard unit.
  SchemaQuantitativeValue? referenceQuantity;

  /// The unit of measurement given using the UN/CEFACT Common Code (3
  /// characters) or a URL. Other codes than the UN/CEFACT Common Code may be
  /// used with a prefix followed by a colon.
  String? unitCode;

  /// A string or text indicating the unit of measurement. Useful if you cannot
  /// provide a standard unit code for <a href='unitCode'>unitCode</a>.
  String? unitText;

  /// Create a new instance of [SchemaUnitPriceSpecification]
  SchemaUnitPriceSpecification({
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
    this.billingDuration,
    this.billingIncrement,
    this.billingStart,
    this.priceComponentType,
    this.priceType,
    this.referenceQuantity,
    this.unitCode,
    this.unitText,
  });

  /// Serialize [SchemaUnitPriceSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'UnitPriceSpecification',
        'billingDuration': convertToJsonLd(
            billingDuration, [SchemaDuration, SchemaQuantitativeValue, num]),
        'billingIncrement': convertToJsonLd(billingIncrement, [num]),
        'billingStart': convertToJsonLd(billingStart, [num]),
        'priceComponentType': convertToJsonLd(
            priceComponentType, [SchemaPriceComponentTypeEnumeration]),
        'priceType':
            convertToJsonLd(priceType, [SchemaPriceTypeEnumeration, String]),
        'referenceQuantity':
            convertToJsonLd(referenceQuantity, [SchemaQuantitativeValue]),
        'unitCode': convertToJsonLd(unitCode, [String]),
        'unitText': convertToJsonLd(unitText, [String]),
      });
}
