// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/parcel_delivery.dart';
import 'package:schema_org/schemas/order_status.dart';
import 'package:schema_org/schemas/order_item.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/invoice.dart';
import 'package:schema_org/schemas/payment_method.dart';

/// An order is a confirmation of a transaction (a receipt), which can
/// contain multiple line items, each represented by an Offer that has been
/// accepted by the customer.
/// See https://schema.org/Order
class SchemaOrder extends SchemaIntangible {
  /// The offer(s) -- e.g., product, quantity and price combinations --
  /// included in the order.
  SchemaOffer? acceptedOffer;

  /// The billing address for the order.
  SchemaPostalAddress? billingAddress;

  /// An entity that arranges for an exchange between a buyer and a seller. In
  /// most cases a broker never acquires or releases ownership of a product or
  /// service involved in an exchange. If it is not clear whether an entity is
  /// a broker, seller, or buyer, the latter two terms are preferred.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic broker;

  /// A number that confirms the given order or payment has been received.
  String? confirmationNumber;

  /// Party placing the order or paying the invoice.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic customer;

  /// Any discount applied (to an Order).
  ///
  /// Supported types: [String], [num]
  dynamic discount;

  /// Code used to redeem a discount.
  String? discountCode;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? discountCurrency;

  /// Indicates whether the offer was accepted as a gift for someone other than
  /// the buyer.
  bool? isGift;

  /// 'merchant' is an out-dated term for 'seller'.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @Deprecated('Use [seller]. See https://schema.org/merchant')
  dynamic merchant;

  /// Date order was placed.
  String? orderDate;

  /// The delivery of the parcel related to this order or order item.
  SchemaParcelDelivery? orderDelivery;

  /// The identifier of the transaction.
  String? orderNumber;

  /// The current status of the order.
  SchemaOrderStatus? orderStatus;

  /// The item ordered.
  ///
  /// Supported types: [SchemaOrderItem], [SchemaProduct], [SchemaService]
  dynamic orderedItem;

  /// The order is being paid as part of the referenced Invoice.
  SchemaInvoice? partOfInvoice;

  /// The date that payment is due.
  @Deprecated('Use [paymentDueDate]. See https://schema.org/paymentDue')
  String? paymentDue;

  /// The date that payment is due.
  String? paymentDueDate;

  /// The name of the credit card or other method of payment for the order.
  ///
  /// Supported types: [SchemaPaymentMethod], [String]
  dynamic paymentMethod;

  /// An identifier for the method of payment used (e.g. the last 4 digits of
  /// the credit card).
  String? paymentMethodId;

  /// The URL for sending a payment.
  String? paymentUrl;

  /// An entity which offers (sells / leases / lends / loans) the services /
  /// goods. A seller may also be a provider.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic seller;

  /// Create a new instance of [SchemaOrder]
  SchemaOrder({
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
    this.acceptedOffer,
    this.billingAddress,
    this.broker,
    this.confirmationNumber,
    this.customer,
    this.discount,
    this.discountCode,
    this.discountCurrency,
    this.isGift,
    this.merchant,
    this.orderDate,
    this.orderDelivery,
    this.orderNumber,
    this.orderStatus,
    this.orderedItem,
    this.partOfInvoice,
    this.paymentDue,
    this.paymentDueDate,
    this.paymentMethod,
    this.paymentMethodId,
    this.paymentUrl,
    this.seller,
  });

  /// Serialize [SchemaOrder] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Order',
        'acceptedOffer': convertToJsonLd(acceptedOffer, [SchemaOffer]),
        'billingAddress':
            convertToJsonLd(billingAddress, [SchemaPostalAddress]),
        'broker': convertToJsonLd(broker, [SchemaOrganization, SchemaPerson]),
        'confirmationNumber': convertToJsonLd(confirmationNumber, [String]),
        'customer':
            convertToJsonLd(customer, [SchemaOrganization, SchemaPerson]),
        'discount': convertToJsonLd(discount, [String, num]),
        'discountCode': convertToJsonLd(discountCode, [String]),
        'discountCurrency': convertToJsonLd(discountCurrency, [String]),
        'isGift': convertToJsonLd(isGift, [bool]),
        'merchant':
            convertToJsonLd(merchant, [SchemaOrganization, SchemaPerson]),
        'orderDate': convertToJsonLd(orderDate, [String]),
        'orderDelivery': convertToJsonLd(orderDelivery, [SchemaParcelDelivery]),
        'orderNumber': convertToJsonLd(orderNumber, [String]),
        'orderStatus': convertToJsonLd(orderStatus, [SchemaOrderStatus]),
        'orderedItem': convertToJsonLd(
            orderedItem, [SchemaOrderItem, SchemaProduct, SchemaService]),
        'partOfInvoice': convertToJsonLd(partOfInvoice, [SchemaInvoice]),
        'paymentDue': convertToJsonLd(paymentDue, [String]),
        'paymentDueDate': convertToJsonLd(paymentDueDate, [String]),
        'paymentMethod':
            convertToJsonLd(paymentMethod, [SchemaPaymentMethod, String]),
        'paymentMethodId': convertToJsonLd(paymentMethodId, [String]),
        'paymentUrl': convertToJsonLd(paymentUrl, [String]),
        'seller': convertToJsonLd(seller, [SchemaOrganization, SchemaPerson]),
      });
}
