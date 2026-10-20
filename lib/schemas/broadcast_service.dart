// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/broadcast_frequency_specification.dart';
import 'package:schema_org/schemas/broadcast_channel.dart';
import 'package:schema_org/schemas/language.dart';

/// A delivery service through which content is provided via broadcast over
/// the air or online.
/// See https://schema.org/BroadcastService
class SchemaBroadcastService extends SchemaService {
  /// The area within which users can expect to reach the broadcast service.
  @Deprecated('Use [serviceArea]. See https://schema.org/area')
  SchemaPlace? area;

  /// The media network(s) whose content is broadcast on this station.
  SchemaOrganization? broadcastAffiliateOf;

  /// The name displayed in the channel guide. For many US affiliates, it is
  /// the network name.
  String? broadcastDisplayName;

  /// The frequency used for over-the-air broadcasts. Numeric values or simple
  /// ranges, e.g. 87-99. In addition a shortcut idiom is supported for
  /// frequencies of AM and FM radio channels, e.g. "87 FM".
  ///
  /// Supported types: [SchemaBroadcastFrequencySpecification], [String]
  dynamic broadcastFrequency;

  /// The timezone in [ISO 8601 format](http://en.wikipedia.org/wiki/ISO_8601)
  /// for which the service bases its broadcasts.
  String? broadcastTimezone;

  /// The organization owning or operating the broadcast service.
  SchemaOrganization? broadcaster;

  /// A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in
  /// broadcasting and radio communications to identify people, radio and TV
  /// stations, or vehicles.
  String? callSign;

  /// A broadcast channel of a broadcast service.
  SchemaBroadcastChannel? hasBroadcastChannel;

  /// The language of the content or performance or used in an action. Please
  /// use one of the language codes from the [IETF BCP 47
  /// standard](http://tools.ietf.org/html/bcp47). See also
  /// [SchemaavailableLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic inLanguage;

  /// A broadcast service to which the broadcast service may belong to such as
  /// regional variations of a national channel.
  SchemaBroadcastService? parentService;

  /// The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD,
  /// etc.).
  String? videoFormat;

  /// Create a new instance of [SchemaBroadcastService]
  SchemaBroadcastService({
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.areaServed,
    super.audience,
    super.availableChannel,
    super.award,
    super.brand,
    super.broker,
    super.category,
    super.description,
    super.disambiguatingDescription,
    super.hasCertification,
    super.hasOfferCatalog,
    super.hoursAvailable,
    super.identifier,
    super.image,
    super.isRelatedTo,
    super.isSimilarTo,
    super.logo,
    super.mainEntityOfPage,
    super.name,
    super.offers,
    super.owner,
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
    this.area,
    this.broadcastAffiliateOf,
    this.broadcastDisplayName,
    this.broadcastFrequency,
    this.broadcastTimezone,
    this.broadcaster,
    this.callSign,
    this.hasBroadcastChannel,
    this.inLanguage,
    this.parentService,
    this.videoFormat,
  });

  /// Serialize [SchemaBroadcastService] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BroadcastService',
        'area': convertToJsonLd(area),
        'broadcastAffiliateOf': convertToJsonLd(broadcastAffiliateOf),
        'broadcastDisplayName': convertToJsonLd(broadcastDisplayName),
        'broadcastFrequency': convertToJsonLd(broadcastFrequency,
            (v) => v is SchemaBroadcastFrequencySpecification || v is String),
        'broadcastTimezone': convertToJsonLd(broadcastTimezone),
        'broadcaster': convertToJsonLd(broadcaster),
        'callSign': convertToJsonLd(callSign),
        'hasBroadcastChannel': convertToJsonLd(hasBroadcastChannel),
        'inLanguage': convertToJsonLd(
            inLanguage, (v) => v is SchemaLanguage || v is String),
        'parentService': convertToJsonLd(parentService),
        'videoFormat': convertToJsonLd(videoFormat),
      });
}
