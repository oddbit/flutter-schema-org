// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/bank_account.dart';
import 'package:schema_org/schemas/investment_or_deposit.dart';
import 'package:schema_org/schemas/monetary_amount.dart';

/// A type of Bank Account with a main purpose of depositing funds to gain
/// interest or other benefits.
/// See https://schema.org/DepositAccount
class SchemaDepositAccount extends SchemaBankAccount
    implements SchemaInvestmentOrDeposit {
  /// The amount of money.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  @override
  dynamic amount;

  /// Create a new instance of [SchemaDepositAccount]
  SchemaDepositAccount({
    super.accountMinimumInflow,
    super.accountOverdraftLimit,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.annualPercentageRate,
    super.areaServed,
    super.audience,
    super.availableChannel,
    super.award,
    super.bankAccountType,
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
    this.amount,
  });

  /// Serialize [SchemaDepositAccount] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DepositAccount',
        'amount': convertToJsonLd(amount, [SchemaMonetaryAmount, num]),
      });
}
