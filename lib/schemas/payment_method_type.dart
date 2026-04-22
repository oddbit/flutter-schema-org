// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// The type of payment method, only for generic payment types, specific
/// forms of payments, like card payment should be expressed using subclasses
/// of PaymentMethod.
/// See https://schema.org/PaymentMethodType
enum SchemaPaymentMethodType implements SchemaSerializable {
  /// //purl.org/goodrelations/v1#ByBankTransferInAdvance</code>.
  byBankTransferInAdvance('https://schema.org/PaymentMethodType'),

  /// //purl.org/goodrelations/v1#ByInvoice</code>.
  byInvoice('https://schema.org/PaymentMethodType'),

  /// //purl.org/goodrelations/v1#COD</code>.
  cOD('https://schema.org/PaymentMethodType'),

  /// //purl.org/goodrelations/v1#Cash</code>.
  cash('https://schema.org/PaymentMethodType'),

  /// //purl.org/goodrelations/v1#CheckInAdvance</code>.
  checkInAdvance('https://schema.org/PaymentMethodType'),

  /// //purl.org/goodrelations/v1#DirectDebit</code>.
  directDebit('https://schema.org/PaymentMethodType'),

  /// Payment in advance in some form of shop or kiosk for goods purchased
  /// online.
  inStorePrepay('https://schema.org/PaymentMethodType'),

  /// Payment by billing via the phone carrier.
  phoneCarrierPayment('https://schema.org/PaymentMethodType');

  /// Constructor for [SchemaPaymentMethodType]
  const SchemaPaymentMethodType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaPaymentMethodType] to JSON-LD
  @override
  String toJsonLd() => value;
}
