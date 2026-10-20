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
import 'package:schema_org/schemas/bed_type.dart';

/// An entity holding detailed information about the available bed types,
/// e.g. the quantity of twin beds for a hotel room. For the single case of
/// just one bed of a certain type, you can use bed directly with a text. See
/// also [SchemaBedType] (under development).
/// See https://schema.org/BedDetails
class SchemaBedDetails extends SchemaIntangible {
  /// The quantity of the given bed type available in the HotelRoom, Suite,
  /// House, or Apartment.
  num? numberOfBeds;

  /// The type of bed to which the BedDetail refers, i.e. the type of bed
  /// available in the quantity indicated by quantity.
  ///
  /// Supported types: [SchemaBedType], [String]
  dynamic typeOfBed;

  /// Create a new instance of [SchemaBedDetails]
  SchemaBedDetails({
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
    this.numberOfBeds,
    this.typeOfBed,
  });

  /// Serialize [SchemaBedDetails] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'BedDetails',
        'numberOfBeds': convertToJsonLd(numberOfBeds),
        'typeOfBed': convertToJsonLd(
            typeOfBed, (v) => v is SchemaBedType || v is String),
      });
}
