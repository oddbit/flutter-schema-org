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
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/brand.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/web_content.dart';
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/adult_oriented_enumeration.dart';
import 'package:schema_org/schemas/certification.dart';
import 'package:schema_org/schemas/digital_product_passport.dart';
import 'package:schema_org/schemas/energy_consumption_details.dart';
import 'package:schema_org/schemas/merchant_return_policy.dart';
import 'package:schema_org/schemas/product_return_policy.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/product_group.dart';
import 'package:schema_org/schemas/product_model.dart';
import 'package:schema_org/schemas/offer_item_condition.dart';
import 'package:schema_org/schemas/item_list.dart';
import 'package:schema_org/schemas/list_item.dart';
import 'package:schema_org/schemas/chemical_substance.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/mass.dart';

/// A set of products (either [SchemaProductGroup]s or specific variants)
/// that are listed together e.g. in an [SchemaOffer].
/// See https://schema.org/ProductCollection
class SchemaProductCollection extends SchemaCollection
    implements SchemaProduct {
  /// This links to a node or nodes indicating the exact quantity of the
  /// products included in an [SchemaOffer] or [SchemaProductCollection].
  SchemaTypeAndQuantityNode? includesObject;

  /// A property-value pair representing an additional characteristic of the
  /// entity, e.g. a product feature or another characteristic for which there
  /// is no matching property in schema.org.\n\nNote: Publishers should be
  /// aware that applications designed to use specific schema.org properties
  /// (e.g. https://schema.org/width, https://schema.org/color,
  /// https://schema.org/gtin13, ...) will typically expect such data to be
  /// provided using those properties, rather than using the generic
  /// property/value mechanism.
  @override
  SchemaPropertyValue? additionalProperty;

  /// An Amazon Standard Identification Number (ASIN) is a 10-character
  /// alphanumeric unique identifier assigned by Amazon.com and its partners
  /// for product identification within the Amazon organization (summary from
  /// [Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s
  /// article).
  ///
  /// Note also that this is a definition for how to include ASINs in
  /// Schema.org data, and not a definition of ASINs in general - see
  /// documentation from Amazon for authoritative details. ASINs are most
  /// commonly encoded as text strings, but the [asin] property supports
  /// URL/URI as potential values too.
  @override
  String? asin;

  /// An organization or person officially appointed to act on behalf of the
  /// manufacturer in a specific region or context.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @override
  dynamic authorizedRepresentative;

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

  /// A consumer notice, such as a safety warning or mandatory information,
  /// related to the product.
  ///
  /// Supported types: [String], [SchemaTextObject], [SchemaWebContent]
  @override
  dynamic consumerNotice;

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

  /// A Global Trade Item Number
  /// ([GTIN](https://www.gs1.org/standards/id-keys/gtin)). GTINs identify
  /// trade items, including products and services, using numeric
  /// identification codes.
  ///
  /// A correct [Schemagtin] value should be a valid GTIN, which means that it
  /// should be an all-numeric string of either 8, 12, 13 or 14 digits, or a
  /// "GS1 Digital Link" URL based on such a string. The numeric component
  /// should also have a [valid GS1 check
  /// digit](https://www.gs1.org/services/check-digit-calculator) and meet the
  /// other rules for valid GTINs. See also [GS1's GTIN
  /// Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) and
  /// [Wikipedia](https://en.wikipedia.org/wiki/Global_Trade_Item_Number) for
  /// more details. Left-padding of the gtin values is not required or
  /// encouraged. The [Schemagtin] property generalizes the earlier
  /// [Schemagtin8], [Schemagtin12], [Schemagtin13], and [Schemagtin14]
  /// properties.
  ///
  /// The GS1 [digital link
  /// specifications](https://www.gs1.org/standards/Digital-Link/) expresses
  /// GTINs as URLs (URIs, IRIs, etc.). Digital Links should be populated into
  /// the [SchemahasGS1DigitalLink] attribute.
  ///
  /// Note also that this is a definition for how to include GTINs in
  /// Schema.org data, and not a definition of GTINs in general - see the GS1
  /// documentation for authoritative details.
  @override
  String? gtin;

  /// The GTIN-12 code of the product, or the product to which the offer
  /// refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a
  /// U.P.C. Company Prefix, Item Reference, and Check Digit used to identify
  /// trade items. See [GS1 GTIN
  /// Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
  /// details.
  @override
  String? gtin12;

  /// The GTIN-13 code of the product, or the product to which the offer
  /// refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former
  /// 12-digit UPC codes can be converted into a GTIN-13 code by simply adding
  /// a preceding zero. See [GS1 GTIN
  /// Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
  /// details.
  @override
  String? gtin13;

  /// The GTIN-14 code of the product, or the product to which the offer
  /// refers. See [GS1 GTIN
  /// Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
  /// details.
  @override
  String? gtin14;

  /// The GTIN-8 code of the product, or the product to which the offer refers.
  /// This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN
  /// Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
  /// details.
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

  /// A link to a Digital Product Passport (DPP) or a digital record detailing
  /// the lifecycle, sustainability, and compliance data for this product or
  /// offer. This may be a direct URL, a GS1 Digital Link URI, or a nested
  /// DigitalProductPassport object. Note: This property is aligned with the
  /// IANA 'dpp' link relation and the GS1 Web Vocabulary 'dpp' link type.
  ///
  /// Supported types: [SchemaDigitalProductPassport], [String]
  @override
  dynamic hasDigitalProductPassport;

  /// Defines the energy efficiency Category (also known as "class" or
  /// "rating") for a product according to an international energy efficiency
  /// standard.
  @override
  SchemaEnergyConsumptionDetails? hasEnergyConsumptionDetails;

  /// The <a href="https://www.gs1.org/standards/gs1-digital-link">GS1 digital
  /// link</a> associated with the object. This URL should conform to the
  /// particular requirements of digital links. The link should only contain
  /// the Application Identifiers (AIs) that are relevant for the entity being
  /// annotated, for instance a [SchemaProduct] or an [SchemaOrganization], and
  /// for the correct granularity. In particular, for products:<ul><li>A
  /// Digital Link that contains a serial number (AI <code>21</code>) should
  /// only be present on instances of [SchemaIndividualProduct]</li><li>A
  /// Digital Link that contains a lot number (AI <code>10</code>) should be
  /// annotated as [SchemaSomeProducts] if only products from that lot are
  /// sold, or [SchemaIndividualProduct] if there is only a specific
  /// product.</li><li>A Digital Link that contains a global model number (AI
  /// <code>8013</code>) should be attached to a [SchemaProduct] or a
  /// [SchemaProductModel].</li></ul> Other item types should be adapted
  /// similarly.
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

  /// Indicates a ProductReturnPolicy that may be applicable.
  @override
  @Deprecated(
      'Use [hasMerchantReturnPolicy]. See https://schema.org/hasProductReturnPolicy')
  SchemaProductReturnPolicy? hasProductReturnPolicy;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  @override
  dynamic height;

  /// An organization or person who imports the product into a specific market
  /// or region.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @override
  dynamic importer;

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

  /// Indicates a product that is often bought with the described product.
  @override
  SchemaProduct? isOftenBoughtWith;

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

  /// The [SchemamobileUrl] property is provided for specific situations in
  /// which data consumers need to determine whether one of several provided
  /// URLs is a dedicated 'mobile site'.
  ///
  /// To discourage over-use, and reflecting intial usecases, the property is
  /// expected only on [SchemaProduct] and [SchemaOffer], rather than
  /// [SchemaThing]. The general trend in web technology is towards [responsive
  /// design](https://en.wikipedia.org/wiki/Responsive_web_design) in which
  /// content can be flexibly adapted to a wide range of browsing environments.
  /// Pages and sites referenced with the long-established [Schemaurl] property
  /// should ideally also be usable on a wide variety of devices, including
  /// mobile phones. In most cases, it would be pointless and counter
  /// productive to attempt to update all [Schemaurl] markup to use
  /// [SchemamobileUrl] for more mobile-oriented pages. The property is
  /// intended for the case when items (primarily [SchemaProduct] and
  /// [SchemaOffer]) have extra URLs hosted on an additional "mobile site"
  /// alongside the main one. It should not be taken as an endorsement of this
  /// publication style.
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

  /// Indicates the [NATO stock
  /// number](https://en.wikipedia.org/wiki/NATO_Stock_Number) (nsn) of a
  /// [SchemaProduct].
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

  /// The product identifier, such as ISBN. For example: ``` meta
  /// itemprop="productID" content="isbn:123-456-789" ```.
  @override
  String? productID;

  /// The date of production of the item, e.g. vehicle.
  @override
  String? productionDate;

  /// The date the item, e.g. vehicle, was purchased by the current owner.
  @override
  String? purchaseDate;

  /// The percentage of recycled material in the product.
  @override
  num? recycledContentPercentage;

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

  /// A specification of the product, often grouped by a section header/name.
  /// This is a cleaner alternative to additionalProperty for strict retail
  /// product specifications.
  @override
  SchemaPropertyValue? specification;

  /// A substance of concern (SoC) contained within the product, typically
  /// based on regulatory lists like REACH or RoHS.
  ///
  /// Supported types: [SchemaChemicalSubstance], [SchemaDefinedTerm], [String]
  @override
  dynamic substanceOfConcern;

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
    this.authorizedRepresentative,
    this.brand,
    this.category,
    this.color,
    this.colorSwatch,
    this.consumerNotice,
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
    this.hasDigitalProductPassport,
    this.hasEnergyConsumptionDetails,
    this.hasGS1DigitalLink,
    this.hasMeasurement,
    this.hasMerchantReturnPolicy,
    this.hasProductReturnPolicy,
    this.height,
    this.importer,
    this.inProductGroupWithID,
    this.isAccessoryOrSparePartFor,
    this.isConsumableFor,
    this.isOftenBoughtWith,
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
    this.recycledContentPercentage,
    this.releaseDate,
    this.sku,
    this.slogan,
    this.specification,
    this.substanceOfConcern,
    this.weight,
    this.width,
  });

  /// Serialize [SchemaProductCollection] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ProductCollection',
        'includesObject': convertToJsonLd(includesObject),
        'additionalProperty': convertToJsonLd(additionalProperty),
        'asin': convertToJsonLd(asin),
        'authorizedRepresentative': convertToJsonLd(authorizedRepresentative,
            (v) => v is SchemaOrganization || v is SchemaPerson),
        'brand': convertToJsonLd(
            brand, (v) => v is SchemaBrand || v is SchemaOrganization),
        'category': convertToJsonLd(
            category,
            (v) =>
                v is SchemaCategoryCode ||
                v is SchemaPhysicalActivityCategory ||
                v is String ||
                v is SchemaThing),
        'color': convertToJsonLd(color),
        'colorSwatch': convertToJsonLd(
            colorSwatch, (v) => v is SchemaImageObject || v is String),
        'consumerNotice': convertToJsonLd(
            consumerNotice,
            (v) =>
                v is String || v is SchemaTextObject || v is SchemaWebContent),
        'countryOfAssembly': convertToJsonLd(countryOfAssembly),
        'countryOfLastProcessing': convertToJsonLd(countryOfLastProcessing),
        'depth': convertToJsonLd(
            depth, (v) => v is SchemaDistance || v is SchemaQuantitativeValue),
        'gtin': convertToJsonLd(gtin),
        'gtin12': convertToJsonLd(gtin12),
        'gtin13': convertToJsonLd(gtin13),
        'gtin14': convertToJsonLd(gtin14),
        'gtin8': convertToJsonLd(gtin8),
        'hasAdultConsideration': convertToJsonLd(hasAdultConsideration),
        'hasCertification': convertToJsonLd(hasCertification),
        'hasDigitalProductPassport': convertToJsonLd(hasDigitalProductPassport,
            (v) => v is SchemaDigitalProductPassport || v is String),
        'hasEnergyConsumptionDetails':
            convertToJsonLd(hasEnergyConsumptionDetails),
        'hasGS1DigitalLink': convertToJsonLd(hasGS1DigitalLink),
        'hasMeasurement': convertToJsonLd(hasMeasurement),
        'hasMerchantReturnPolicy': convertToJsonLd(hasMerchantReturnPolicy),
        'hasProductReturnPolicy': convertToJsonLd(hasProductReturnPolicy),
        'height': convertToJsonLd(
            height, (v) => v is SchemaDistance || v is SchemaQuantitativeValue),
        'importer': convertToJsonLd(
            importer, (v) => v is SchemaOrganization || v is SchemaPerson),
        'inProductGroupWithID': convertToJsonLd(inProductGroupWithID),
        'isAccessoryOrSparePartFor': convertToJsonLd(isAccessoryOrSparePartFor),
        'isConsumableFor': convertToJsonLd(isConsumableFor),
        'isOftenBoughtWith': convertToJsonLd(isOftenBoughtWith),
        'isRelatedTo': convertToJsonLd(
            isRelatedTo, (v) => v is SchemaProduct || v is SchemaService),
        'isSimilarTo': convertToJsonLd(
            isSimilarTo, (v) => v is SchemaProduct || v is SchemaService),
        'isVariantOf': convertToJsonLd(isVariantOf,
            (v) => v is SchemaProductGroup || v is SchemaProductModel),
        'itemCondition': convertToJsonLd(itemCondition),
        'logo':
            convertToJsonLd(logo, (v) => v is SchemaImageObject || v is String),
        'manufacturer': convertToJsonLd(manufacturer),
        'mobileUrl': convertToJsonLd(mobileUrl),
        'model': convertToJsonLd(
            model, (v) => v is SchemaProductModel || v is String),
        'mpn': convertToJsonLd(mpn),
        'negativeNotes': convertToJsonLd(
            negativeNotes,
            (v) =>
                v is SchemaItemList ||
                v is SchemaListItem ||
                v is String ||
                v is SchemaWebContent),
        'nsn': convertToJsonLd(nsn),
        'positiveNotes': convertToJsonLd(
            positiveNotes,
            (v) =>
                v is SchemaItemList ||
                v is SchemaListItem ||
                v is String ||
                v is SchemaWebContent),
        'productID': convertToJsonLd(productID),
        'productionDate': convertToJsonLd(productionDate),
        'purchaseDate': convertToJsonLd(purchaseDate),
        'recycledContentPercentage': convertToJsonLd(recycledContentPercentage),
        'releaseDate': convertToJsonLd(releaseDate),
        'sku': convertToJsonLd(sku),
        'slogan': convertToJsonLd(slogan),
        'specification': convertToJsonLd(specification),
        'substanceOfConcern': convertToJsonLd(
            substanceOfConcern,
            (v) =>
                v is SchemaChemicalSubstance ||
                v is SchemaDefinedTerm ||
                v is String),
        'weight': convertToJsonLd(
            weight, (v) => v is SchemaMass || v is SchemaQuantitativeValue),
        'width': convertToJsonLd(
            width, (v) => v is SchemaDistance || v is SchemaQuantitativeValue),
      });
}
