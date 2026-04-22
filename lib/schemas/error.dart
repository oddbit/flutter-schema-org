// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/instantaneous_event.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/status_enumeration.dart';

/// Representation of an Error.
/// See https://schema.org/Error
class SchemaError extends SchemaInstantaneousEvent {
  /// Application or platform dependant error code.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaStatusEnumeration],
  /// [String], [int]
  dynamic errorCode;

  /// Create a new instance of [SchemaError]
  SchemaError({
    super.additionalType,
    super.alternateName,
    super.data,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.source,
    super.subjectOf,
    super.timestamp,
    super.url,
    this.errorCode,
  });

  /// Serialize [SchemaError] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Error',
        'errorCode': convertToJsonLd(errorCode,
            [SchemaDefinedTerm, SchemaStatusEnumeration, String, int]),
      });
}
