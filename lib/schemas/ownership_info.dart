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
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/service.dart';

/// A structured value providing information about when a certain
/// organization or person owned a certain product.
/// See https://schema.org/OwnershipInfo
class SchemaOwnershipInfo extends SchemaStructuredValue {
  /// The organization or person from which the product was acquired.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic acquiredFrom;

  /// The date and time of obtaining the product.
  String? ownedFrom;

  /// The date and time of giving up ownership on the product.
  String? ownedThrough;

  /// The product that this structured value is referring to.
  ///
  /// Supported types: [SchemaProduct], [SchemaService]
  dynamic typeOfGood;

  /// Create a new instance of [SchemaOwnershipInfo]
  SchemaOwnershipInfo({
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
    this.acquiredFrom,
    this.ownedFrom,
    this.ownedThrough,
    this.typeOfGood,
  });

  /// Serialize [SchemaOwnershipInfo] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'OwnershipInfo',
        'acquiredFrom':
            convertToJsonLd(acquiredFrom, [SchemaOrganization, SchemaPerson]),
        'ownedFrom': convertToJsonLd(ownedFrom, [String]),
        'ownedThrough': convertToJsonLd(ownedThrough, [String]),
        'typeOfGood':
            convertToJsonLd(typeOfGood, [SchemaProduct, SchemaService]),
      });
}
