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
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/repayment_specification.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/thing.dart';

/// A financial product for the loaning of an amount of money, or line of
/// credit, under agreed terms and charges.
/// See https://schema.org/LoanOrCredit
class SchemaLoanOrCredit extends SchemaFinancialProduct {
  /// The amount of money.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  dynamic amount;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? currency;

  /// The period of time after any due date that the borrower has to fulfil its
  /// obligations before a default (failure to pay) is deemed to have occurred.
  SchemaDuration? gracePeriod;

  /// A form of paying back money previously borrowed from a lender. Repayment
  /// usually takes the form of periodic payments that normally include part
  /// principal plus interest in each payment.
  SchemaRepaymentSpecification? loanRepaymentForm;

  /// The duration of the loan or credit agreement.
  SchemaQuantitativeValue? loanTerm;

  /// The type of a loan or credit.
  String? loanType;

  /// The only way you get the money back in the event of default is the
  /// security. Recourse is where you still have the opportunity to go back to
  /// the borrower for the rest of the money.
  bool? recourseLoan;

  /// Whether the terms for payment of interest can be renegotiated during the
  /// life of the loan.
  bool? renegotiableLoan;

  /// Assets required to secure loan or credit repayments. It may take form of
  /// third party pledge, goods, financial instruments (cash, securities, etc.)
  ///
  /// Supported types: [String], [SchemaThing]
  dynamic requiredCollateral;

  /// Create a new instance of [SchemaLoanOrCredit]
  SchemaLoanOrCredit({
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
    this.amount,
    this.currency,
    this.gracePeriod,
    this.loanRepaymentForm,
    this.loanTerm,
    this.loanType,
    this.recourseLoan,
    this.renegotiableLoan,
    this.requiredCollateral,
  });

  /// Serialize [SchemaLoanOrCredit] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'LoanOrCredit',
        'amount': convertToJsonLd(amount, [SchemaMonetaryAmount, num]),
        'currency': convertToJsonLd(currency, [String]),
        'gracePeriod': convertToJsonLd(gracePeriod, [SchemaDuration]),
        'loanRepaymentForm':
            convertToJsonLd(loanRepaymentForm, [SchemaRepaymentSpecification]),
        'loanTerm': convertToJsonLd(loanTerm, [SchemaQuantitativeValue]),
        'loanType': convertToJsonLd(loanType, [String]),
        'recourseLoan': convertToJsonLd(recourseLoan, [bool]),
        'renegotiableLoan': convertToJsonLd(renegotiableLoan, [bool]),
        'requiredCollateral':
            convertToJsonLd(requiredCollateral, [String, SchemaThing]),
      });
}
