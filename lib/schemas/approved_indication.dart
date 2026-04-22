// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_indication.dart';

/// An indication for a medical therapy that has been formally specified or
/// approved by a regulatory body that regulates use of the therapy; for
/// example, the US FDA approves indications for most drugs in the US.
/// See https://schema.org/ApprovedIndication
class SchemaApprovedIndication extends SchemaMedicalIndication {
  /// Create a new instance of [SchemaApprovedIndication]
  SchemaApprovedIndication({
    super.additionalType,
    super.alternateName,
    super.code,
    super.description,
    super.disambiguatingDescription,
    super.funding,
    super.guideline,
    super.identifier,
    super.image,
    super.legalStatus,
    super.mainEntityOfPage,
    super.medicineSystem,
    super.name,
    super.owner,
    super.potentialAction,
    super.recognizingAuthority,
    super.relevantSpecialty,
    super.sameAs,
    super.study,
    super.subjectOf,
    super.url,
  });

  /// Serialize [SchemaApprovedIndication] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ApprovedIndication',
      });
}
