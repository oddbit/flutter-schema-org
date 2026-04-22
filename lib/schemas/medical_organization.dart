// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/medical_specialty.dart';

/// A medical organization (physical or not), such as hospital, institution
/// or clinic.
/// See https://schema.org/MedicalOrganization
class SchemaMedicalOrganization extends SchemaOrganization {
  /// Name or unique ID of network. (Networks are often reused across different
  /// insurance plans.)
  String? healthPlanNetworkId;

  /// Whether the provider is accepting new patients.
  bool? isAcceptingNewPatients;

  /// A medical specialty of the provider.
  SchemaMedicalSpecialty? medicalSpecialty;

  /// Create a new instance of [SchemaMedicalOrganization]
  SchemaMedicalOrganization({
    super.acceptedPaymentMethod,
    super.actionableFeedbackPolicy,
    super.additionalType,
    super.address,
    super.agentInteractionStatistic,
    super.aggregateRating,
    super.alternateName,
    super.alumni,
    super.areaServed,
    super.award,
    super.awards,
    super.brand,
    super.companyRegistration,
    super.contactPoint,
    super.contactPoints,
    super.correctionsPolicy,
    super.department,
    super.description,
    super.disambiguatingDescription,
    super.dissolutionDate,
    super.diversityPolicy,
    super.diversityStaffingReport,
    super.duns,
    super.email,
    super.employee,
    super.employees,
    super.ethicsPolicy,
    super.event,
    super.events,
    super.faxNumber,
    super.founder,
    super.founders,
    super.foundingDate,
    super.foundingLocation,
    super.funder,
    super.funding,
    super.globalLocationNumber,
    super.hasCertification,
    super.hasCredential,
    super.hasGS1DigitalLink,
    super.hasMemberProgram,
    super.hasMerchantReturnPolicy,
    super.hasOfferCatalog,
    super.hasPOS,
    super.hasShippingService,
    super.identifier,
    super.image,
    super.interactionStatistic,
    super.isicV4,
    super.iso6523Code,
    super.keywords,
    super.knowsAbout,
    super.knowsLanguage,
    super.legalAddress,
    super.legalName,
    super.legalRepresentative,
    super.leiCode,
    super.location,
    super.logo,
    super.mainEntityOfPage,
    super.makesOffer,
    super.member,
    super.memberOf,
    super.members,
    super.naics,
    super.name,
    super.nonprofitStatus,
    super.numberOfEmployees,
    super.owner,
    super.ownershipFundingInfo,
    super.owns,
    super.parentOrganization,
    super.potentialAction,
    super.publishingPrinciples,
    super.review,
    super.reviews,
    super.sameAs,
    super.seeks,
    super.serviceArea,
    super.skills,
    super.slogan,
    super.sponsor,
    super.subOrganization,
    super.subjectOf,
    super.taxID,
    super.telephone,
    super.unnamedSourcesPolicy,
    super.url,
    super.vatID,
    this.healthPlanNetworkId,
    this.isAcceptingNewPatients,
    this.medicalSpecialty,
  });

  /// Serialize [SchemaMedicalOrganization] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalOrganization',
        'healthPlanNetworkId': convertToJsonLd(healthPlanNetworkId, [String]),
        'isAcceptingNewPatients':
            convertToJsonLd(isAcceptingNewPatients, [bool]),
        'medicalSpecialty':
            convertToJsonLd(medicalSpecialty, [SchemaMedicalSpecialty]),
      });
}
