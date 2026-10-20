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
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/postal_address.dart';

/// A means for accessing a service, e.g. a government office location, web
/// site, or phone number.
/// See https://schema.org/ServiceChannel
class SchemaServiceChannel extends SchemaIntangible {
  /// A language someone may use with or at the item, service or place. Please
  /// use one of the language codes from the [IETF BCP 47
  /// standard](http://tools.ietf.org/html/bcp47). See also [SchemainLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic availableLanguage;

  /// Estimated processing time for the service using this channel.
  SchemaDuration? processingTime;

  /// The service provided by this channel.
  SchemaService? providesService;

  /// The location (e.g. civic structure, local business, etc.) where a person
  /// can go to access the service.
  SchemaPlace? serviceLocation;

  /// The phone number to use to access the service.
  SchemaContactPoint? servicePhone;

  /// The address for accessing the service by mail.
  SchemaPostalAddress? servicePostalAddress;

  /// The number to access the service by text message.
  SchemaContactPoint? serviceSmsNumber;

  /// The website to access the service.
  String? serviceUrl;

  /// Create a new instance of [SchemaServiceChannel]
  SchemaServiceChannel({
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
    this.availableLanguage,
    this.processingTime,
    this.providesService,
    this.serviceLocation,
    this.servicePhone,
    this.servicePostalAddress,
    this.serviceSmsNumber,
    this.serviceUrl,
  });

  /// Serialize [SchemaServiceChannel] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ServiceChannel',
        'availableLanguage': convertToJsonLd(
            availableLanguage, (v) => v is SchemaLanguage || v is String),
        'processingTime': convertToJsonLd(processingTime),
        'providesService': convertToJsonLd(providesService),
        'serviceLocation': convertToJsonLd(serviceLocation),
        'servicePhone': convertToJsonLd(servicePhone),
        'servicePostalAddress': convertToJsonLd(servicePostalAddress),
        'serviceSmsNumber': convertToJsonLd(serviceSmsNumber),
        'serviceUrl': convertToJsonLd(serviceUrl),
      });
}
