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
import 'package:schema_org/schemas/drug_strength.dart';
import 'package:schema_org/schemas/dose_schedule.dart';
import 'package:schema_org/schemas/drug_class.dart';
import 'package:schema_org/schemas/health_insurance_plan.dart';
import 'package:schema_org/schemas/drug_legal_status.dart';
import 'package:schema_org/schemas/medical_enumeration.dart';
import 'package:schema_org/schemas/maximum_dose_schedule.dart';
import 'package:schema_org/schemas/drug_pregnancy_category.dart';
import 'package:schema_org/schemas/drug_prescription_status.dart';
import 'package:schema_org/schemas/medical_code.dart';
import 'package:schema_org/schemas/medical_guideline.dart';
import 'package:schema_org/schemas/medicine_system.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/medical_specialty.dart';
import 'package:schema_org/schemas/medical_study.dart';

/// A chemical or biologic substance, used as a medical therapy, that has a
/// physiological effect on an organism. Here the term drug is used
/// interchangeably with the term medicine although clinical knowledge makes
/// a clear difference between them.
/// See https://schema.org/Drug
class SchemaDrug extends SchemaProduct implements SchemaSubstance {
  /// An active ingredient, typically chemical compounds and/or biologic
  /// substances.
  @override
  String? activeIngredient;

  /// A route by which this drug may be administered, e.g. 'oral'.
  String? administrationRoute;

  /// Any precaution, guidance, contraindication, etc. related to consumption
  /// of alcohol while taking this drug.
  String? alcoholWarning;

  /// An available dosage strength for the drug.
  SchemaDrugStrength? availableStrength;

  /// Any precaution, guidance, contraindication, etc. related to this drug's
  /// use by breastfeeding mothers.
  String? breastfeedingWarning;

  /// Description of the absorption and elimination of drugs, including their
  /// concentration (pharmacokinetics, pK) and biological effects
  /// (pharmacodynamics, pD).
  @Deprecated(
      'Use [clinicalPharmacology]. See https://schema.org/clincalPharmacology')
  String? clincalPharmacology;

  /// Description of the absorption and elimination of drugs, including their
  /// concentration (pharmacokinetics, pK) and biological effects
  /// (pharmacodynamics, pD).
  String? clinicalPharmacology;

  /// A dosage form in which this drug/supplement is available, e.g. 'tablet',
  /// 'suspension', 'injection'.
  String? dosageForm;

  /// A dosing schedule for the drug for a given population, either observed,
  /// recommended, or maximum dose based on the type used.
  SchemaDoseSchedule? doseSchedule;

  /// The class of drug this belongs to (e.g., statins).
  SchemaDrugClass? drugClass;

  /// The unit in which the drug is measured, e.g. '5 mg tablet'.
  String? drugUnit;

  /// Any precaution, guidance, contraindication, etc. related to consumption
  /// of specific foods while taking this drug.
  String? foodWarning;

  /// The insurance plans that cover this drug.
  SchemaHealthInsurancePlan? includedInHealthInsurancePlan;

  /// disease interactions are typically captured as contraindications.
  SchemaDrug? interactingDrug;

  /// True if the drug is available in a generic form (regardless of name).
  bool? isAvailableGenerically;

  /// True if this item's name is a proprietary/brand name (vs. generic name).
  bool? isProprietary;

  /// Link to the drug's label details.
  String? labelDetails;

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

  /// Any information related to overdose on a drug, including signs or
  /// symptoms, treatments, contact information for emergency response.
  String? overdosage;

  /// Pregnancy category of this drug.
  SchemaDrugPregnancyCategory? pregnancyCategory;

  /// Any precaution, guidance, contraindication, etc. related to this drug's
  /// use during pregnancy.
  String? pregnancyWarning;

  /// Link to prescribing information for the drug.
  String? prescribingInfo;

  /// Indicates the status of drug prescription, e.g. local catalogs
  /// classifications or whether the drug is available by prescription or
  /// over-the-counter, etc.
  ///
  /// Supported types: [SchemaDrugPrescriptionStatus], [String]
  dynamic prescriptionStatus;

  /// Proprietary name given to the diet plan, typically by its originator or
  /// creator.
  String? proprietaryName;

  /// Any other drug related to this one, for example commonly-prescribed
  /// alternatives.
  SchemaDrug? relatedDrug;

  /// The RxCUI drug identifier from RXNORM.
  String? rxcui;

  /// Any FDA or other warnings about the drug (text or URL).
  String? warning;

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

  /// Create a new instance of [SchemaDrug]
  SchemaDrug({
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
    this.administrationRoute,
    this.alcoholWarning,
    this.availableStrength,
    this.breastfeedingWarning,
    this.clincalPharmacology,
    this.clinicalPharmacology,
    this.dosageForm,
    this.doseSchedule,
    this.drugClass,
    this.drugUnit,
    this.foodWarning,
    this.includedInHealthInsurancePlan,
    this.interactingDrug,
    this.isAvailableGenerically,
    this.isProprietary,
    this.labelDetails,
    this.legalStatus,
    this.maximumIntake,
    this.mechanismOfAction,
    this.nonProprietaryName,
    this.overdosage,
    this.pregnancyCategory,
    this.pregnancyWarning,
    this.prescribingInfo,
    this.prescriptionStatus,
    this.proprietaryName,
    this.relatedDrug,
    this.rxcui,
    this.warning,
    this.code,
    this.guideline,
    this.medicineSystem,
    this.recognizingAuthority,
    this.relevantSpecialty,
    this.study,
  });

  /// Serialize [SchemaDrug] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Drug',
        'activeIngredient': convertToJsonLd(activeIngredient, [String]),
        'administrationRoute': convertToJsonLd(administrationRoute, [String]),
        'alcoholWarning': convertToJsonLd(alcoholWarning, [String]),
        'availableStrength':
            convertToJsonLd(availableStrength, [SchemaDrugStrength]),
        'breastfeedingWarning': convertToJsonLd(breastfeedingWarning, [String]),
        'clincalPharmacology': convertToJsonLd(clincalPharmacology, [String]),
        'clinicalPharmacology': convertToJsonLd(clinicalPharmacology, [String]),
        'dosageForm': convertToJsonLd(dosageForm, [String]),
        'doseSchedule': convertToJsonLd(doseSchedule, [SchemaDoseSchedule]),
        'drugClass': convertToJsonLd(drugClass, [SchemaDrugClass]),
        'drugUnit': convertToJsonLd(drugUnit, [String]),
        'foodWarning': convertToJsonLd(foodWarning, [String]),
        'includedInHealthInsurancePlan': convertToJsonLd(
            includedInHealthInsurancePlan, [SchemaHealthInsurancePlan]),
        'interactingDrug': convertToJsonLd(interactingDrug, [SchemaDrug]),
        'isAvailableGenerically':
            convertToJsonLd(isAvailableGenerically, [bool]),
        'isProprietary': convertToJsonLd(isProprietary, [bool]),
        'labelDetails': convertToJsonLd(labelDetails, [String]),
        'legalStatus': convertToJsonLd(legalStatus,
            [SchemaDrugLegalStatus, SchemaMedicalEnumeration, String]),
        'maximumIntake':
            convertToJsonLd(maximumIntake, [SchemaMaximumDoseSchedule]),
        'mechanismOfAction': convertToJsonLd(mechanismOfAction, [String]),
        'nonProprietaryName': convertToJsonLd(nonProprietaryName, [String]),
        'overdosage': convertToJsonLd(overdosage, [String]),
        'pregnancyCategory':
            convertToJsonLd(pregnancyCategory, [SchemaDrugPregnancyCategory]),
        'pregnancyWarning': convertToJsonLd(pregnancyWarning, [String]),
        'prescribingInfo': convertToJsonLd(prescribingInfo, [String]),
        'prescriptionStatus': convertToJsonLd(
            prescriptionStatus, [SchemaDrugPrescriptionStatus, String]),
        'proprietaryName': convertToJsonLd(proprietaryName, [String]),
        'relatedDrug': convertToJsonLd(relatedDrug, [SchemaDrug]),
        'rxcui': convertToJsonLd(rxcui, [String]),
        'warning': convertToJsonLd(warning, [String]),
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
