// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates different price types, for example list price, invoice price,
/// and sale price.
/// See https://schema.org/PriceTypeEnumeration
enum SchemaPriceTypeEnumeration implements SchemaSerializable {
  /// Represents the invoice price of an offered product.
  invoicePrice('https://schema.org/PriceTypeEnumeration'),

  /// //schema.org/MSRP).
  listPrice('https://schema.org/PriceTypeEnumeration'),

  /// Represents the manufacturer suggested retail price ("MSRP") of an
  /// offered product.
  mSRP('https://schema.org/PriceTypeEnumeration'),

  /// Represents the minimum advertised price ("MAP") (as dictated by the
  /// manufacturer) of an offered product.
  minimumAdvertisedPrice('https://schema.org/PriceTypeEnumeration'),

  /// Represents the regular price of an offered product. This is usually
  /// the advertised price before a temporary sale. Once the sale period
  /// ends the advertised price will go back to the regular price.
  regularPrice('https://schema.org/PriceTypeEnumeration'),

  /// Represents the suggested retail price ("SRP") of an offered product.
  sRP('https://schema.org/PriceTypeEnumeration'),

  /// Represents a sale price (usually active for a limited period) of an
  /// offered product.
  salePrice('https://schema.org/PriceTypeEnumeration'),

  /// Represents the strikethrough price (the previous advertised price) of
  /// an offered product.
  strikethroughPrice('https://schema.org/PriceTypeEnumeration');

  /// Constructor for [SchemaPriceTypeEnumeration]
  const SchemaPriceTypeEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaPriceTypeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
