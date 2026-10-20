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
import 'package:schema_org/schemas/software_application.dart';
import 'package:schema_org/schemas/digital_platform_enumeration.dart';

/// An entry point, within some Web-based protocol.
/// See https://schema.org/EntryPoint
class SchemaEntryPoint extends SchemaIntangible {
  /// An application that can complete the request.
  SchemaSoftwareApplication? actionApplication;

  /// The high level platform(s) where the Action can be performed for the
  /// given URL. To specify a specific application or operating system
  /// instance, use actionApplication.
  ///
  /// Supported types: [SchemaDigitalPlatformEnumeration], [String]
  dynamic actionPlatform;

  /// An application that can complete the request.
  @Deprecated('Use [actionApplication]. See https://schema.org/application')
  SchemaSoftwareApplication? application;

  /// The supported content type(s) for an EntryPoint response.
  String? contentType;

  /// The supported encoding type(s) for an EntryPoint request.
  String? encodingType;

  /// An HTTP method that specifies the appropriate HTTP method for a request
  /// to an HTTP EntryPoint. Values are capitalized strings as used in HTTP.
  String? httpMethod;

  /// An url template (RFC6570) that will be used to construct the target of
  /// the execution of the action.
  String? urlTemplate;

  /// Create a new instance of [SchemaEntryPoint]
  SchemaEntryPoint({
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
    this.actionApplication,
    this.actionPlatform,
    this.application,
    this.contentType,
    this.encodingType,
    this.httpMethod,
    this.urlTemplate,
  });

  /// Serialize [SchemaEntryPoint] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EntryPoint',
        'actionApplication': convertToJsonLd(actionApplication),
        'actionPlatform': convertToJsonLd(actionPlatform,
            (v) => v is SchemaDigitalPlatformEnumeration || v is String),
        'application': convertToJsonLd(application),
        'contentType': convertToJsonLd(contentType),
        'encodingType': convertToJsonLd(encodingType),
        'httpMethod': convertToJsonLd(httpMethod),
        'urlTemplate': convertToJsonLd(urlTemplate),
      });
}
