// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/collection.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/type_and_quantity_node.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/brand.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/adult_oriented_enumeration.dart';
import 'package:schema_org/schemas/certification.dart';
import 'package:schema_org/schemas/energy_consumption_details.dart';
import 'package:schema_org/schemas/merchant_return_policy.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/product_group.dart';
import 'package:schema_org/schemas/product_model.dart';
import 'package:schema_org/schemas/offer_item_condition.dart';
import 'package:schema_org/schemas/item_list.dart';
import 'package:schema_org/schemas/list_item.dart';
import 'package:schema_org/schemas/web_content.dart';
import 'package:schema_org/schemas/mass.dart';

/// A set of products (either [SchemaProductGroup]s or specific variants)
/// that are listed together e.g. in an [SchemaOffer].
/// See https://schema.org/ProductCollection
class SchemaProductCollection extends SchemaCollection
    implements SchemaProduct {
  /// This links to a node or nodes indicating the exact quantity of the
  /// products included in an [SchemaOffer] or [SchemaProductCollection].
  SchemaTypeAndQuantityNode? includesObject;

  /// //schema.org/gtin13, ...) will typically expect such data to be provided
  /// using those properties, rather than using the generic property/value
  /// mechanism.
  @override
  SchemaPropertyValue? additionalProperty;

  /// //en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s
  /// article).
  ///
  /// Note also that this is a definition for how to include ASINs in
  /// Schema.org data, and not a definition of ASINs in general - see
  /// documentation from Amazon for authoritative details. ASINs are most
  /// commonly encoded as text strings, but the [asin] property supports
  /// URL/URI as potential values too.
  @override
  String? asin;

  /// The brand(s) associated with a product or service, or the brand(s)
  /// maintained by an organization or business person.
  ///
  /// Supported types: [SchemaBrand], [SchemaOrganization]
  @override
  dynamic brand;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [SchemaThing]
  @override
  dynamic category;

  /// The color of the product.
  @override
  String? color;

  /// A color swatch image, visualizing the color of a [SchemaProduct]. Should
  /// match the textual description specified in the [Schemacolor] property.
  /// This can be a URL or a fully described ImageObject.
  ///
  /// Supported types: [SchemaImageObject], [String]
  @override
  dynamic colorSwatch;

  /// The place where the product was assembled.
  @override
  String? countryOfAssembly;

  /// The place where the item (typically [SchemaProduct]) was last processed
  /// and tested before importation.
  @override
  String? countryOfLastProcessing;

  /// The depth of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  @override
  dynamic depth;

  /// //www.gs1.org/standards/Digital-Link/) expresses GTINs as URLs (URIs,
  /// IRIs, etc.). Digital Links should be populated into the
  /// [SchemahasGS1DigitalLink] attribute.
  ///
  /// Note also that this is a definition for how to include GTINs in
  /// Schema.org data, and not a definition of GTINs in general - see the GS1
  /// documentation for authoritative details.
  @override
  String? gtin;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  @override
  String? gtin12;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  @override
  String? gtin13;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  @override
  String? gtin14;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  @override
  String? gtin8;

  /// Used to tag an item to be intended or suitable for consumption or use by
  /// adults only.
  @override
  SchemaAdultOrientedEnumeration? hasAdultConsideration;

  /// Certification information about a product, organization, service, place,
  /// or person.
  @override
  SchemaCertification? hasCertification;

  /// Defines the energy efficiency Category (also known as "class" or
  /// "rating") for a product according to an international energy efficiency
  /// standard.
  @override
  SchemaEnergyConsumptionDetails? hasEnergyConsumptionDetails;

  /// <ul><li>A Digital Link that contains a serial number (AI <code>21</code>)
  /// should only be present on instances of
  /// [SchemaIndividualProduct]</li><li>A Digital Link that contains a lot
  /// number (AI <code>10</code>) should be annotated as [SchemaSomeProducts]
  /// if only products from that lot are sold, or [SchemaIndividualProduct] if
  /// there is only a specific product.</li><li>A Digital Link that contains a
  /// global model number (AI <code>8013</code>) should be attached to a
  /// [SchemaProduct] or a [SchemaProductModel].</li></ul> Other item types
  /// should be adapted similarly.
  @override
  String? hasGS1DigitalLink;

  /// A measurement of an item, For example, the inseam of pants, the wheel
  /// size of a bicycle, the gauge of a screw, or the carbon footprint measured
  /// for certification by an authority. Usually an exact measurement, but can
  /// also be a range of measurements for adjustable products, for example
  /// belts and ski bindings.
  @override
  SchemaQuantitativeValue? hasMeasurement;

  /// Specifies a MerchantReturnPolicy that may be applicable.
  @override
  SchemaMerchantReturnPolicy? hasMerchantReturnPolicy;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  @override
  dynamic height;

  /// Indicates the [SchemaproductGroupID] for a [SchemaProductGroup] that this
  /// product [SchemaisVariantOf].
  @override
  String? inProductGroupWithID;

  /// A pointer to another product (or multiple products) for which this
  /// product is an accessory or spare part.
  @override
  SchemaProduct? isAccessoryOrSparePartFor;

  /// A pointer to another product (or multiple products) for which this
  /// product is a consumable.
  @override
  SchemaProduct? isConsumableFor;

  /// A pointer to another, somehow related product (or multiple products).
  ///
  /// Supported types: [SchemaProduct], [SchemaService]
  @override
  dynamic isRelatedTo;

  /// A pointer to another, functionally similar product (or multiple
  /// products).
  ///
  /// Supported types: [SchemaProduct], [SchemaService]
  @override
  dynamic isSimilarTo;

  /// Indicates the kind of product that this is a variant of. In the case of
  /// [SchemaProductModel], this is a pointer (from a ProductModel) to a base
  /// product from which this product is a variant. It is safe to infer that
  /// the variant inherits all product features from the base model, unless
  /// defined locally. This is not transitive. In the case of a
  /// [SchemaProductGroup], the group description also serves as a template,
  /// representing a set of Products that vary on explicitly defined, specific
  /// dimensions only (so it defines both a set of variants, as well as which
  /// values distinguish amongst those variants). When used with
  /// [SchemaProductGroup], this property can apply to any [SchemaProduct]
  /// included in the group.
  ///
  /// Supported types: [SchemaProductGroup], [SchemaProductModel]
  @override
  dynamic isVariantOf;

  /// A predefined value from OfferItemCondition specifying the condition of
  /// the product or service, or the products or services included in the
  /// offer. Also used for product return policies to specify the condition of
  /// products accepted for returns.
  @override
  SchemaOfferItemCondition? itemCondition;

  /// An associated logo.
  ///
  /// Supported types: [SchemaImageObject], [String]
  @override
  dynamic logo;

  /// The manufacturer of the product.
  @override
  SchemaOrganization? manufacturer;

  /// //en.wikipedia.org/wiki/Responsive_web_design) in which content can be
  /// flexibly adapted to a wide range of browsing environments. Pages and
  /// sites referenced with the long-established [Schemaurl] property should
  /// ideally also be usable on a wide variety of devices, including mobile
  /// phones. In most cases, it would be pointless and counter productive to
  /// attempt to update all [Schemaurl] markup to use [SchemamobileUrl] for
  /// more mobile-oriented pages. The property is intended for the case when
  /// items (primarily [SchemaProduct] and [SchemaOffer]) have extra URLs
  /// hosted on an additional "mobile site" alongside the main one. It should
  /// not be taken as an endorsement of this publication style.
  @override
  String? mobileUrl;

  /// The model of the product. Use with the URL of a ProductModel or a textual
  /// representation of the model identifier. The URL of the ProductModel can
  /// be from an external source. It is recommended to additionally provide
  /// strong product identifiers via the gtin8/gtin13/gtin14 and mpn
  /// properties.
  ///
  /// Supported types: [SchemaProductModel], [String]
  @override
  dynamic model;

  /// The Manufacturer Part Number (MPN) of the product, or the product to
  /// which the offer refers.
  @override
  String? mpn;

  /// Provides negative considerations regarding something, most typically in
  /// pro/con lists for reviews (alongside [SchemapositiveNotes]). For symmetry
  ///
  /// In the case of a [SchemaReview], the property describes the
  /// [SchemaitemReviewed] from the perspective of the review; in the case of a
  /// [SchemaProduct], the product itself is being described. Since product
  /// descriptions tend to emphasise positive claims, it may be relatively
  /// unusual to find [SchemanegativeNotes] used in this way. Nevertheless for
  /// the sake of symmetry, [SchemanegativeNotes] can be used on
  /// [SchemaProduct].
  ///
  /// The property values can be expressed either as unstructured text
  /// (repeated as necessary), or if ordered, as a list (in which case the most
  /// negative is at the beginning of the list).
  ///
  /// Supported types: [SchemaItemList], [SchemaListItem], [String],
  /// [SchemaWebContent]
  @override
  dynamic negativeNotes;

  /// //en.wikipedia.org/wiki/NATO_Stock_Number) (nsn) of a [SchemaProduct].
  @override
  String? nsn;

  /// Provides positive considerations regarding something, for example product
  /// highlights or (alongside [SchemanegativeNotes]) pro/con lists for
  /// reviews.
  ///
  /// In the case of a [SchemaReview], the property describes the
  /// [SchemaitemReviewed] from the perspective of the review; in the case of a
  /// [SchemaProduct], the product itself is being described.
  ///
  /// The property values can be expressed either as unstructured text
  /// (repeated as necessary), or if ordered, as a list (in which case the most
  /// positive is at the beginning of the list).
  ///
  /// Supported types: [SchemaItemList], [SchemaListItem], [String],
  /// [SchemaWebContent]
  @override
  dynamic positiveNotes;

  /// 123-456-789" ```.
  @override
  String? productID;

  /// The date of production of the item, e.g. vehicle.
  @override
  String? productionDate;

  /// The date the item, e.g. vehicle, was purchased by the current owner.
  @override
  String? purchaseDate;

  /// The release date of a product or product model. This can be used to
  /// distinguish the exact variant of a product.
  @override
  String? releaseDate;

  /// The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a
  /// product or service, or the product to which the offer refers.
  @override
  String? sku;

  /// A slogan or motto associated with the item.
  @override
  String? slogan;

  /// The weight of the product or person.
  ///
  /// Supported types: [SchemaMass], [SchemaQuantitativeValue]
  @override
  dynamic weight;

  /// The width of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  @override
  dynamic width;

  /// Create a new instance of [SchemaProductCollection]
  SchemaProductCollection({
    super.about,
    super.abstract,
    super.accessMode,
    super.accessModeSufficient,
    super.accessibilityAPI,
    super.accessibilityControl,
    super.accessibilityFeature,
    super.accessibilityHazard,
    super.accessibilitySummary,
    super.accountablePerson,
    super.acquireLicensePage,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.alternativeHeadline,
    super.archivedAt,
    super.assesses,
    super.associatedMedia,
    super.audience,
    super.audio,
    super.author,
    super.award,
    super.awards,
    super.character,
    super.citation,
    super.collectionSize,
    super.comment,
    super.commentCount,
    super.conditionsOfAccess,
    super.contentLocation,
    super.contentRating,
    super.contentReferenceTime,
    super.contributor,
    super.copyrightHolder,
    super.copyrightNotice,
    super.copyrightYear,
    super.correction,
    super.countryOfOrigin,
    super.creativeWorkStatus,
    super.creator,
    super.creditText,
    super.dateCreated,
    super.dateModified,
    super.datePublished,
    super.description,
    super.digitalSourceType,
    super.disambiguatingDescription,
    super.discussionUrl,
    super.displayLocation,
    super.editEIDR,
    super.editor,
    super.educationalAlignment,
    super.educationalLevel,
    super.educationalUse,
    super.encoding,
    super.encodingFormat,
    super.encodings,
    super.exampleOfWork,
    super.expires,
    super.fileFormat,
    super.funder,
    super.funding,
    super.genre,
    super.hasPart,
    super.headline,
    super.identifier,
    super.image,
    super.inLanguage,
    super.interactionStatistic,
    super.interactivityType,
    super.interpretedAsClaim,
    super.isAccessibleForFree,
    super.isBasedOn,
    super.isBasedOnUrl,
    super.isFamilyFriendly,
    super.isPartOf,
    super.keywords,
    super.learningResourceType,
    super.license,
    super.locationCreated,
    super.mainEntity,
    super.mainEntityOfPage,
    super.maintainer,
    super.material,
    super.materialExtent,
    super.mentions,
    super.name,
    super.offers,
    super.owner,
    super.pattern,
    super.position,
    super.potentialAction,
    super.producer,
    super.provider,
    super.publication,
    super.publisher,
    super.publisherImprint,
    super.publishingPrinciples,
    super.recordedAt,
    super.releasedEvent,
    super.review,
    super.reviews,
    super.sameAs,
    super.schemaVersion,
    super.sdDatePublished,
    super.sdLicense,
    super.sdPublisher,
    super.size,
    super.sourceOrganization,
    super.spatial,
    super.spatialCoverage,
    super.sponsor,
    super.subjectOf,
    super.teaches,
    super.temporal,
    super.temporalCoverage,
    super.text,
    super.thumbnail,
    super.thumbnailUrl,
    super.timeRequired,
    super.translationOfWork,
    super.translator,
    super.typicalAgeRange,
    super.url,
    super.usageInfo,
    super.version,
    super.video,
    super.wordCount,
    super.workExample,
    super.workTranslation,
    this.includesObject,
    this.additionalProperty,
    this.asin,
    this.brand,
    this.category,
    this.color,
    this.colorSwatch,
    this.countryOfAssembly,
    this.countryOfLastProcessing,
    this.depth,
    this.gtin,
    this.gtin12,
    this.gtin13,
    this.gtin14,
    this.gtin8,
    this.hasAdultConsideration,
    this.hasCertification,
    this.hasEnergyConsumptionDetails,
    this.hasGS1DigitalLink,
    this.hasMeasurement,
    this.hasMerchantReturnPolicy,
    this.height,
    this.inProductGroupWithID,
    this.isAccessoryOrSparePartFor,
    this.isConsumableFor,
    this.isRelatedTo,
    this.isSimilarTo,
    this.isVariantOf,
    this.itemCondition,
    this.logo,
    this.manufacturer,
    this.mobileUrl,
    this.model,
    this.mpn,
    this.negativeNotes,
    this.nsn,
    this.positiveNotes,
    this.productID,
    this.productionDate,
    this.purchaseDate,
    this.releaseDate,
    this.sku,
    this.slogan,
    this.weight,
    this.width,
  });

  /// Serialize [SchemaProductCollection] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ProductCollection',
        'includesObject':
            convertToJsonLd(includesObject, [SchemaTypeAndQuantityNode]),
        'additionalProperty':
            convertToJsonLd(additionalProperty, [SchemaPropertyValue]),
        'asin': convertToJsonLd(asin, [String]),
        'brand': convertToJsonLd(brand, [SchemaBrand, SchemaOrganization]),
        'category': convertToJsonLd(category, [
          SchemaCategoryCode,
          SchemaPhysicalActivityCategory,
          String,
          SchemaThing
        ]),
        'color': convertToJsonLd(color, [String]),
        'colorSwatch':
            convertToJsonLd(colorSwatch, [SchemaImageObject, String]),
        'countryOfAssembly': convertToJsonLd(countryOfAssembly, [String]),
        'countryOfLastProcessing':
            convertToJsonLd(countryOfLastProcessing, [String]),
        'depth':
            convertToJsonLd(depth, [SchemaDistance, SchemaQuantitativeValue]),
        'gtin': convertToJsonLd(gtin, [String]),
        'gtin12': convertToJsonLd(gtin12, [String]),
        'gtin13': convertToJsonLd(gtin13, [String]),
        'gtin14': convertToJsonLd(gtin14, [String]),
        'gtin8': convertToJsonLd(gtin8, [String]),
        'hasAdultConsideration': convertToJsonLd(
            hasAdultConsideration, [SchemaAdultOrientedEnumeration]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasEnergyConsumptionDetails': convertToJsonLd(
            hasEnergyConsumptionDetails, [SchemaEnergyConsumptionDetails]),
        'hasGS1DigitalLink': convertToJsonLd(hasGS1DigitalLink, [String]),
        'hasMeasurement':
            convertToJsonLd(hasMeasurement, [SchemaQuantitativeValue]),
        'hasMerchantReturnPolicy': convertToJsonLd(
            hasMerchantReturnPolicy, [SchemaMerchantReturnPolicy]),
        'height':
            convertToJsonLd(height, [SchemaDistance, SchemaQuantitativeValue]),
        'inProductGroupWithID': convertToJsonLd(inProductGroupWithID, [String]),
        'isAccessoryOrSparePartFor':
            convertToJsonLd(isAccessoryOrSparePartFor, [SchemaProduct]),
        'isConsumableFor': convertToJsonLd(isConsumableFor, [SchemaProduct]),
        'isRelatedTo':
            convertToJsonLd(isRelatedTo, [SchemaProduct, SchemaService]),
        'isSimilarTo':
            convertToJsonLd(isSimilarTo, [SchemaProduct, SchemaService]),
        'isVariantOf': convertToJsonLd(
            isVariantOf, [SchemaProductGroup, SchemaProductModel]),
        'itemCondition':
            convertToJsonLd(itemCondition, [SchemaOfferItemCondition]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
        'manufacturer': convertToJsonLd(manufacturer, [SchemaOrganization]),
        'mobileUrl': convertToJsonLd(mobileUrl, [String]),
        'model': convertToJsonLd(model, [SchemaProductModel, String]),
        'mpn': convertToJsonLd(mpn, [String]),
        'negativeNotes': convertToJsonLd(negativeNotes,
            [SchemaItemList, SchemaListItem, String, SchemaWebContent]),
        'nsn': convertToJsonLd(nsn, [String]),
        'positiveNotes': convertToJsonLd(positiveNotes,
            [SchemaItemList, SchemaListItem, String, SchemaWebContent]),
        'productID': convertToJsonLd(productID, [String]),
        'productionDate': convertToJsonLd(productionDate, [String]),
        'purchaseDate': convertToJsonLd(purchaseDate, [String]),
        'releaseDate': convertToJsonLd(releaseDate, [String]),
        'sku': convertToJsonLd(sku, [String]),
        'slogan': convertToJsonLd(slogan, [String]),
        'weight':
            convertToJsonLd(weight, [SchemaMass, SchemaQuantitativeValue]),
        'width':
            convertToJsonLd(width, [SchemaDistance, SchemaQuantitativeValue]),
      });
}
