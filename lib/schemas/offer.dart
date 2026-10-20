// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/loan_or_credit.dart';
import 'package:schema_org/schemas/payment_method.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/aggregate_rating.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/item_availability.dart';
import 'package:schema_org/schemas/delivery_method.dart';
import 'package:schema_org/schemas/business_function.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/business_entity_type.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/adult_oriented_enumeration.dart';
import 'package:schema_org/schemas/digital_product_passport.dart';
import 'package:schema_org/schemas/merchant_return_policy.dart';
import 'package:schema_org/schemas/type_and_quantity_node.dart';
import 'package:schema_org/schemas/offer_item_condition.dart';
import 'package:schema_org/schemas/aggregate_offer.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/menu_item.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/trip.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/review.dart';
import 'package:schema_org/schemas/offer_shipping_details.dart';
import 'package:schema_org/schemas/member_program_tier.dart';
import 'package:schema_org/schemas/warranty_promise.dart';

/// An offer to transfer some rights to an item or to provide a service — for
/// example, an offer to sell tickets to an event, to rent the DVD of a
/// movie, to stream a TV show over the internet, to repair a motorcycle, or
/// to loan a book.\n\nNote: As the [SchemabusinessFunction] property, which
/// identifies the form of offer (e.g. sell, lease, repair, dispose),
/// defaults to http://purl.org/goodrelations/v1#Sell; an Offer without a
/// defined businessFunction value can be assumed to be an offer to
/// sell.\n\nFor
/// [GTIN](http://www.gs1.org/barcodes/technical/idkeys/gtin)-related fields,
/// see [Check Digit
/// calculator](http://www.gs1.org/barcodes/support/check_digit_calculator)
/// and [validation
/// guide](http://www.gs1us.org/resources/standards/gtin-validation-guide)
/// from [GS1](http://www.gs1.org/).
/// See https://schema.org/Offer
class SchemaOffer extends SchemaIntangible {
  /// The payment method(s) that are accepted in general by an organization, or
  /// for some specific demand or offer.
  ///
  /// Supported types: [SchemaLoanOrCredit], [SchemaPaymentMethod], [String]
  dynamic acceptedPaymentMethod;

  /// An additional offer that can only be obtained in combination with the
  /// first base offer (e.g. supplements and extensions that are available for
  /// a surcharge).
  SchemaOffer? addOn;

  /// A property-value pair representing an additional characteristic of the
  /// entity, e.g. a product feature or another characteristic for which there
  /// is no matching property in schema.org.\n\nNote: Publishers should be
  /// aware that applications designed to use specific schema.org properties
  /// (e.g. https://schema.org/width, https://schema.org/color,
  /// https://schema.org/gtin13, ...) will typically expect such data to be
  /// provided using those properties, rather than using the generic
  /// property/value mechanism.
  SchemaPropertyValue? additionalProperty;

  /// The amount of time that is required between accepting the offer and the
  /// actual usage of the resource or service.
  SchemaQuantitativeValue? advanceBookingRequirement;

  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  dynamic areaServed;

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
  String? asin;

  /// The availability of this item&#x2014;for example In stock, Out of stock,
  /// Pre-order, etc.
  SchemaItemAvailability? availability;

  /// The end of the availability of the product or service included in the
  /// offer.
  String? availabilityEnds;

  /// The beginning of the availability of the product or service included in
  /// the offer.
  String? availabilityStarts;

  /// The place(s) from which the offer can be obtained (e.g. store locations).
  SchemaPlace? availableAtOrFrom;

  /// The delivery method(s) available for this offer.
  SchemaDeliveryMethod? availableDeliveryMethod;

  /// The business function (e.g. sell, lease, repair, dispose) of the offer or
  /// component of a bundle (TypeAndQuantityNode). The default is
  /// http://purl.org/goodrelations/v1#Sell.
  SchemaBusinessFunction? businessFunction;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [SchemaThing]
  dynamic category;

  /// A URL template (RFC 6570) for a checkout page for an offer. This approach
  /// allows merchants to specify a URL for online checkout of the offered
  /// product, by interpolating parameters such as the logged in user ID,
  /// product ID, quantity, discount code etc. Parameter naming and
  /// standardization are not specified here.
  String? checkoutPageURLTemplate;

  /// The typical delay between the receipt of the order and the goods either
  /// leaving the warehouse or being prepared for pickup, in case the delivery
  /// method is on site pickup.
  SchemaQuantitativeValue? deliveryLeadTime;

  /// The type(s) of customers for which the given offer is valid.
  SchemaBusinessEntityType? eligibleCustomerType;

  /// The duration for which the given offer is valid.
  SchemaQuantitativeValue? eligibleDuration;

  /// The interval and unit of measurement of ordering quantities for which the
  /// offer or price specification is valid. This allows e.g. specifying that a
  /// certain freight charge is valid only for a certain quantity.
  SchemaQuantitativeValue? eligibleQuantity;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
  /// GeoShape for the geo-political region(s) for which the offer or delivery
  /// charge specification is valid.\n\nSee also [SchemaineligibleRegion].
  ///
  /// Supported types: [SchemaGeoShape], [SchemaPlace], [String]
  dynamic eligibleRegion;

  /// The transaction volume, in a monetary unit, for which the offer or price
  /// specification is valid, e.g. for indicating a minimal purchasing volume,
  /// to express free shipping above a certain order volume, or to limit the
  /// acceptance of credit cards to purchases to a certain minimal amount.
  SchemaPriceSpecification? eligibleTransactionVolume;

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
  String? gtin;

  /// The GTIN-12 code of the product, or the product to which the offer
  /// refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a
  /// U.P.C. Company Prefix, Item Reference, and Check Digit used to identify
  /// trade items. See [GS1 GTIN
  /// Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
  /// details.
  String? gtin12;

  /// The GTIN-13 code of the product, or the product to which the offer
  /// refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former
  /// 12-digit UPC codes can be converted into a GTIN-13 code by simply adding
  /// a preceding zero. See [GS1 GTIN
  /// Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
  /// details.
  String? gtin13;

  /// The GTIN-14 code of the product, or the product to which the offer
  /// refers. See [GS1 GTIN
  /// Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
  /// details.
  String? gtin14;

  /// The GTIN-8 code of the product, or the product to which the offer refers.
  /// This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN
  /// Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
  /// details.
  String? gtin8;

  /// Used to tag an item to be intended or suitable for consumption or use by
  /// adults only.
  SchemaAdultOrientedEnumeration? hasAdultConsideration;

  /// A link to a Digital Product Passport (DPP) or a digital record detailing
  /// the lifecycle, sustainability, and compliance data for this product or
  /// offer. This may be a direct URL, a GS1 Digital Link URI, or a nested
  /// DigitalProductPassport object. Note: This property is aligned with the
  /// IANA 'dpp' link relation and the GS1 Web Vocabulary 'dpp' link type.
  ///
  /// Supported types: [SchemaDigitalProductPassport], [String]
  dynamic hasDigitalProductPassport;

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
  String? hasGS1DigitalLink;

  /// A measurement of an item, For example, the inseam of pants, the wheel
  /// size of a bicycle, the gauge of a screw, or the carbon footprint measured
  /// for certification by an authority. Usually an exact measurement, but can
  /// also be a range of measurements for adjustable products, for example
  /// belts and ski bindings.
  SchemaQuantitativeValue? hasMeasurement;

  /// Specifies a MerchantReturnPolicy that may be applicable.
  SchemaMerchantReturnPolicy? hasMerchantReturnPolicy;

  /// This links to a node or nodes indicating the exact quantity of the
  /// products included in an [SchemaOffer] or [SchemaProductCollection].
  SchemaTypeAndQuantityNode? includesObject;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
  /// GeoShape for the geo-political region(s) for which the offer or delivery
  /// charge specification is not valid, e.g. a region where the transaction is
  /// not allowed.\n\nSee also [SchemaeligibleRegion].
  ///
  /// Supported types: [SchemaGeoShape], [SchemaPlace], [String]
  dynamic ineligibleRegion;

  /// The current approximate inventory level for the item or items.
  SchemaQuantitativeValue? inventoryLevel;

  /// Indicates whether this content is family friendly.
  bool? isFamilyFriendly;

  /// A predefined value from OfferItemCondition specifying the condition of
  /// the product or service, or the products or services included in the
  /// offer. Also used for product return policies to specify the condition of
  /// products accepted for returns.
  SchemaOfferItemCondition? itemCondition;

  /// An item being offered (or demanded). The transactional nature of the
  /// offer or demand is documented using [SchemabusinessFunction], e.g. sell,
  /// lease etc. While several common expected types are listed explicitly in
  /// this definition, others can be used. Using a second type, such as Product
  /// or a subtype of Product, can clarify the nature of the offer.
  ///
  /// Supported types: [SchemaAggregateOffer], [SchemaCreativeWork],
  /// [SchemaEvent], [SchemaMenuItem], [SchemaProduct], [SchemaService],
  /// [SchemaTrip]
  dynamic itemOffered;

  /// A measure of the relative popularity or sales rank of the offer within a
  /// marketplace, catalog, or platform (e.g. a platform-specific bestseller
  /// ranking or sales rank). This property is intended for platform-level or
  /// catalog-wide comparative rankings rather than self-asserted promotional
  /// claims.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic itemPopularity;

  /// Length of the lease for some [SchemaAccommodation], either particular to
  /// some [SchemaOffer] or in some cases intrinsic to the property.
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  dynamic leaseLength;

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
  String? mobileUrl;

  /// The Manufacturer Part Number (MPN) of the product, or the product to
  /// which the offer refers.
  String? mpn;

  /// A pointer to the organization or person making the offer.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic offeredBy;

  /// The offer price of a product, or of a price component when attached to
  /// PriceSpecification and its subtypes.\n\nUsage guidelines:\n\n* Use the
  /// [SchemapriceCurrency] property (with standard formats: [ISO 4217 currency
  /// format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR") instead of including
  /// [ambiguous
  /// symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign)
  /// such as '$' in the value.\n* Use '.' (Unicode 'FULL STOP' (U+002E))
  /// rather than ',' to indicate a decimal point. Avoid using these symbols as
  /// a readability separator.\n* Note that both
  /// [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute)
  /// and Microdata syntax allow the use of a "content=" attribute for
  /// publishing simple machine-readable values alongside more human-friendly
  /// formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030)
  /// to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode
  /// symbols.
  ///
  /// Supported types: [String], [num]
  dynamic price;

  /// The currency of the price, or a price component when attached to
  /// [SchemaPriceSpecification] and its subtypes.\n\nUse standard formats:
  /// [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g.
  /// "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR".
  String? priceCurrency;

  /// One or more detailed price specifications, indicating the unit price and
  /// delivery or payment charges.
  SchemaPriceSpecification? priceSpecification;

  /// The date after which the price is no longer available.
  String? priceValidUntil;

  /// A review of the item.
  SchemaReview? review;

  /// Review of the item.
  @Deprecated('Use [review]. See https://schema.org/reviews')
  SchemaReview? reviews;

  /// An entity which offers (sells / leases / lends / loans) the services /
  /// goods. A seller may also be a provider.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic seller;

  /// The serial number or any alphanumeric identifier of a particular product.
  /// When attached to an offer, it is a shortcut for the serial number of the
  /// product included in the offer.
  String? serialNumber;

  /// Indicates information about the shipping policies and options associated
  /// with an [SchemaOffer].
  SchemaOfferShippingDetails? shippingDetails;

  /// The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a
  /// product or service, or the product to which the offer refers.
  String? sku;

  /// The membership program tier(s) an Offer (or a PriceSpecification,
  /// OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid
  /// for.
  SchemaMemberProgramTier? validForMemberTier;

  /// The date when the item becomes valid.
  String? validFrom;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  String? validThrough;

  /// The warranty promise(s) included in the offer.
  SchemaWarrantyPromise? warranty;

  /// Create a new instance of [SchemaOffer]
  SchemaOffer({
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
    this.acceptedPaymentMethod,
    this.addOn,
    this.additionalProperty,
    this.advanceBookingRequirement,
    this.aggregateRating,
    this.areaServed,
    this.asin,
    this.availability,
    this.availabilityEnds,
    this.availabilityStarts,
    this.availableAtOrFrom,
    this.availableDeliveryMethod,
    this.businessFunction,
    this.category,
    this.checkoutPageURLTemplate,
    this.deliveryLeadTime,
    this.eligibleCustomerType,
    this.eligibleDuration,
    this.eligibleQuantity,
    this.eligibleRegion,
    this.eligibleTransactionVolume,
    this.gtin,
    this.gtin12,
    this.gtin13,
    this.gtin14,
    this.gtin8,
    this.hasAdultConsideration,
    this.hasDigitalProductPassport,
    this.hasGS1DigitalLink,
    this.hasMeasurement,
    this.hasMerchantReturnPolicy,
    this.includesObject,
    this.ineligibleRegion,
    this.inventoryLevel,
    this.isFamilyFriendly,
    this.itemCondition,
    this.itemOffered,
    this.itemPopularity,
    this.leaseLength,
    this.mobileUrl,
    this.mpn,
    this.offeredBy,
    this.price,
    this.priceCurrency,
    this.priceSpecification,
    this.priceValidUntil,
    this.review,
    this.reviews,
    this.seller,
    this.serialNumber,
    this.shippingDetails,
    this.sku,
    this.validForMemberTier,
    this.validFrom,
    this.validThrough,
    this.warranty,
  });

  /// Serialize [SchemaOffer] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Offer',
        'acceptedPaymentMethod': convertToJsonLd(
            acceptedPaymentMethod,
            (v) =>
                v is SchemaLoanOrCredit ||
                v is SchemaPaymentMethod ||
                v is String),
        'addOn': convertToJsonLd(addOn),
        'additionalProperty': convertToJsonLd(additionalProperty),
        'advanceBookingRequirement': convertToJsonLd(advanceBookingRequirement),
        'aggregateRating': convertToJsonLd(aggregateRating),
        'areaServed': convertToJsonLd(
            areaServed,
            (v) =>
                v is SchemaAdministrativeArea ||
                v is SchemaGeoShape ||
                v is SchemaPlace ||
                v is String),
        'asin': convertToJsonLd(asin),
        'availability': convertToJsonLd(availability),
        'availabilityEnds': convertToJsonLd(availabilityEnds),
        'availabilityStarts': convertToJsonLd(availabilityStarts),
        'availableAtOrFrom': convertToJsonLd(availableAtOrFrom),
        'availableDeliveryMethod': convertToJsonLd(availableDeliveryMethod),
        'businessFunction': convertToJsonLd(businessFunction),
        'category': convertToJsonLd(
            category,
            (v) =>
                v is SchemaCategoryCode ||
                v is SchemaPhysicalActivityCategory ||
                v is String ||
                v is SchemaThing),
        'checkoutPageURLTemplate': convertToJsonLd(checkoutPageURLTemplate),
        'deliveryLeadTime': convertToJsonLd(deliveryLeadTime),
        'eligibleCustomerType': convertToJsonLd(eligibleCustomerType),
        'eligibleDuration': convertToJsonLd(eligibleDuration),
        'eligibleQuantity': convertToJsonLd(eligibleQuantity),
        'eligibleRegion': convertToJsonLd(eligibleRegion,
            (v) => v is SchemaGeoShape || v is SchemaPlace || v is String),
        'eligibleTransactionVolume': convertToJsonLd(eligibleTransactionVolume),
        'gtin': convertToJsonLd(gtin),
        'gtin12': convertToJsonLd(gtin12),
        'gtin13': convertToJsonLd(gtin13),
        'gtin14': convertToJsonLd(gtin14),
        'gtin8': convertToJsonLd(gtin8),
        'hasAdultConsideration': convertToJsonLd(hasAdultConsideration),
        'hasDigitalProductPassport': convertToJsonLd(hasDigitalProductPassport,
            (v) => v is SchemaDigitalProductPassport || v is String),
        'hasGS1DigitalLink': convertToJsonLd(hasGS1DigitalLink),
        'hasMeasurement': convertToJsonLd(hasMeasurement),
        'hasMerchantReturnPolicy': convertToJsonLd(hasMerchantReturnPolicy),
        'includesObject': convertToJsonLd(includesObject),
        'ineligibleRegion': convertToJsonLd(ineligibleRegion,
            (v) => v is SchemaGeoShape || v is SchemaPlace || v is String),
        'inventoryLevel': convertToJsonLd(inventoryLevel),
        'isFamilyFriendly': convertToJsonLd(isFamilyFriendly),
        'itemCondition': convertToJsonLd(itemCondition),
        'itemOffered': convertToJsonLd(
            itemOffered,
            (v) =>
                v is SchemaAggregateOffer ||
                v is SchemaCreativeWork ||
                v is SchemaEvent ||
                v is SchemaMenuItem ||
                v is SchemaProduct ||
                v is SchemaService ||
                v is SchemaTrip),
        'itemPopularity': convertToJsonLd(
            itemPopularity, (v) => v is SchemaQuantitativeValue || v is num),
        'leaseLength': convertToJsonLd(leaseLength,
            (v) => v is SchemaDuration || v is SchemaQuantitativeValue),
        'mobileUrl': convertToJsonLd(mobileUrl),
        'mpn': convertToJsonLd(mpn),
        'offeredBy': convertToJsonLd(
            offeredBy, (v) => v is SchemaOrganization || v is SchemaPerson),
        'price': convertToJsonLd(price, (v) => v is String || v is num),
        'priceCurrency': convertToJsonLd(priceCurrency),
        'priceSpecification': convertToJsonLd(priceSpecification),
        'priceValidUntil': convertToJsonLd(priceValidUntil),
        'review': convertToJsonLd(review),
        'reviews': convertToJsonLd(reviews),
        'seller': convertToJsonLd(
            seller, (v) => v is SchemaOrganization || v is SchemaPerson),
        'serialNumber': convertToJsonLd(serialNumber),
        'shippingDetails': convertToJsonLd(shippingDetails),
        'sku': convertToJsonLd(sku),
        'validForMemberTier': convertToJsonLd(validForMemberTier),
        'validFrom': convertToJsonLd(validFrom),
        'validThrough': convertToJsonLd(validThrough),
        'warranty': convertToJsonLd(warranty),
      });
}
