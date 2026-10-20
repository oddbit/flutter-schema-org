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
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/payment_method.dart';
import 'package:schema_org/schemas/payment_status_type.dart';
import 'package:schema_org/schemas/order.dart';

/// A statement of the money due for goods or services; a bill.
/// See https://schema.org/Invoice
class SchemaInvoice extends SchemaIntangible {
  /// The identifier for the account the payment will be applied to.
  String? accountId;

  /// The time interval used to compute the invoice.
  SchemaDuration? billingPeriod;

  /// An entity that arranges for an exchange between a buyer and a seller. In
  /// most cases a broker never acquires or releases ownership of a product or
  /// service involved in an exchange. If it is not clear whether an entity is
  /// a broker, seller, or buyer, the latter two terms are preferred.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic broker;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [SchemaThing]
  dynamic category;

  /// A number that confirms the given order or payment has been received.
  String? confirmationNumber;

  /// Party placing the order or paying the invoice.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic customer;

  /// The minimum payment required at this time.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification]
  dynamic minimumPaymentDue;

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

  /// The status of payment; whether the invoice has been paid or not.
  ///
  /// Supported types: [SchemaPaymentStatusType], [String]
  dynamic paymentStatus;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// The Order(s) related to this Invoice. One or more Orders may be combined
  /// into a single Invoice.
  SchemaOrder? referencesOrder;

  /// The date the invoice is scheduled to be paid.
  String? scheduledPaymentDate;

  /// The total amount due.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification]
  dynamic totalPaymentDue;

  /// Create a new instance of [SchemaInvoice]
  SchemaInvoice({
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
    this.accountId,
    this.billingPeriod,
    this.broker,
    this.category,
    this.confirmationNumber,
    this.customer,
    this.minimumPaymentDue,
    this.paymentDue,
    this.paymentDueDate,
    this.paymentMethod,
    this.paymentMethodId,
    this.paymentStatus,
    this.provider,
    this.referencesOrder,
    this.scheduledPaymentDate,
    this.totalPaymentDue,
  });

  /// Serialize [SchemaInvoice] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Invoice',
        'accountId': convertToJsonLd(accountId),
        'billingPeriod': convertToJsonLd(billingPeriod),
        'broker': convertToJsonLd(
            broker, (v) => v is SchemaOrganization || v is SchemaPerson),
        'category': convertToJsonLd(
            category,
            (v) =>
                v is SchemaCategoryCode ||
                v is SchemaPhysicalActivityCategory ||
                v is String ||
                v is SchemaThing),
        'confirmationNumber': convertToJsonLd(confirmationNumber),
        'customer': convertToJsonLd(
            customer, (v) => v is SchemaOrganization || v is SchemaPerson),
        'minimumPaymentDue': convertToJsonLd(minimumPaymentDue,
            (v) => v is SchemaMonetaryAmount || v is SchemaPriceSpecification),
        'paymentDue': convertToJsonLd(paymentDue),
        'paymentDueDate': convertToJsonLd(paymentDueDate),
        'paymentMethod': convertToJsonLd(
            paymentMethod, (v) => v is SchemaPaymentMethod || v is String),
        'paymentMethodId': convertToJsonLd(paymentMethodId),
        'paymentStatus': convertToJsonLd(
            paymentStatus, (v) => v is SchemaPaymentStatusType || v is String),
        'provider': convertToJsonLd(
            provider, (v) => v is SchemaOrganization || v is SchemaPerson),
        'referencesOrder': convertToJsonLd(referencesOrder),
        'scheduledPaymentDate': convertToJsonLd(scheduledPaymentDate),
        'totalPaymentDue': convertToJsonLd(totalPaymentDue,
            (v) => v is SchemaMonetaryAmount || v is SchemaPriceSpecification),
      });
}
