// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/transfer_action.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/bank_or_credit_union.dart';

/// The act of transferring money from one place to another place. This may
/// occur electronically or physically.
/// See https://schema.org/MoneyTransfer
class SchemaMoneyTransfer extends SchemaTransferAction {
  /// The amount of money.
  ///
  /// Supported types: [SchemaMonetaryAmount], [num]
  dynamic amount;

  /// A bank or bank’s branch, financial institution or international financial
  /// institution operating the beneficiary’s bank account or releasing funds
  /// for the beneficiary.
  ///
  /// Supported types: [SchemaBankOrCreditUnion], [String]
  dynamic beneficiaryBank;

  /// Create a new instance of [SchemaMoneyTransfer]
  SchemaMoneyTransfer({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.fromLocation,
    super.identifier,
    super.image,
    super.instrument,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.provider,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.toLocation,
    super.url,
    this.amount,
    this.beneficiaryBank,
  });

  /// Serialize [SchemaMoneyTransfer] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MoneyTransfer',
        'amount': convertToJsonLd(
            amount, (v) => v is SchemaMonetaryAmount || v is num),
        'beneficiaryBank': convertToJsonLd(beneficiaryBank,
            (v) => v is SchemaBankOrCreditUnion || v is String),
      });
}
