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
import 'package:schema_org/schemas/creative_work.dart';

/// An application programming interface accessible over Web/Internet
/// technologies.
/// See https://schema.org/WebAPI
class SchemaWebAPI extends SchemaService {
  /// Further documentation describing the Web API in more detail.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic documentation;

  /// Create a new instance of [SchemaWebAPI]
  SchemaWebAPI({
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
    this.documentation,
  });

  /// Serialize [SchemaWebAPI] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'WebAPI',
        'documentation':
            convertToJsonLd(documentation, [SchemaCreativeWork, String]),
      });
}
