// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/contact_point_option.dart';
import 'package:schema_org/schemas/opening_hours_specification.dart';
import 'package:schema_org/schemas/product.dart';

/// A contact point&#x2014;for example, a Customer Complaints department.
/// See https://schema.org/ContactPoint
class SchemaContactPoint extends SchemaStructuredValue {
  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  dynamic areaServed;

  /// A language someone may use with or at the item, service or place. Please
  /// use one of the language codes from the [IETF BCP 47
  /// standard](http://tools.ietf.org/html/bcp47). See also [SchemainLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic availableLanguage;

  /// An option available on this contact point (e.g. a toll-free number or
  /// support for hearing-impaired callers).
  SchemaContactPointOption? contactOption;

  /// A person or organization can have different contact points, for different
  /// purposes. For example, a sales contact point, a PR contact point and so
  /// on. This property is used to specify the kind of contact point.
  String? contactType;

  /// Email address.
  String? email;

  /// The fax number.
  String? faxNumber;

  /// The hours during which this service or contact is available.
  SchemaOpeningHoursSpecification? hoursAvailable;

  /// The product or service this support contact point is related to (such as
  /// product support for a particular product line). This can be a specific
  /// product or product line (e.g. "iPhone") or a general category of products
  /// or services (e.g. "smartphones").
  ///
  /// Supported types: [SchemaProduct], [String]
  dynamic productSupported;

  /// The geographic area where the service is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace]
  @Deprecated('Use [areaServed]. See https://schema.org/serviceArea')
  dynamic serviceArea;

  /// The telephone number.
  String? telephone;

  /// Create a new instance of [SchemaContactPoint]
  SchemaContactPoint({
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
    this.areaServed,
    this.availableLanguage,
    this.contactOption,
    this.contactType,
    this.email,
    this.faxNumber,
    this.hoursAvailable,
    this.productSupported,
    this.serviceArea,
    this.telephone,
  });

  /// Serialize [SchemaContactPoint] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ContactPoint',
        'areaServed': convertToJsonLd(
            areaServed,
            (v) =>
                v is SchemaAdministrativeArea ||
                v is SchemaGeoShape ||
                v is SchemaPlace ||
                v is String),
        'availableLanguage': convertToJsonLd(
            availableLanguage, (v) => v is SchemaLanguage || v is String),
        'contactOption': convertToJsonLd(contactOption),
        'contactType': convertToJsonLd(contactType),
        'email': convertToJsonLd(email),
        'faxNumber': convertToJsonLd(faxNumber),
        'hoursAvailable': convertToJsonLd(hoursAvailable),
        'productSupported': convertToJsonLd(
            productSupported, (v) => v is SchemaProduct || v is String),
        'serviceArea': convertToJsonLd(
            serviceArea,
            (v) =>
                v is SchemaAdministrativeArea ||
                v is SchemaGeoShape ||
                v is SchemaPlace),
        'telephone': convertToJsonLd(telephone),
      });
}
