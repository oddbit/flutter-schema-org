// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// The types of expenses that are covered by the incentive. For example some
/// incentives are only for the goods (tangible items) but the services
/// (labor) are excluded.
/// See https://schema.org/IncentiveQualifiedExpenseType
enum SchemaIncentiveQualifiedExpenseType implements SchemaSerializable {
  /// This incentive applies to goods only.
  incentiveQualifiedExpenseTypeGoodsOnly(
      'https://schema.org/IncentiveQualifiedExpenseType'),

  /// This incentive can apply to either goods or services (or both).
  incentiveQualifiedExpenseTypeGoodsOrServices(
      'https://schema.org/IncentiveQualifiedExpenseType'),

  /// This incentive applies to services only.
  incentiveQualifiedExpenseTypeServicesOnly(
      'https://schema.org/IncentiveQualifiedExpenseType'),

  /// This incentive applies to utility bills.
  incentiveQualifiedExpenseTypeUtilityBill(
      'https://schema.org/IncentiveQualifiedExpenseType');

  /// Constructor for [SchemaIncentiveQualifiedExpenseType]
  const SchemaIncentiveQualifiedExpenseType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaIncentiveQualifiedExpenseType] to JSON-LD
  @override
  String toJsonLd() => value;
}
