// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// A type of product fulfillment.
/// See https://schema.org/FulfillmentTypeEnumeration
enum SchemaFulfillmentTypeEnumeration implements SchemaSerializable {
  /// Fulfillment to a collection point location.
  fulfillmentTypeCollectionPoint(
      'https://schema.org/FulfillmentTypeCollectionPoint'),

  /// Fulfillment to a customer selected address.
  fulfillmentTypeDelivery('https://schema.org/FulfillmentTypeDelivery'),

  /// Fulfillment through pick-up drop-off locations.
  fulfillmentTypePickupDropoff(
      'https://schema.org/FulfillmentTypePickupDropoff'),

  /// Fulfillment through pick-up in a store.
  fulfillmentTypePickupInStore(
      'https://schema.org/FulfillmentTypePickupInStore'),

  /// Fulfillment to a customer selected address after scheduling with the
  /// customer.
  fulfillmentTypeScheduledDelivery(
      'https://schema.org/FulfillmentTypeScheduledDelivery');

  /// Constructor for [SchemaFulfillmentTypeEnumeration]
  const SchemaFulfillmentTypeEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaFulfillmentTypeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
