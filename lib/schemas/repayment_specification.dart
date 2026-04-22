// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/monetary_amount.dart';

/// A structured value representing repayment.
/// See https://schema.org/RepaymentSpecification
class SchemaRepaymentSpecification extends SchemaStructuredValue {
  /// a type of payment made in cash during the onset of the purchase of an
  /// expensive good/service. The payment typically represents only a
  /// percentage of the full purchase price.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  dynamic downPayment;

  /// The amount to be paid as a penalty in the event of early payment of the
  /// loan.
  SchemaMonetaryAmount? earlyPrepaymentPenalty;

  /// The amount of money to pay in a single payment.
  SchemaMonetaryAmount? loanPaymentAmount;

  /// Frequency of payments due, i.e. number of months between payments. This
  /// is defined as a frequency, i.e. the reciprocal of a period of time.
  num? loanPaymentFrequency;

  /// The number of payments contractually required at origination to repay the
  /// loan. For monthly paying loans this is the number of months from the
  /// contractual first payment date to the maturity date.
  num? numberOfLoanPayments;

  /// Create a new instance of [SchemaRepaymentSpecification]
  SchemaRepaymentSpecification({
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
    this.downPayment,
    this.earlyPrepaymentPenalty,
    this.loanPaymentAmount,
    this.loanPaymentFrequency,
    this.numberOfLoanPayments,
  });

  /// Serialize [SchemaRepaymentSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'RepaymentSpecification',
        'downPayment':
            convertToJsonLd(downPayment, [SchemaMonetaryAmount, num]),
        'earlyPrepaymentPenalty':
            convertToJsonLd(earlyPrepaymentPenalty, [SchemaMonetaryAmount]),
        'loanPaymentAmount':
            convertToJsonLd(loanPaymentAmount, [SchemaMonetaryAmount]),
        'loanPaymentFrequency': convertToJsonLd(loanPaymentFrequency, [num]),
        'numberOfLoanPayments': convertToJsonLd(numberOfLoanPayments, [num]),
      });
}
