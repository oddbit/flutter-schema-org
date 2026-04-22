// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/financial_product.dart';
import 'package:schema_org/schemas/monetary_amount.dart';

/// A product or service offered by a bank whereby one may deposit, withdraw
/// or transfer money and in some cases be paid interest.
/// See https://schema.org/BankAccount
class SchemaBankAccount extends SchemaFinancialProduct {
  /// A minimum amount that has to be paid in every month.
  SchemaMonetaryAmount? accountMinimumInflow;

  /// An overdraft is an extension of credit from a lending institution when an
  /// account reaches zero. An overdraft allows the individual to continue
  /// withdrawing money even if the account has no funds in it. Basically the
  /// bank allows people to borrow a set amount of money.
  SchemaMonetaryAmount? accountOverdraftLimit;

  /// The type of a bank account.
  String? bankAccountType;

  /// Create a new instance of [SchemaBankAccount]
  SchemaBankAccount({
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
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
    this.accountMinimumInflow,
    this.accountOverdraftLimit,
    this.bankAccountType,
  });

  /// Serialize [SchemaBankAccount] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BankAccount',
        'accountMinimumInflow':
            convertToJsonLd(accountMinimumInflow, [SchemaMonetaryAmount]),
        'accountOverdraftLimit':
            convertToJsonLd(accountOverdraftLimit, [SchemaMonetaryAmount]),
        'bankAccountType': convertToJsonLd(bankAccountType, [String]),
      });
}
