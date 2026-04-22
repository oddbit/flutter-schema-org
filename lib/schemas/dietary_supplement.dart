// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/substance.dart';
import 'package:schema_org/schemas/drug_legal_status.dart';
import 'package:schema_org/schemas/medical_enumeration.dart';
import 'package:schema_org/schemas/maximum_dose_schedule.dart';
import 'package:schema_org/schemas/recommended_dose_schedule.dart';
import 'package:schema_org/schemas/medical_code.dart';
import 'package:schema_org/schemas/medical_guideline.dart';
import 'package:schema_org/schemas/medicine_system.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/medical_specialty.dart';
import 'package:schema_org/schemas/medical_study.dart';

/// A product taken by mouth that contains a dietary ingredient intended to
/// supplement the diet. Dietary ingredients may include vitamins, minerals,
/// herbs or other botanicals, amino acids, and substances such as enzymes,
/// organ tissues, glandulars and metabolites.
/// See https://schema.org/DietarySupplement
class SchemaDietarySupplement extends SchemaProduct implements SchemaSubstance {
  /// An active ingredient, typically chemical compounds and/or biologic
  /// substances.
  @override
  String? activeIngredient;

  /// True if this item's name is a proprietary/brand name (vs. generic name).
  bool? isProprietary;

  /// The drug or supplement's legal status, including any controlled substance
  /// schedules that apply.
  ///
  /// Supported types: [SchemaDrugLegalStatus], [SchemaMedicalEnumeration],
  /// [String]
  @override
  dynamic legalStatus;

  /// Recommended intake of this supplement for a given population as defined
  /// by a specific recommending authority.
  @override
  SchemaMaximumDoseSchedule? maximumIntake;

  /// The specific biochemical interaction through which this drug or
  /// supplement produces its pharmacological effect.
  String? mechanismOfAction;

  /// The generic name of this drug or supplement.
  String? nonProprietaryName;

  /// Proprietary name given to the diet plan, typically by its originator or
  /// creator.
  String? proprietaryName;

  /// Recommended intake of this supplement for a given population as defined
  /// by a specific recommending authority.
  SchemaRecommendedDoseSchedule? recommendedIntake;

  /// Any potential safety concern associated with the supplement. May include
  /// interactions with other drugs and foods, pregnancy, breastfeeding, known
  /// adverse reactions, and documented efficacy of the supplement.
  String? safetyConsideration;

  /// Characteristics of the population for which this is intended, or which
  /// typically uses it, e.g. 'adults'.
  String? targetPopulation;

  /// A medical code for the entity, taken from a controlled vocabulary or
  /// ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc.
  @override
  SchemaMedicalCode? code;

  /// A medical guideline related to this entity.
  @override
  SchemaMedicalGuideline? guideline;

  /// The system of medicine that includes this MedicalEntity, for example
  /// 'evidence-based', 'homeopathic', 'chiropractic', etc.
  @override
  SchemaMedicineSystem? medicineSystem;

  /// If applicable, the organization that officially recognizes this entity as
  /// part of its endorsed system of medicine.
  @override
  SchemaOrganization? recognizingAuthority;

  /// If applicable, a medical specialty in which this entity is relevant.
  @override
  SchemaMedicalSpecialty? relevantSpecialty;

  /// A medical study or trial related to this entity.
  @override
  SchemaMedicalStudy? study;

  /// Create a new instance of [SchemaDietarySupplement]
  SchemaDietarySupplement({
    super.additionalProperty,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.asin,
    super.audience,
    super.award,
    super.awards,
    super.brand,
    super.category,
    super.color,
    super.colorSwatch,
    super.countryOfAssembly,
    super.countryOfLastProcessing,
    super.countryOfOrigin,
    super.depth,
    super.description,
    super.disambiguatingDescription,
    super.displayLocation,
    super.funding,
    super.gtin,
    super.gtin12,
    super.gtin13,
    super.gtin14,
    super.gtin8,
    super.hasAdultConsideration,
    super.hasCertification,
    super.hasEnergyConsumptionDetails,
    super.hasGS1DigitalLink,
    super.hasMeasurement,
    super.hasMerchantReturnPolicy,
    super.height,
    super.identifier,
    super.image,
    super.inProductGroupWithID,
    super.isAccessoryOrSparePartFor,
    super.isConsumableFor,
    super.isFamilyFriendly,
    super.isRelatedTo,
    super.isSimilarTo,
    super.isVariantOf,
    super.itemCondition,
    super.keywords,
    super.logo,
    super.mainEntityOfPage,
    super.manufacturer,
    super.material,
    super.mobileUrl,
    super.model,
    super.mpn,
    super.name,
    super.negativeNotes,
    super.nsn,
    super.offers,
    super.owner,
    super.pattern,
    super.positiveNotes,
    super.potentialAction,
    super.productID,
    super.productionDate,
    super.purchaseDate,
    super.releaseDate,
    super.review,
    super.reviews,
    super.sameAs,
    super.size,
    super.sku,
    super.slogan,
    super.subjectOf,
    super.url,
    super.weight,
    super.width,
    this.activeIngredient,
    this.isProprietary,
    this.legalStatus,
    this.maximumIntake,
    this.mechanismOfAction,
    this.nonProprietaryName,
    this.proprietaryName,
    this.recommendedIntake,
    this.safetyConsideration,
    this.targetPopulation,
    this.code,
    this.guideline,
    this.medicineSystem,
    this.recognizingAuthority,
    this.relevantSpecialty,
    this.study,
  });

  /// Serialize [SchemaDietarySupplement] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'DietarySupplement',
        'activeIngredient': convertToJsonLd(activeIngredient, [String]),
        'isProprietary': convertToJsonLd(isProprietary, [bool]),
        'legalStatus': convertToJsonLd(legalStatus,
            [SchemaDrugLegalStatus, SchemaMedicalEnumeration, String]),
        'maximumIntake':
            convertToJsonLd(maximumIntake, [SchemaMaximumDoseSchedule]),
        'mechanismOfAction': convertToJsonLd(mechanismOfAction, [String]),
        'nonProprietaryName': convertToJsonLd(nonProprietaryName, [String]),
        'proprietaryName': convertToJsonLd(proprietaryName, [String]),
        'recommendedIntake':
            convertToJsonLd(recommendedIntake, [SchemaRecommendedDoseSchedule]),
        'safetyConsideration': convertToJsonLd(safetyConsideration, [String]),
        'targetPopulation': convertToJsonLd(targetPopulation, [String]),
        'code': convertToJsonLd(code, [SchemaMedicalCode]),
        'guideline': convertToJsonLd(guideline, [SchemaMedicalGuideline]),
        'medicineSystem':
            convertToJsonLd(medicineSystem, [SchemaMedicineSystem]),
        'recognizingAuthority':
            convertToJsonLd(recognizingAuthority, [SchemaOrganization]),
        'relevantSpecialty':
            convertToJsonLd(relevantSpecialty, [SchemaMedicalSpecialty]),
        'study': convertToJsonLd(study, [SchemaMedicalStudy]),
      });
}
