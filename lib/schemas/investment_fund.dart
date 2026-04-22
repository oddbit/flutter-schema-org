// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/investment_or_deposit.dart';

/// A company or fund that gathers capital from a number of investors to
/// create a pool of money that is then re-invested into stocks, bonds and
/// other assets.
/// See https://schema.org/InvestmentFund
class SchemaInvestmentFund extends SchemaInvestmentOrDeposit {
  /// Create a new instance of [SchemaInvestmentFund]
  SchemaInvestmentFund({
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.amount,
    super.annualPercentageRate,
    super.areaServed,
    super.audience,
    super.availableChannel,
    super.award,
    super.brand,
    super.broker,
    super.category,
    super.description,
    super.disambiguatingDescription,
    super.feesAndCommissionsSpecification,
    super.hasCertification,
    super.hasOfferCatalog,
    super.hoursAvailable,
    super.identifier,
    super.image,
    super.interestRate,
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
  });

  /// Serialize [SchemaInvestmentFund] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'InvestmentFund',
      });
}
