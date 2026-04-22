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
import 'package:schema_org/schemas/parcel_delivery.dart';
import 'package:schema_org/schemas/order_status.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/service.dart';

/// An order item is a line of an order. It includes the quantity and
/// shipping details of a bought offer.
/// See https://schema.org/OrderItem
class SchemaOrderItem extends SchemaStructuredValue {
  /// The delivery of the parcel related to this order or order item.
  SchemaParcelDelivery? orderDelivery;

  /// The identifier of the order item.
  String? orderItemNumber;

  /// The current status of the order item.
  SchemaOrderStatus? orderItemStatus;

  /// The number of the item ordered. If the property is not set, assume the
  /// quantity is one.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic orderQuantity;

  /// The item ordered.
  ///
  /// Supported types: [SchemaOrderItem], [SchemaProduct], [SchemaService]
  dynamic orderedItem;

  /// Create a new instance of [SchemaOrderItem]
  SchemaOrderItem({
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
    this.orderDelivery,
    this.orderItemNumber,
    this.orderItemStatus,
    this.orderQuantity,
    this.orderedItem,
  });

  /// Serialize [SchemaOrderItem] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'OrderItem',
        'orderDelivery': convertToJsonLd(orderDelivery, [SchemaParcelDelivery]),
        'orderItemNumber': convertToJsonLd(orderItemNumber, [String]),
        'orderItemStatus':
            convertToJsonLd(orderItemStatus, [SchemaOrderStatus]),
        'orderQuantity':
            convertToJsonLd(orderQuantity, [SchemaQuantitativeValue, num]),
        'orderedItem': convertToJsonLd(
            orderedItem, [SchemaOrderItem, SchemaProduct, SchemaService]),
      });
}
