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
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/item_availability.dart';
import 'package:schema_org/schemas/delivery_method.dart';
import 'package:schema_org/schemas/business_function.dart';
import 'package:schema_org/schemas/business_entity_type.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/type_and_quantity_node.dart';
import 'package:schema_org/schemas/offer_item_condition.dart';
import 'package:schema_org/schemas/aggregate_offer.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/menu_item.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/trip.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/warranty_promise.dart';

/// A demand entity represents the public, not necessarily binding, not
/// necessarily exclusive, announcement by an organization or person to seek
/// a certain type of goods or services. For describing demand using this
/// type, the very same properties used for Offer apply.
/// See https://schema.org/Demand
class SchemaDemand extends SchemaIntangible {
  /// The payment method(s) that are accepted in general by an organization, or
  /// for some specific demand or offer.
  ///
  /// Supported types: [SchemaLoanOrCredit], [SchemaPaymentMethod], [String]
  dynamic acceptedPaymentMethod;

  /// The amount of time that is required between accepting the offer and the
  /// actual usage of the resource or service.
  SchemaQuantitativeValue? advanceBookingRequirement;

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

  /// The Manufacturer Part Number (MPN) of the product, or the product to
  /// which the offer refers.
  String? mpn;

  /// One or more detailed price specifications, indicating the unit price and
  /// delivery or payment charges.
  SchemaPriceSpecification? priceSpecification;

  /// An entity which offers (sells / leases / lends / loans) the services /
  /// goods. A seller may also be a provider.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic seller;

  /// The serial number or any alphanumeric identifier of a particular product.
  /// When attached to an offer, it is a shortcut for the serial number of the
  /// product included in the offer.
  String? serialNumber;

  /// The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a
  /// product or service, or the product to which the offer refers.
  String? sku;

  /// The date when the item becomes valid.
  String? validFrom;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  String? validThrough;

  /// The warranty promise(s) included in the offer.
  SchemaWarrantyPromise? warranty;

  /// Create a new instance of [SchemaDemand]
  SchemaDemand({
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
    this.advanceBookingRequirement,
    this.areaServed,
    this.asin,
    this.availability,
    this.availabilityEnds,
    this.availabilityStarts,
    this.availableAtOrFrom,
    this.availableDeliveryMethod,
    this.businessFunction,
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
    this.includesObject,
    this.ineligibleRegion,
    this.inventoryLevel,
    this.itemCondition,
    this.itemOffered,
    this.mpn,
    this.priceSpecification,
    this.seller,
    this.serialNumber,
    this.sku,
    this.validFrom,
    this.validThrough,
    this.warranty,
  });

  /// Serialize [SchemaDemand] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Demand',
        'acceptedPaymentMethod': convertToJsonLd(
            acceptedPaymentMethod,
            (v) =>
                v is SchemaLoanOrCredit ||
                v is SchemaPaymentMethod ||
                v is String),
        'advanceBookingRequirement': convertToJsonLd(advanceBookingRequirement),
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
        'includesObject': convertToJsonLd(includesObject),
        'ineligibleRegion': convertToJsonLd(ineligibleRegion,
            (v) => v is SchemaGeoShape || v is SchemaPlace || v is String),
        'inventoryLevel': convertToJsonLd(inventoryLevel),
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
        'mpn': convertToJsonLd(mpn),
        'priceSpecification': convertToJsonLd(priceSpecification),
        'seller': convertToJsonLd(
            seller, (v) => v is SchemaOrganization || v is SchemaPerson),
        'serialNumber': convertToJsonLd(serialNumber),
        'sku': convertToJsonLd(sku),
        'validFrom': convertToJsonLd(validFrom),
        'validThrough': convertToJsonLd(validThrough),
        'warranty': convertToJsonLd(warranty),
      });
}
