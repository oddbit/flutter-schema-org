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

  /// The currency of the discount.\n\nUse standard formats: [ISO 4217 currency
  /// format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR".
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
        'acceptedOffer': convertToJsonLd(acceptedOffer),
        'billingAddress': convertToJsonLd(billingAddress),
        'broker': convertToJsonLd(
            broker, (v) => v is SchemaOrganization || v is SchemaPerson),
        'confirmationNumber': convertToJsonLd(confirmationNumber),
        'customer': convertToJsonLd(
            customer, (v) => v is SchemaOrganization || v is SchemaPerson),
        'discount': convertToJsonLd(discount, (v) => v is String || v is num),
        'discountCode': convertToJsonLd(discountCode),
        'discountCurrency': convertToJsonLd(discountCurrency),
        'isGift': convertToJsonLd(isGift),
        'merchant': convertToJsonLd(
            merchant, (v) => v is SchemaOrganization || v is SchemaPerson),
        'orderDate': convertToJsonLd(orderDate),
        'orderDelivery': convertToJsonLd(orderDelivery),
        'orderNumber': convertToJsonLd(orderNumber),
        'orderStatus': convertToJsonLd(orderStatus),
        'orderedItem': convertToJsonLd(
            orderedItem,
            (v) =>
                v is SchemaOrderItem ||
                v is SchemaProduct ||
                v is SchemaService),
        'partOfInvoice': convertToJsonLd(partOfInvoice),
        'paymentDue': convertToJsonLd(paymentDue),
        'paymentDueDate': convertToJsonLd(paymentDueDate),
        'paymentMethod': convertToJsonLd(
            paymentMethod, (v) => v is SchemaPaymentMethod || v is String),
        'paymentMethodId': convertToJsonLd(paymentMethodId),
        'paymentUrl': convertToJsonLd(paymentUrl),
        'seller': convertToJsonLd(
            seller, (v) => v is SchemaOrganization || v is SchemaPerson),
      });
}
