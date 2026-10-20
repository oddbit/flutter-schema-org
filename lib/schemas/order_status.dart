// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/status_enumeration.dart';

/// Enumerated status values for Order.
/// See https://schema.org/OrderStatus
enum SchemaOrderStatus implements SchemaStatusEnumeration {
  /// OrderStatus representing cancellation of an order.
  orderCancelled('https://schema.org/OrderCancelled'),

  /// OrderStatus representing successful delivery of an order.
  orderDelivered('https://schema.org/OrderDelivered'),

  /// OrderStatus representing that an order is in transit.
  orderInTransit('https://schema.org/OrderInTransit'),

  /// OrderStatus representing that payment is due on an order.
  orderPaymentDue('https://schema.org/OrderPaymentDue'),

  /// OrderStatus representing availability of an order for pickup.
  orderPickupAvailable('https://schema.org/OrderPickupAvailable'),

  /// OrderStatus representing that there is a problem with the order.
  orderProblem('https://schema.org/OrderProblem'),

  /// OrderStatus representing that an order is being processed.
  orderProcessing('https://schema.org/OrderProcessing'),

  /// OrderStatus representing that an order has been returned.
  orderReturned('https://schema.org/OrderReturned');

  /// Constructor for [SchemaOrderStatus]
  const SchemaOrderStatus(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaOrderStatus] to JSON-LD
  @override
  String toJsonLd() => value;
}
