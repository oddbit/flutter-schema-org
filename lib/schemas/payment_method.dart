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
import 'package:schema_org/schemas/payment_method_type.dart';

/// A payment method is a standardized procedure for transferring the
/// monetary amount for a purchase. Payment methods are characterized by the
/// legal and technical structures used, and by the organization or group
/// carrying out the transaction. The following legacy values should be
/// accepted: \n\n*
/// http://purl.org/goodrelations/v1#ByBankTransferInAdvance\n*
/// http://purl.org/goodrelations/v1#ByInvoice\n*
/// http://purl.org/goodrelations/v1#Cash\n*
/// http://purl.org/goodrelations/v1#CheckInAdvance\n*
/// http://purl.org/goodrelations/v1#COD\n*
/// http://purl.org/goodrelations/v1#DirectDebit\n*
/// http://purl.org/goodrelations/v1#GoogleCheckout\n*
/// http://purl.org/goodrelations/v1#PayPal\n*
/// http://purl.org/goodrelations/v1#PaySwarm\n\nStructured values, or [UNCE
/// payment means](https://vocabulary.uncefact.org/PaymentMeans) are
/// recommended or for newer annotations.
/// See https://schema.org/PaymentMethod
class SchemaPaymentMethod extends SchemaIntangible {
  /// The type of a payment method.
  SchemaPaymentMethodType? paymentMethodType;

  /// Create a new instance of [SchemaPaymentMethod]
  SchemaPaymentMethod({
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
    this.paymentMethodType,
  });

  /// Serialize [SchemaPaymentMethod] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PaymentMethod',
        'paymentMethodType': convertToJsonLd(paymentMethodType),
      });
}
