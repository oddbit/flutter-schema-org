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
import 'package:schema_org/schemas/payment_method.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/payment_method_type.dart';

/// A payment method using a credit, debit, store or other card to associate
/// the payment with an account.
/// See https://schema.org/PaymentCard
class SchemaPaymentCard extends SchemaFinancialProduct
    implements SchemaPaymentMethod {
  /// A cardholder benefit that pays the cardholder a small percentage of their
  /// net expenditures.
  ///
  /// Supported types: [bool], [num]
  dynamic cashBack;

  /// A secure method for consumers to purchase products or services via debit,
  /// credit or smartcards by using RFID or NFC technology.
  bool? contactlessPayment;

  /// A floor limit is the amount of money above which credit card transactions
  /// must be authorized.
  SchemaMonetaryAmount? floorLimit;

  /// The minimum payment is the lowest amount of money that one is required to
  /// pay on a credit card statement each month.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  dynamic monthlyMinimumRepaymentAmount;

  /// The type of a payment method.
  @override
  SchemaPaymentMethodType? paymentMethodType;

  /// Create a new instance of [SchemaPaymentCard]
  SchemaPaymentCard({
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
    this.cashBack,
    this.contactlessPayment,
    this.floorLimit,
    this.monthlyMinimumRepaymentAmount,
    this.paymentMethodType,
  });

  /// Serialize [SchemaPaymentCard] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PaymentCard',
        'cashBack': convertToJsonLd(cashBack, (v) => v is bool || v is num),
        'contactlessPayment': convertToJsonLd(contactlessPayment),
        'floorLimit': convertToJsonLd(floorLimit),
        'monthlyMinimumRepaymentAmount': convertToJsonLd(
            monthlyMinimumRepaymentAmount,
            (v) => v is SchemaMonetaryAmount || v is num),
        'paymentMethodType': convertToJsonLd(paymentMethodType),
      });
}
