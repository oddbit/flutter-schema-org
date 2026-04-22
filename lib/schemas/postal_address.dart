// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/country.dart';
import 'package:schema_org/schemas/administrative_area.dart';

/// The mailing address.
/// See https://schema.org/PostalAddress
class SchemaPostalAddress extends SchemaContactPoint {
  /// //en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or
  /// a full country name such as "Singapore" can also be used.
  ///
  /// Supported types: [SchemaCountry], [String]
  dynamic addressCountry;

  /// The locality in which the street address is, and which is in the region.
  /// For example, Mountain View.
  String? addressLocality;

  /// //en.wikipedia.org/wiki/List_of_administrative_divisions_by_country) such
  /// as the Province in Italy or Region in Germany.
  ///
  /// Supported types: [SchemaAdministrativeArea], [String]
  dynamic addressRegion;

  /// An address extension such as an apartment number, C/O or alternative
  /// name.
  String? extendedAddress;

  /// The post office box number for PO box addresses.
  String? postOfficeBoxNumber;

  /// The postal code. For example, 94043.
  String? postalCode;

  /// The street address. For example, 1600 Amphitheatre Pkwy.
  String? streetAddress;

  /// Create a new instance of [SchemaPostalAddress]
  SchemaPostalAddress({
    super.additionalType,
    super.alternateName,
    super.areaServed,
    super.availableLanguage,
    super.contactOption,
    super.contactType,
    super.description,
    super.disambiguatingDescription,
    super.email,
    super.faxNumber,
    super.hoursAvailable,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.productSupported,
    super.sameAs,
    super.serviceArea,
    super.subjectOf,
    super.telephone,
    super.url,
    this.addressCountry,
    this.addressLocality,
    this.addressRegion,
    this.extendedAddress,
    this.postOfficeBoxNumber,
    this.postalCode,
    this.streetAddress,
  });

  /// Serialize [SchemaPostalAddress] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'PostalAddress',
        'addressCountry':
            convertToJsonLd(addressCountry, [SchemaCountry, String]),
        'addressLocality': convertToJsonLd(addressLocality, [String]),
        'addressRegion':
            convertToJsonLd(addressRegion, [SchemaAdministrativeArea, String]),
        'extendedAddress': convertToJsonLd(extendedAddress, [String]),
        'postOfficeBoxNumber': convertToJsonLd(postOfficeBoxNumber, [String]),
        'postalCode': convertToJsonLd(postalCode, [String]),
        'streetAddress': convertToJsonLd(streetAddress, [String]),
      });
}
