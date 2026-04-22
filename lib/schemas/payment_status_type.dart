// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/status_enumeration.dart';

/// A specific payment status. For example, PaymentDue, PaymentComplete, etc.
/// See https://schema.org/PaymentStatusType
enum SchemaPaymentStatusType implements SchemaStatusEnumeration {
  /// An automatic payment system is in place and will be used.
  paymentAutomaticallyApplied('https://schema.org/PaymentStatusType'),

  /// The payment has been received and processed.
  paymentComplete('https://schema.org/PaymentStatusType'),

  /// The payee received the payment, but it was declined for some reason.
  paymentDeclined('https://schema.org/PaymentStatusType'),

  /// The payment is due, but still within an acceptable time to be
  /// received.
  paymentDue('https://schema.org/PaymentStatusType'),

  /// The payment is due and considered late.
  paymentPastDue('https://schema.org/PaymentStatusType');

  /// Constructor for [SchemaPaymentStatusType]
  const SchemaPaymentStatusType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaPaymentStatusType] to JSON-LD
  @override
  String toJsonLd() => value;
}
