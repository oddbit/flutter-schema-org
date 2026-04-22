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

/// An online or virtual location for attending events. For example, one may
/// attend an online seminar or educational event. While a virtual location
/// may be used as the location of an event, virtual locations should not be
/// confused with physical locations in the real world.
/// See https://schema.org/VirtualLocation
class SchemaVirtualLocation extends SchemaIntangible {
  /// Create a new instance of [SchemaVirtualLocation]
  SchemaVirtualLocation({
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
  });

  /// Serialize [SchemaVirtualLocation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'VirtualLocation',
      });
}
