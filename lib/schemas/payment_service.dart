// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/financial_product.dart';
import 'package:schema_org/schemas/payment_method.dart';
import 'package:schema_org/schemas/payment_method_type.dart';

/// A Service to transfer funds from a person or organization to a
/// beneficiary person or organization.
/// See https://schema.org/PaymentService
class SchemaPaymentService extends SchemaFinancialProduct
    implements SchemaPaymentMethod {
  /// The type of a payment method.
  @override
  SchemaPaymentMethodType? paymentMethodType;

  /// Create a new instance of [SchemaPaymentService]
  SchemaPaymentService({
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.annualPercentageRate,
    super.areaServed,
    super.audience,
    super.availableChannel,
    super.award,
    super.brand,
    super.broker,
    super.category,
    super.description,
    super.disambiguatingDescription,
    super.feesAndCommissionsSpecification,
    super.hasCertification,
    super.hasOfferCatalog,
    super.hoursAvailable,
    super.identifier,
    super.image,
    super.interestRate,
    super.isRelatedTo,
    super.isSimilarTo,
    super.logo,
    super.mainEntityOfPage,
    super.name,
    super.offers,
    super.owner,
    super.potentialAction,
    super.produces,
    super.provider,
    super.providerMobility,
    super.review,
    super.sameAs,
    super.serviceArea,
    super.serviceAudience,
    super.serviceOutput,
    super.serviceType,
    super.slogan,
    super.subjectOf,
    super.termsOfService,
    super.url,
    this.paymentMethodType,
  });

  /// Serialize [SchemaPaymentService] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PaymentService',
        'paymentMethodType':
            convertToJsonLd(paymentMethodType, [SchemaPaymentMethodType]),
      });
}
