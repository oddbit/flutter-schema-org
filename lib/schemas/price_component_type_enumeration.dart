// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates different price components that together make up the total
/// price for an offered product.
/// See https://schema.org/PriceComponentTypeEnumeration
enum SchemaPriceComponentTypeEnumeration implements SchemaSerializable {
  /// Represents the activation fee part of the total price for an offered
  /// product, for example a cellphone contract.
  activationFee('https://schema.org/ActivationFee'),

  /// Represents the cleaning fee part of the total price for an offered
  /// product, for example a vacation rental.
  cleaningFee('https://schema.org/CleaningFee'),

  /// Represents the distance fee (e.g., price per km or mile) part of the
  /// total price for an offered product, for example a car rental.
  distanceFee('https://schema.org/DistanceFee'),

  /// Represents the downpayment (up-front payment) price component of the
  /// total price for an offered product that has additional installment
  /// payments.
  downpayment('https://schema.org/Downpayment'),

  /// Represents the installment pricing component of the total price for
  /// an offered product.
  installment('https://schema.org/Installment'),

  /// Represents the subscription pricing component of the total price for
  /// an offered product.
  subscription('https://schema.org/Subscription');

  /// Constructor for [SchemaPriceComponentTypeEnumeration]
  const SchemaPriceComponentTypeEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaPriceComponentTypeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
