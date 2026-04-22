// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/how_to_item.dart';

/// A tool used (but not consumed) when performing instructions for how to
/// achieve a result.
/// See https://schema.org/HowToTool
class SchemaHowToTool extends SchemaHowToItem {
  /// Create a new instance of [SchemaHowToTool]
  SchemaHowToTool({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.item,
    super.mainEntityOfPage,
    super.name,
    super.nextItem,
    super.owner,
    super.position,
    super.potentialAction,
    super.previousItem,
    super.requiredQuantity,
    super.sameAs,
    super.subjectOf,
    super.url,
  });

  /// Serialize [SchemaHowToTool] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'HowToTool',
      });
}
