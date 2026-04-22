// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates common financial incentives for products, including tax
/// credits, tax deductions, rebates and subsidies, etc.
/// See https://schema.org/IncentiveType
enum SchemaIncentiveType implements SchemaSerializable {
  /// An incentive where the recipient can receive additional funding for
  /// the purchase/lease of the good/service, which must be paid back.
  incentiveTypeLoan('https://schema.org/IncentiveType'),

  /// An incentive that reduces the purchase/lease cost of the good/service
  /// in question.
  incentiveTypeRebateOrSubsidy('https://schema.org/IncentiveType'),

  /// An incentive that directly reduces the amount of tax owed by the
  /// recipient.
  incentiveTypeTaxCredit('https://schema.org/IncentiveType'),

  /// An incentive that reduces the recipient's amount of taxable income.
  incentiveTypeTaxDeduction('https://schema.org/IncentiveType'),

  /// An incentive that reduces/exempts the recipient from taxation
  /// applicable to the incentivized good/service (e.g. luxury taxes,
  /// registration taxes, circulation tax).
  incentiveTypeTaxWaiver('https://schema.org/IncentiveType');

  /// Constructor for [SchemaIncentiveType]
  const SchemaIncentiveType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaIncentiveType] to JSON-LD
  @override
  String toJsonLd() => value;
}
