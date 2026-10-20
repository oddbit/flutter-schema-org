// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/loan_or_credit.dart';
import 'package:schema_org/schemas/monetary_amount.dart';

/// A loan in which property or real estate is used as collateral. (A loan
/// securitized against some real estate.)
/// See https://schema.org/MortgageLoan
class SchemaMortgageLoan extends SchemaLoanOrCredit {
  /// Whether borrower is a resident of the jurisdiction where the property is
  /// located.
  bool? domiciledMortgage;

  /// Amount of mortgage mandate that can be converted into a proper mortgage
  /// at a later stage.
  SchemaMonetaryAmount? loanMortgageMandateAmount;

  /// Create a new instance of [SchemaMortgageLoan]
  SchemaMortgageLoan({
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
    super.currency,
    super.description,
    super.disambiguatingDescription,
    super.feesAndCommissionsSpecification,
    super.gracePeriod,
    super.hasCertification,
    super.hasOfferCatalog,
    super.hoursAvailable,
    super.identifier,
    super.image,
    super.interestRate,
    super.isRelatedTo,
    super.isSimilarTo,
    super.loanRepaymentForm,
    super.loanTerm,
    super.loanType,
    super.logo,
    super.mainEntityOfPage,
    super.name,
    super.offers,
    super.owner,
    super.potentialAction,
    super.produces,
    super.provider,
    super.providerMobility,
    super.recourseLoan,
    super.renegotiableLoan,
    super.requiredCollateral,
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
    this.domiciledMortgage,
    this.loanMortgageMandateAmount,
  });

  /// Serialize [SchemaMortgageLoan] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MortgageLoan',
        'domiciledMortgage': convertToJsonLd(domiciledMortgage),
        'loanMortgageMandateAmount': convertToJsonLd(loanMortgageMandateAmount),
      });
}
