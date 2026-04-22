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
import 'package:schema_org/schemas/payment_card.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/payment_method_type.dart';

/// //purl.org/goodrelations/v1#VISA
/// See https://schema.org/CreditCard
class SchemaCreditCard extends SchemaLoanOrCredit implements SchemaPaymentCard {
  /// A cardholder benefit that pays the cardholder a small percentage of their
  /// net expenditures.
  ///
  /// Supported types: [bool], [num]
  @override
  dynamic cashBack;

  /// A secure method for consumers to purchase products or services via debit,
  /// credit or smartcards by using RFID or NFC technology.
  @override
  bool? contactlessPayment;

  /// A floor limit is the amount of money above which credit card transactions
  /// must be authorized.
  @override
  SchemaMonetaryAmount? floorLimit;

  /// The minimum payment is the lowest amount of money that one is required to
  /// pay on a credit card statement each month.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  @override
  dynamic monthlyMinimumRepaymentAmount;

  /// The type of a payment method.
  @override
  SchemaPaymentMethodType? paymentMethodType;

  /// Create a new instance of [SchemaCreditCard]
  SchemaCreditCard({
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
    this.cashBack,
    this.contactlessPayment,
    this.floorLimit,
    this.monthlyMinimumRepaymentAmount,
    this.paymentMethodType,
  });

  /// Serialize [SchemaCreditCard] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CreditCard',
        'cashBack': convertToJsonLd(cashBack, [bool, num]),
        'contactlessPayment': convertToJsonLd(contactlessPayment, [bool]),
        'floorLimit': convertToJsonLd(floorLimit, [SchemaMonetaryAmount]),
        'monthlyMinimumRepaymentAmount': convertToJsonLd(
            monthlyMinimumRepaymentAmount, [SchemaMonetaryAmount, num]),
        'paymentMethodType':
            convertToJsonLd(paymentMethodType, [SchemaPaymentMethodType]),
      });
}
