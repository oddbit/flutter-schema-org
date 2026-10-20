// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/property_value.dart';

/// A ProductGroup represents a group of [SchemaProduct]s that vary only in
/// certain well-described ways, such as by [Schemasize], [Schemacolor],
/// [Schemamaterial] etc.
///
/// While a ProductGroup itself is not directly offered for sale, the various
/// varying products that it represents can be. The ProductGroup serves as a
/// prototype or template, standing in for all of the products who have an
/// [SchemaisVariantOf] relationship to it. As such, properties (including
/// additional types) can be applied to the ProductGroup to represent
/// characteristics shared by each of the (possibly very many) variants.
/// Properties that reference a ProductGroup are not included in this
/// mechanism; neither are the following specific properties
/// [SchemavariesBy], [SchemahasVariant], [Schemaurl].
/// See https://schema.org/ProductGroup
class SchemaProductGroup extends SchemaProduct {
  /// Indicates a [SchemaProduct] that is a member of this [SchemaProductGroup]
  /// (or [SchemaProductModel]).
  SchemaProduct? hasVariant;

  /// Indicates a textual identifier for a ProductGroup.
  String? productGroupID;

  /// Indicates the property or properties by which the variants in a
  /// [SchemaProductGroup] vary, e.g. their size, color etc. Schema.org
  /// properties can be referenced by their short name e.g. "color"; terms
  /// defined elsewhere can be referenced with their URIs. Variant properties
  /// can be provided using [SchemaPropertyValue] instead of plain
  /// [SchemaText], to allow specification of the values available for a
  /// variant property.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaPropertyValue], [String]
  dynamic variesBy;

  /// Create a new instance of [SchemaProductGroup]
  SchemaProductGroup({
    super.additionalProperty,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.asin,
    super.audience,
    super.authorizedRepresentative,
    super.award,
    super.awards,
    super.brand,
    super.category,
    super.color,
    super.colorSwatch,
    super.consumerNotice,
    super.countryOfAssembly,
    super.countryOfLastProcessing,
    super.countryOfOrigin,
    super.depth,
    super.description,
    super.disambiguatingDescription,
    super.displayLocation,
    super.funding,
    super.gtin,
    super.gtin12,
    super.gtin13,
    super.gtin14,
    super.gtin8,
    super.hasAdultConsideration,
    super.hasCertification,
    super.hasDigitalProductPassport,
    super.hasEnergyConsumptionDetails,
    super.hasGS1DigitalLink,
    super.hasMeasurement,
    super.hasMerchantReturnPolicy,
    super.hasProductReturnPolicy,
    super.height,
    super.identifier,
    super.image,
    super.importer,
    super.inProductGroupWithID,
    super.isAccessoryOrSparePartFor,
    super.isConsumableFor,
    super.isFamilyFriendly,
    super.isOftenBoughtWith,
    super.isRelatedTo,
    super.isSimilarTo,
    super.isVariantOf,
    super.itemCondition,
    super.keywords,
    super.logo,
    super.mainEntityOfPage,
    super.manufacturer,
    super.material,
    super.mobileUrl,
    super.model,
    super.mpn,
    super.name,
    super.negativeNotes,
    super.nsn,
    super.offers,
    super.owner,
    super.pattern,
    super.positiveNotes,
    super.potentialAction,
    super.productID,
    super.productionDate,
    super.purchaseDate,
    super.recycledContentPercentage,
    super.releaseDate,
    super.review,
    super.reviews,
    super.sameAs,
    super.size,
    super.sku,
    super.slogan,
    super.specification,
    super.subjectOf,
    super.substanceOfConcern,
    super.url,
    super.weight,
    super.width,
    this.hasVariant,
    this.productGroupID,
    this.variesBy,
  });

  /// Serialize [SchemaProductGroup] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ProductGroup',
        'hasVariant': convertToJsonLd(hasVariant),
        'productGroupID': convertToJsonLd(productGroupID),
        'variesBy': convertToJsonLd(
            variesBy,
            (v) =>
                v is SchemaDefinedTerm ||
                v is SchemaPropertyValue ||
                v is String),
      });
}
