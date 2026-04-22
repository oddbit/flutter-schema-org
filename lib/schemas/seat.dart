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
import 'package:schema_org/schemas/qualitative_value.dart';

/// Used to describe a seat, such as a reserved seat in an event reservation.
/// See https://schema.org/Seat
class SchemaSeat extends SchemaIntangible {
  /// The location of the reserved seat (e.g., 27).
  String? seatNumber;

  /// The row location of the reserved seat (e.g., B).
  String? seatRow;

  /// The section location of the reserved seat (e.g. Orchestra).
  String? seatSection;

  /// The type/class of the seat.
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic seatingType;

  /// Create a new instance of [SchemaSeat]
  SchemaSeat({
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
    this.seatNumber,
    this.seatRow,
    this.seatSection,
    this.seatingType,
  });

  /// Serialize [SchemaSeat] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Seat',
        'seatNumber': convertToJsonLd(seatNumber, [String]),
        'seatRow': convertToJsonLd(seatRow, [String]),
        'seatSection': convertToJsonLd(seatSection, [String]),
        'seatingType':
            convertToJsonLd(seatingType, [SchemaQualitativeValue, String]),
      });
}
