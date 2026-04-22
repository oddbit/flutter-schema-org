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

/// //en.wikipedia.org/wiki/GoodRelations) for background on the underlying
/// concepts.
/// See https://schema.org/OfferForPurchase
class SchemaOfferForPurchase extends SchemaOffer {
  /// Create a new instance of [SchemaOfferForPurchase]
  SchemaOfferForPurchase({
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
  });

  /// Serialize [SchemaOfferForPurchase] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'OfferForPurchase',
      });
}
