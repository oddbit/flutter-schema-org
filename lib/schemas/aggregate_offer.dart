// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/demand.dart';

/// //purl.org/goodrelations/v1#Sell if businessFunction is not explicitly
/// defined.
/// See https://schema.org/AggregateOffer
class SchemaAggregateOffer extends SchemaOffer {
  /// \n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT
  /// NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use
  /// '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal
  /// point. Avoid using these symbols as a readability separator.
  ///
  /// Supported types: [String], [num]
  dynamic highPrice;

  /// \n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT
  /// NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use
  /// '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal
  /// point. Avoid using these symbols as a readability separator.
  ///
  /// Supported types: [String], [num]
  dynamic lowPrice;

  /// The number of offers for the product.
  int? offerCount;

  /// An offer to provide this item&#x2014;for example, an offer to sell a
  /// product, rent the DVD of a movie, perform a service, or give away tickets
  /// to an event. Use [SchemabusinessFunction] to indicate the kind of
  /// transaction offered, i.e. sell, lease, etc. This property can also be
  /// used to describe a [SchemaDemand]. While this property is listed as
  /// expected on a number of common types, it can be used in others. In that
  /// case, using a second type, such as Product or a subtype of Product, can
  /// clarify the nature of the offer.
  ///
  /// Supported types: [SchemaDemand], [SchemaOffer]
  dynamic offers;

  /// Create a new instance of [SchemaAggregateOffer]
  SchemaAggregateOffer({
    super.acceptedPaymentMethod,
    super.addOn,
    super.additionalProperty,
    super.additionalType,
    super.advanceBookingRequirement,
    super.aggregateRating,
    super.alternateName,
    super.areaServed,
    super.asin,
    super.availability,
    super.availabilityEnds,
    super.availabilityStarts,
    super.availableAtOrFrom,
    super.availableDeliveryMethod,
    super.businessFunction,
    super.category,
    super.checkoutPageURLTemplate,
    super.deliveryLeadTime,
    super.description,
    super.disambiguatingDescription,
    super.eligibleCustomerType,
    super.eligibleDuration,
    super.eligibleQuantity,
    super.eligibleRegion,
    super.eligibleTransactionVolume,
    super.gtin,
    super.gtin12,
    super.gtin13,
    super.gtin14,
    super.gtin8,
    super.hasAdultConsideration,
    super.hasGS1DigitalLink,
    super.hasMeasurement,
    super.hasMerchantReturnPolicy,
    super.identifier,
    super.image,
    super.includesObject,
    super.ineligibleRegion,
    super.inventoryLevel,
    super.isFamilyFriendly,
    super.itemCondition,
    super.itemOffered,
    super.leaseLength,
    super.mainEntityOfPage,
    super.mobileUrl,
    super.mpn,
    super.name,
    super.offeredBy,
    super.owner,
    super.potentialAction,
    super.price,
    super.priceCurrency,
    super.priceSpecification,
    super.priceValidUntil,
    super.review,
    super.reviews,
    super.sameAs,
    super.seller,
    super.serialNumber,
    super.shippingDetails,
    super.sku,
    super.subjectOf,
    super.url,
    super.validForMemberTier,
    super.validFrom,
    super.validThrough,
    super.warranty,
    this.highPrice,
    this.lowPrice,
    this.offerCount,
    this.offers,
  });

  /// Serialize [SchemaAggregateOffer] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'AggregateOffer',
        'highPrice': convertToJsonLd(highPrice, [String, num]),
        'lowPrice': convertToJsonLd(lowPrice, [String, num]),
        'offerCount': convertToJsonLd(offerCount, [int]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
      });
}
