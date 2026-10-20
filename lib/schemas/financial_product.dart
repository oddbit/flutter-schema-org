// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// A product provided to consumers and businesses by financial institutions
/// such as banks, insurance companies, brokerage firms, consumer finance
/// companies, and investment companies which comprise the financial services
/// industry.
/// See https://schema.org/FinancialProduct
class SchemaFinancialProduct extends SchemaService {
  /// The annual rate that is charged for borrowing (or made by investing),
  /// expressed as a single percentage number that represents the actual yearly
  /// cost of funds over the term of a loan. This includes any fees or
  /// additional costs associated with the transaction.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic annualPercentageRate;

  /// Description of fees, commissions, and other terms applied either to a
  /// class of financial product, or by a financial service organization.
  String? feesAndCommissionsSpecification;

  /// The interest rate, charged or paid, applicable to the financial product.
  /// Note: This is different from the calculated annualPercentageRate.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic interestRate;

  /// Create a new instance of [SchemaFinancialProduct]
  SchemaFinancialProduct({
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.areaServed,
    super.audience,
    super.availableChannel,
    super.award,
    super.brand,
    super.broker,
    super.category,
    super.description,
    super.disambiguatingDescription,
    super.hasCertification,
    super.hasOfferCatalog,
    super.hoursAvailable,
    super.identifier,
    super.image,
    super.isRelatedTo,
    super.isSimilarTo,
    super.logo,
    super.mainEntityOfPage,
    super.name,
    super.offers,
    super.owner,
    super.potentialAction,
    super.produces,
    super.provider,
    super.providerMobility,
    super.review,
    super.sameAs,
    super.serviceArea,
    super.serviceAudience,
    super.serviceOutput,
    super.serviceType,
    super.slogan,
    super.subjectOf,
    super.termsOfService,
    super.url,
    this.annualPercentageRate,
    this.feesAndCommissionsSpecification,
    this.interestRate,
  });

  /// Serialize [SchemaFinancialProduct] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'FinancialProduct',
        'annualPercentageRate': convertToJsonLd(annualPercentageRate,
            (v) => v is SchemaQuantitativeValue || v is num),
        'feesAndCommissionsSpecification':
            convertToJsonLd(feesAndCommissionsSpecification),
        'interestRate': convertToJsonLd(
            interestRate, (v) => v is SchemaQuantitativeValue || v is num),
      });
}
