// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_entity.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/drug_cost_category.dart';
import 'package:schema_org/schemas/qualitative_value.dart';

/// The cost per unit of a medical drug. Note that this type is not meant to
/// represent the price in an offer of a drug for sale; see the Offer type
/// for that. This type will typically be used to tag wholesale or average
/// retail cost of a drug, or maximum reimbursable cost. Costs of medical
/// drugs vary widely depending on how and where they are paid for, so while
/// this type captures some of the variables, costs should be used with
/// caution by consumers of this schema's markup.
/// See https://schema.org/DrugCost
class SchemaDrugCost extends SchemaMedicalEntity {
  /// The location in which the status applies.
  SchemaAdministrativeArea? applicableLocation;

  /// The category of cost, such as wholesale, retail, reimbursement cap, etc.
  SchemaDrugCostCategory? costCategory;

  /// The currency (in 3-letter) of the drug cost. See:
  /// http://en.wikipedia.org/wiki/ISO_4217.
  String? costCurrency;

  /// Additional details to capture the origin of the cost data. For example,
  /// 'Medicare Part B'.
  String? costOrigin;

  /// The cost per unit of the drug.
  ///
  /// Supported types: [SchemaQualitativeValue], [String], [num]
  dynamic costPerUnit;

  /// The unit in which the drug is measured, e.g. '5 mg tablet'.
  String? drugUnit;

  /// Create a new instance of [SchemaDrugCost]
  SchemaDrugCost({
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
    this.applicableLocation,
    this.costCategory,
    this.costCurrency,
    this.costOrigin,
    this.costPerUnit,
    this.drugUnit,
  });

  /// Serialize [SchemaDrugCost] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DrugCost',
        'applicableLocation': convertToJsonLd(applicableLocation),
        'costCategory': convertToJsonLd(costCategory),
        'costCurrency': convertToJsonLd(costCurrency),
        'costOrigin': convertToJsonLd(costOrigin),
        'costPerUnit': convertToJsonLd(costPerUnit,
            (v) => v is SchemaQualitativeValue || v is String || v is num),
        'drugUnit': convertToJsonLd(drugUnit),
      });
}
