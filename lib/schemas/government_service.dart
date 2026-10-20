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
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/organization.dart';

/// A service provided by a government organization, e.g. food stamps,
/// veterans benefits, etc.
/// See https://schema.org/GovernmentService
class SchemaGovernmentService extends SchemaService {
  /// Indicates a legal jurisdiction, e.g. of some legislation, or where some
  /// government service is based.
  ///
  /// Supported types: [SchemaAdministrativeArea], [String]
  dynamic jurisdiction;

  /// The operating organization, if different from the provider. This enables
  /// the representation of services that are provided by an organization, but
  /// operated by another organization like a subcontractor.
  SchemaOrganization? serviceOperator;

  /// Create a new instance of [SchemaGovernmentService]
  SchemaGovernmentService({
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
    this.jurisdiction,
    this.serviceOperator,
  });

  /// Serialize [SchemaGovernmentService] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'GovernmentService',
        'jurisdiction': convertToJsonLd(
            jurisdiction, (v) => v is SchemaAdministrativeArea || v is String),
        'serviceOperator': convertToJsonLd(serviceOperator),
      });
}
