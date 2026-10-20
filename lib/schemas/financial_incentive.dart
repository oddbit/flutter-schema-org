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
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/loan_or_credit.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/unit_price_specification.dart';
import 'package:schema_org/schemas/incentive_status.dart';
import 'package:schema_org/schemas/incentive_type.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/purchase_type.dart';
import 'package:schema_org/schemas/incentive_qualified_expense_type.dart';

/// <p>Represents financial incentives for goods/services offered by an
/// organization (or individual).</p>
///
/// <p>Typically contains the [Schemaname] of the incentive, the
/// [SchemaincentivizedItem], the [SchemaincentiveAmount], the
/// [SchemaincentiveStatus], [SchemaincentiveType], the [Schemaprovider] of
/// the incentive, and [SchemaeligibleWithSupplier].</p>
///
/// <p>Optionally contains criteria on whether the incentive is limited based
/// on [SchemapurchaseType], [SchemapurchasePriceLimit], [SchemaincomeLimit],
/// and the [SchemaqualifiedExpense].
/// See https://schema.org/FinancialIncentive
class SchemaFinancialIncentive extends SchemaIntangible {
  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  dynamic areaServed;

  /// The supplier of the incentivized item/service for which the incentive is
  /// valid for such as a utility company, merchant, or contractor.
  SchemaOrganization? eligibleWithSupplier;

  /// Describes the amount that can be redeemed from this incentive.
  /// <p>[SchemaQuantitativeValue]: Use this for incentives based on price
  /// (either raw amount or percentage-based). For a raw amount example, "You
  /// can claim $2,500 - $7,500 from the total cost of installation" would be
  /// represented as the following:</p> { "@type": "QuantitativeValue",
  /// “minValue”: 2500, “maxValue”: 7500, "unitCode": "USD" }
  /// <p>[SchemaQuantitativeValue] can also be used for percentage amounts. In
  /// such cases, value is used to represent the incentive’s percentage, while
  /// maxValue represents a limit (if one exists) to that incentive. The
  /// unitCode should be 'P1' and the unitText should be '%', while
  /// valueReference should be used for holding the currency type. For example,
  /// "You can claim up to 30% of the total cost of installation, up to a
  /// maximum of $7,500" would be:</p> { "@type": "QuantitativeValue", "value":
  /// 30, "unitCode": "P1", "unitText": "%", “maxValue”: 7500,
  /// “valueReference”: “USD” } <p>[SchemaUnitPriceSpecification]: Use this for
  /// incentives that are based on amounts rather than price. For example, a
  /// net metering rebate that pays $10/kWh, up to $1,000:</p> { "@type":
  /// "UnitPriceSpecification", "price": 10, "priceCurrency": "USD",
  /// "referenceQuantity": 1, "unitCode": "DO3", "unitText": "kw/h",
  /// "maxPrice": 1000, "description": "$10 / kwh up to $1000" }
  /// <p>[SchemaLoanOrCredit]: Use for incentives that are loan based. For
  /// example, a loan of $4,000 - $50,000 with a repayment term of 10 years,
  /// interest free would look like:</p> { "@type": "LoanOrCredit", "loanTerm":
  /// { "@type":"QuantitativeValue", "value":"10", "unitCode": "ANN" },
  /// "amount":[ { "@type": "QuantitativeValue", "Name":"fixed interest rate",
  /// "value":"0", }, ], "amount":[ { "@type": "MonetaryAmount", "Name":"min
  /// loan amount", "value":"4000", "currency":"CAD" }, { "@type":
  /// "MonetaryAmount", "Name":"max loan amount", "value":"50000",
  /// "currency":"CAD" } ], }
  ///
  /// In summary: <ul><li>Use [SchemaQuantitativeValue] for
  /// absolute/percentage-based incentives applied on the price of a
  /// good/service.</li> <li>Use [SchemaUnitPriceSpecification] for incentives
  /// based on a per-unit basis (e.g. net metering).</li> <li>Use
  /// [SchemaLoanOrCredit] for loans/credits.</li> </ul>.
  ///
  /// Supported types: [SchemaLoanOrCredit], [SchemaQuantitativeValue],
  /// [SchemaUnitPriceSpecification]
  dynamic incentiveAmount;

  /// The status of the incentive (active, on hold, retired, etc.).
  SchemaIncentiveStatus? incentiveStatus;

  /// The type of incentive offered (tax credit/rebate, tax deduction, tax
  /// waiver, subsidies, etc.).
  SchemaIncentiveType? incentiveType;

  /// The type or specific product(s) and/or service(s) being incentivized.
  /// <p>DefinedTermSets are used for product and service categories such as
  /// the United Nations Standard Products and Services Code:</p> { "@type":
  /// "DefinedTerm", "inDefinedTermSet": "https://www.unspsc.org/", "termCode":
  /// "261315XX", "name": "Photovoltaic module" }
  ///
  /// <p>For a specific product or service, use the Product type:</p> {
  /// "@type": "Product", "name": "Kenmore White 17" Microwave", } For multiple
  /// different incentivized items, use multiple [SchemaDefinedTerm] or
  /// [SchemaProduct].
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaProduct]
  dynamic incentivizedItem;

  /// Optional. Income limit for which the incentive is applicable for. <p>If
  /// MonetaryAmount is specified, this should be based on annualized income
  /// (e.g. if an incentive is limited to those making <$114,000 annually):</p>
  /// { "@type": "MonetaryAmount", "maxValue": 114000, "currency": "USD", }
  ///
  /// Use Text for incentives that are limited based on other criteria, for
  /// example if an incentive is only available to recipients making 120% of
  /// the median poverty income in their area.
  ///
  /// Supported types: [SchemaMonetaryAmount], [String]
  dynamic incomeLimit;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// The publisher of the article in question.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic publisher;

  /// Optional. The maximum price the item can have and still qualify for this
  /// offer.
  SchemaMonetaryAmount? purchasePriceLimit;

  /// Optional. The type of purchase the consumer must make in order to qualify
  /// for this incentive.
  SchemaPurchaseType? purchaseType;

  /// Optional. The types of expenses that are covered by the incentive. For
  /// example some incentives are only for the goods (tangible items) but the
  /// services (labor) are excluded.
  SchemaIncentiveQualifiedExpenseType? qualifiedExpense;

  /// The date when the item becomes valid.
  String? validFrom;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  String? validThrough;

  /// Create a new instance of [SchemaFinancialIncentive]
  SchemaFinancialIncentive({
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
    this.areaServed,
    this.eligibleWithSupplier,
    this.incentiveAmount,
    this.incentiveStatus,
    this.incentiveType,
    this.incentivizedItem,
    this.incomeLimit,
    this.provider,
    this.publisher,
    this.purchasePriceLimit,
    this.purchaseType,
    this.qualifiedExpense,
    this.validFrom,
    this.validThrough,
  });

  /// Serialize [SchemaFinancialIncentive] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'FinancialIncentive',
        'areaServed': convertToJsonLd(
            areaServed,
            (v) =>
                v is SchemaAdministrativeArea ||
                v is SchemaGeoShape ||
                v is SchemaPlace ||
                v is String),
        'eligibleWithSupplier': convertToJsonLd(eligibleWithSupplier),
        'incentiveAmount': convertToJsonLd(
            incentiveAmount,
            (v) =>
                v is SchemaLoanOrCredit ||
                v is SchemaQuantitativeValue ||
                v is SchemaUnitPriceSpecification),
        'incentiveStatus': convertToJsonLd(incentiveStatus),
        'incentiveType': convertToJsonLd(incentiveType),
        'incentivizedItem': convertToJsonLd(incentivizedItem,
            (v) => v is SchemaDefinedTerm || v is SchemaProduct),
        'incomeLimit': convertToJsonLd(
            incomeLimit, (v) => v is SchemaMonetaryAmount || v is String),
        'provider': convertToJsonLd(
            provider, (v) => v is SchemaOrganization || v is SchemaPerson),
        'publisher': convertToJsonLd(
            publisher, (v) => v is SchemaOrganization || v is SchemaPerson),
        'purchasePriceLimit': convertToJsonLd(purchasePriceLimit),
        'purchaseType': convertToJsonLd(purchaseType),
        'qualifiedExpense': convertToJsonLd(qualifiedExpense),
        'validFrom': convertToJsonLd(validFrom),
        'validThrough': convertToJsonLd(validThrough),
      });
}
