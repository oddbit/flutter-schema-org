// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/trade_action.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/real_estate_agent.dart';

/// The act of giving money in return for temporary use, but not ownership,
/// of an object such as a vehicle or property. For example, an agent rents a
/// property from a landlord in exchange for a periodic payment.
/// See https://schema.org/RentAction
class SchemaRentAction extends SchemaTradeAction {
  /// A sub property of participant. The owner of the real estate property.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic landlord;

  /// A sub property of participant. The real estate agent involved in the
  /// action.
  SchemaRealEstateAgent? realEstateAgent;

  /// Create a new instance of [SchemaRentAction]
  SchemaRentAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.identifier,
    super.image,
    super.instrument,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.price,
    super.priceCurrency,
    super.priceSpecification,
    super.provider,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
    this.landlord,
    this.realEstateAgent,
  });

  /// Serialize [SchemaRentAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'RentAction',
        'landlord':
            convertToJsonLd(landlord, [SchemaOrganization, SchemaPerson]),
        'realEstateAgent':
            convertToJsonLd(realEstateAgent, [SchemaRealEstateAgent]),
      });
}
