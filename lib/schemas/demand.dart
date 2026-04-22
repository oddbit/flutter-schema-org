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

  /// //en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s
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

  /// //purl.org/goodrelations/v1#Sell.
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

  /// //www.gs1.org/standards/Digital-Link/) expresses GTINs as URLs (URIs,
  /// IRIs, etc.). Digital Links should be populated into the
  /// [SchemahasGS1DigitalLink] attribute.
  ///
  /// Note also that this is a definition for how to include GTINs in
  /// Schema.org data, and not a definition of GTINs in general - see the GS1
  /// documentation for authoritative details.
  String? gtin;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin12;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin13;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin14;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
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
        'acceptedPaymentMethod': convertToJsonLd(acceptedPaymentMethod,
            [SchemaLoanOrCredit, SchemaPaymentMethod, String]),
        'advanceBookingRequirement': convertToJsonLd(
            advanceBookingRequirement, [SchemaQuantitativeValue]),
        'areaServed': convertToJsonLd(areaServed,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace, String]),
        'asin': convertToJsonLd(asin, [String]),
        'availability': convertToJsonLd(availability, [SchemaItemAvailability]),
        'availabilityEnds': convertToJsonLd(availabilityEnds, [String]),
        'availabilityStarts': convertToJsonLd(availabilityStarts, [String]),
        'availableAtOrFrom': convertToJsonLd(availableAtOrFrom, [SchemaPlace]),
        'availableDeliveryMethod':
            convertToJsonLd(availableDeliveryMethod, [SchemaDeliveryMethod]),
        'businessFunction':
            convertToJsonLd(businessFunction, [SchemaBusinessFunction]),
        'deliveryLeadTime':
            convertToJsonLd(deliveryLeadTime, [SchemaQuantitativeValue]),
        'eligibleCustomerType':
            convertToJsonLd(eligibleCustomerType, [SchemaBusinessEntityType]),
        'eligibleDuration':
            convertToJsonLd(eligibleDuration, [SchemaQuantitativeValue]),
        'eligibleQuantity':
            convertToJsonLd(eligibleQuantity, [SchemaQuantitativeValue]),
        'eligibleRegion': convertToJsonLd(
            eligibleRegion, [SchemaGeoShape, SchemaPlace, String]),
        'eligibleTransactionVolume': convertToJsonLd(
            eligibleTransactionVolume, [SchemaPriceSpecification]),
        'gtin': convertToJsonLd(gtin, [String]),
        'gtin12': convertToJsonLd(gtin12, [String]),
        'gtin13': convertToJsonLd(gtin13, [String]),
        'gtin14': convertToJsonLd(gtin14, [String]),
        'gtin8': convertToJsonLd(gtin8, [String]),
        'includesObject':
            convertToJsonLd(includesObject, [SchemaTypeAndQuantityNode]),
        'ineligibleRegion': convertToJsonLd(
            ineligibleRegion, [SchemaGeoShape, SchemaPlace, String]),
        'inventoryLevel':
            convertToJsonLd(inventoryLevel, [SchemaQuantitativeValue]),
        'itemCondition':
            convertToJsonLd(itemCondition, [SchemaOfferItemCondition]),
        'itemOffered': convertToJsonLd(itemOffered, [
          SchemaAggregateOffer,
          SchemaCreativeWork,
          SchemaEvent,
          SchemaMenuItem,
          SchemaProduct,
          SchemaService,
          SchemaTrip
        ]),
        'mpn': convertToJsonLd(mpn, [String]),
        'priceSpecification':
            convertToJsonLd(priceSpecification, [SchemaPriceSpecification]),
        'seller': convertToJsonLd(seller, [SchemaOrganization, SchemaPerson]),
        'serialNumber': convertToJsonLd(serialNumber, [String]),
        'sku': convertToJsonLd(sku, [String]),
        'validFrom': convertToJsonLd(validFrom, [String]),
        'validThrough': convertToJsonLd(validThrough, [String]),
        'warranty': convertToJsonLd(warranty, [SchemaWarrantyPromise]),
      });
}
