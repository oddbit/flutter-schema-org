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
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/warranty_scope.dart';

/// A structured value representing the duration and scope of services that
/// will be provided to a customer free of charge in case of a defect or
/// malfunction of a product.
/// See https://schema.org/WarrantyPromise
class SchemaWarrantyPromise extends SchemaStructuredValue {
  /// The duration of the warranty promise. Common unitCode values are ANN for
  /// year, MON for months, or DAY for days.
  SchemaQuantitativeValue? durationOfWarranty;

  /// The scope of the warranty promise.
  SchemaWarrantyScope? warrantyScope;

  /// Create a new instance of [SchemaWarrantyPromise]
  SchemaWarrantyPromise({
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
    this.durationOfWarranty,
    this.warrantyScope,
  });

  /// Serialize [SchemaWarrantyPromise] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'WarrantyPromise',
        'durationOfWarranty': convertToJsonLd(durationOfWarranty),
        'warrantyScope': convertToJsonLd(warrantyScope),
      });
}
