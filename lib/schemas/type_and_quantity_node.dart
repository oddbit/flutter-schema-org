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
import 'package:schema_org/schemas/business_function.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/service.dart';

/// A structured value indicating the quantity, unit of measurement, and
/// business function of goods included in a bundle offer.
/// See https://schema.org/TypeAndQuantityNode
class SchemaTypeAndQuantityNode extends SchemaStructuredValue {
  /// The quantity of the goods included in the offer.
  num? amountOfThisGood;

  /// The business function (e.g. sell, lease, repair, dispose) of the offer or
  /// component of a bundle (TypeAndQuantityNode). The default is
  /// http://purl.org/goodrelations/v1#Sell.
  SchemaBusinessFunction? businessFunction;

  /// The product that this structured value is referring to.
  ///
  /// Supported types: [SchemaProduct], [SchemaService]
  dynamic typeOfGood;

  /// The unit of measurement given using the UN/CEFACT Common Code (3
  /// characters) or a URL. Other codes than the UN/CEFACT Common Code may be
  /// used with a prefix followed by a colon.
  String? unitCode;

  /// A string or text indicating the unit of measurement. Useful if you cannot
  /// provide a standard unit code for <a href='unitCode'>unitCode</a>.
  String? unitText;

  /// Create a new instance of [SchemaTypeAndQuantityNode]
  SchemaTypeAndQuantityNode({
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
    this.amountOfThisGood,
    this.businessFunction,
    this.typeOfGood,
    this.unitCode,
    this.unitText,
  });

  /// Serialize [SchemaTypeAndQuantityNode] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'TypeAndQuantityNode',
        'amountOfThisGood': convertToJsonLd(amountOfThisGood),
        'businessFunction': convertToJsonLd(businessFunction),
        'typeOfGood': convertToJsonLd(
            typeOfGood, (v) => v is SchemaProduct || v is SchemaService),
        'unitCode': convertToJsonLd(unitCode),
        'unitText': convertToJsonLd(unitText),
      });
}
