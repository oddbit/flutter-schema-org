// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// A delivery method is a standardized procedure for transferring the
/// product or service to the destination of fulfillment chosen by the
/// customer. Delivery methods are characterized by the means of
/// transportation used, and by the organization or group that is the
/// contracting party for the sending organization or person.\n\nCommonly
/// used values:\n\n*
/// http://purl.org/goodrelations/v1#DeliveryModeDirectDownload\n*
/// http://purl.org/goodrelations/v1#DeliveryModeFreight\n*
/// http://purl.org/goodrelations/v1#DeliveryModeMail\n*
/// http://purl.org/goodrelations/v1#DeliveryModeOwnFleet\n*
/// http://purl.org/goodrelations/v1#DeliveryModePickUp\n*
/// http://purl.org/goodrelations/v1#DHL\n*
/// http://purl.org/goodrelations/v1#FederalExpress\n*
/// http://purl.org/goodrelations/v1#UPS
/// See https://schema.org/DeliveryMethod
enum SchemaDeliveryMethod implements SchemaSerializable {
  /// A DeliveryMethod in which an item is made available via locker.
  lockerDelivery('https://schema.org/LockerDelivery'),

  /// A DeliveryMethod in which an item is collected on site, e.g. in a
  /// store or at a box office.
  onSitePickup('https://schema.org/OnSitePickup'),

  /// A private parcel service as the delivery mode available for a certain
  /// offer.\n\nCommonly used values:\n\n*
  /// http://purl.org/goodrelations/v1#DHL\n*
  /// http://purl.org/goodrelations/v1#FederalExpress\n*
  /// http://purl.org/goodrelations/v1#UPS
  parcelService('https://schema.org/ParcelService');

  /// Constructor for [SchemaDeliveryMethod]
  const SchemaDeliveryMethod(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaDeliveryMethod] to JSON-LD
  @override
  String toJsonLd() => value;
}
