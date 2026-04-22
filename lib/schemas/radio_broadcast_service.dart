// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/broadcast_service.dart';

/// A delivery service through which radio content is provided via broadcast
/// over the air or online.
/// See https://schema.org/RadioBroadcastService
class SchemaRadioBroadcastService extends SchemaBroadcastService {
  /// Create a new instance of [SchemaRadioBroadcastService]
  SchemaRadioBroadcastService({
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.area,
    super.areaServed,
    super.audience,
    super.availableChannel,
    super.award,
    super.brand,
    super.broadcastAffiliateOf,
    super.broadcastDisplayName,
    super.broadcastFrequency,
    super.broadcastTimezone,
    super.broadcaster,
    super.broker,
    super.callSign,
    super.category,
    super.description,
    super.disambiguatingDescription,
    super.hasBroadcastChannel,
    super.hasCertification,
    super.hasOfferCatalog,
    super.hoursAvailable,
    super.identifier,
    super.image,
    super.inLanguage,
    super.isRelatedTo,
    super.isSimilarTo,
    super.logo,
    super.mainEntityOfPage,
    super.name,
    super.offers,
    super.owner,
    super.parentService,
    super.potentialAction,
    super.produces,
    super.provider,
    super.providerMobility,
    super.review,
    super.sameAs,
    super.serviceArea,
    super.serviceAudience,
    super.serviceOutput,
    super.serviceType,
    super.slogan,
    super.subjectOf,
    super.termsOfService,
    super.url,
    super.videoFormat,
  });

  /// Serialize [SchemaRadioBroadcastService] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'RadioBroadcastService',
      });
}
