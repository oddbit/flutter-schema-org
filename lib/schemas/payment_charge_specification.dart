// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/delivery_method.dart';
import 'package:schema_org/schemas/payment_method.dart';

/// The costs of settling the payment using a particular payment method.
/// See https://schema.org/PaymentChargeSpecification
class SchemaPaymentChargeSpecification extends SchemaPriceSpecification {
  /// The delivery method(s) to which the delivery charge or payment charge
  /// specification applies.
  SchemaDeliveryMethod? appliesToDeliveryMethod;

  /// The payment method(s) to which the payment charge specification applies.
  SchemaPaymentMethod? appliesToPaymentMethod;

  /// Create a new instance of [SchemaPaymentChargeSpecification]
  SchemaPaymentChargeSpecification({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.eligibleQuantity,
    super.eligibleTransactionVolume,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.maxPrice,
    super.membershipPointsEarned,
    super.minPrice,
    super.name,
    super.owner,
    super.potentialAction,
    super.price,
    super.priceCurrency,
    super.sameAs,
    super.subjectOf,
    super.url,
    super.validForMemberTier,
    super.validFrom,
    super.validThrough,
    super.valueAddedTaxIncluded,
    this.appliesToDeliveryMethod,
    this.appliesToPaymentMethod,
  });

  /// Serialize [SchemaPaymentChargeSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PaymentChargeSpecification',
        'appliesToDeliveryMethod': convertToJsonLd(appliesToDeliveryMethod),
        'appliesToPaymentMethod': convertToJsonLd(appliesToPaymentMethod),
      });
}
