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
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/delivery_event.dart';
import 'package:schema_org/schemas/delivery_method.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/order.dart';
import 'package:schema_org/schemas/person.dart';

/// The delivery of a parcel either via the postal service or a commercial
/// service.
/// See https://schema.org/ParcelDelivery
class SchemaParcelDelivery extends SchemaIntangible {
  /// 'carrier' is an out-dated term indicating the 'provider' for parcel
  /// delivery and flights.
  @Deprecated('Use [provider]. See https://schema.org/carrier')
  SchemaOrganization? carrier;

  /// Destination address.
  SchemaPostalAddress? deliveryAddress;

  /// New entry added as the package passes through each leg of its journey
  /// (from shipment to final delivery).
  SchemaDeliveryEvent? deliveryStatus;

  /// The earliest date the package may arrive.
  String? expectedArrivalFrom;

  /// The latest date the package may arrive.
  String? expectedArrivalUntil;

  /// Method used for delivery or shipping.
  SchemaDeliveryMethod? hasDeliveryMethod;

  /// Item(s) being shipped.
  SchemaProduct? itemShipped;

  /// Shipper's address.
  SchemaPostalAddress? originAddress;

  /// The overall order the items in this delivery were included in.
  SchemaOrder? partOfOrder;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// Shipper tracking number.
  String? trackingNumber;

  /// Tracking url for the parcel delivery.
  String? trackingUrl;

  /// Create a new instance of [SchemaParcelDelivery]
  SchemaParcelDelivery({
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
    this.carrier,
    this.deliveryAddress,
    this.deliveryStatus,
    this.expectedArrivalFrom,
    this.expectedArrivalUntil,
    this.hasDeliveryMethod,
    this.itemShipped,
    this.originAddress,
    this.partOfOrder,
    this.provider,
    this.trackingNumber,
    this.trackingUrl,
  });

  /// Serialize [SchemaParcelDelivery] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ParcelDelivery',
        'carrier': convertToJsonLd(carrier),
        'deliveryAddress': convertToJsonLd(deliveryAddress),
        'deliveryStatus': convertToJsonLd(deliveryStatus),
        'expectedArrivalFrom': convertToJsonLd(expectedArrivalFrom),
        'expectedArrivalUntil': convertToJsonLd(expectedArrivalUntil),
        'hasDeliveryMethod': convertToJsonLd(hasDeliveryMethod),
        'itemShipped': convertToJsonLd(itemShipped),
        'originAddress': convertToJsonLd(originAddress),
        'partOfOrder': convertToJsonLd(partOfOrder),
        'provider': convertToJsonLd(
            provider, (v) => v is SchemaOrganization || v is SchemaPerson),
        'trackingNumber': convertToJsonLd(trackingNumber),
        'trackingUrl': convertToJsonLd(trackingUrl),
      });
}
