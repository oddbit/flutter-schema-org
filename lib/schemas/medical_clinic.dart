// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_business.dart';
import 'package:schema_org/schemas/medical_organization.dart';
import 'package:schema_org/schemas/medical_procedure.dart';
import 'package:schema_org/schemas/medical_test.dart';
import 'package:schema_org/schemas/medical_therapy.dart';
import 'package:schema_org/schemas/medical_specialty.dart';

/// A facility, often associated with a hospital or medical school, that is
/// devoted to the specific diagnosis and/or healthcare. Previously limited
/// to outpatients but with evolution it may be open to inpatients as well.
/// See https://schema.org/MedicalClinic
class SchemaMedicalClinic extends SchemaMedicalBusiness
    implements SchemaMedicalOrganization {
  /// A medical service available from this provider.
  ///
  /// Supported types: [SchemaMedicalProcedure], [SchemaMedicalTest],
  /// [SchemaMedicalTherapy]
  dynamic availableService;

  /// A medical specialty of the provider.
  @override
  SchemaMedicalSpecialty? medicalSpecialty;

  /// Name or unique ID of network. (Networks are often reused across different
  /// insurance plans.)
  @override
  String? healthPlanNetworkId;

  /// Whether the provider is accepting new patients.
  @override
  bool? isAcceptingNewPatients;

  /// Create a new instance of [SchemaMedicalClinic]
  SchemaMedicalClinic({
    super.acceptedPaymentMethod,
    super.actionableFeedbackPolicy,
    super.additionalProperty,
    super.additionalType,
    super.address,
    super.agentInteractionStatistic,
    super.aggregateRating,
    super.alternateName,
    super.alumni,
    super.amenityFeature,
    super.areaServed,
    super.award,
    super.awards,
    super.branchCode,
    super.branchOf,
    super.brand,
    super.companyRegistration,
    super.contactPoint,
    super.contactPoints,
    super.containedIn,
    super.containedInPlace,
    super.containsPlace,
    super.correctionsPolicy,
    super.currenciesAccepted,
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
    super.floorLevel,
    super.founder,
    super.founders,
    super.foundingDate,
    super.foundingLocation,
    super.funder,
    super.funding,
    super.geo,
    super.geoContains,
    super.geoCoveredBy,
    super.geoCovers,
    super.geoCrosses,
    super.geoDisjoint,
    super.geoEquals,
    super.geoIntersects,
    super.geoOverlaps,
    super.geoTouches,
    super.geoWithin,
    super.globalLocationNumber,
    super.hasCertification,
    super.hasCredential,
    super.hasDriveThroughService,
    super.hasGS1DigitalLink,
    super.hasMap,
    super.hasMemberProgram,
    super.hasMerchantReturnPolicy,
    super.hasOfferCatalog,
    super.hasPOS,
    super.hasShippingService,
    super.identifier,
    super.image,
    super.interactionStatistic,
    super.isAccessibleForFree,
    super.isicV4,
    super.iso6523Code,
    super.keywords,
    super.knowsAbout,
    super.knowsLanguage,
    super.latitude,
    super.legalAddress,
    super.legalName,
    super.legalRepresentative,
    super.leiCode,
    super.location,
    super.logo,
    super.longitude,
    super.mainEntityOfPage,
    super.makesOffer,
    super.map,
    super.maps,
    super.maximumAttendeeCapacity,
    super.member,
    super.memberOf,
    super.members,
    super.naics,
    super.name,
    super.nonprofitStatus,
    super.numberOfEmployees,
    super.openingHours,
    super.openingHoursSpecification,
    super.owner,
    super.ownershipFundingInfo,
    super.owns,
    super.parentOrganization,
    super.paymentAccepted,
    super.photo,
    super.photos,
    super.potentialAction,
    super.priceRange,
    super.publicAccess,
    super.publishingPrinciples,
    super.review,
    super.reviews,
    super.sameAs,
    super.seeks,
    super.serviceArea,
    super.skills,
    super.slogan,
    super.smokingAllowed,
    super.specialOpeningHoursSpecification,
    super.sponsor,
    super.subOrganization,
    super.subjectOf,
    super.taxID,
    super.telephone,
    super.tourBookingPage,
    super.unnamedSourcesPolicy,
    super.url,
    super.vatID,
    this.availableService,
    this.medicalSpecialty,
    this.healthPlanNetworkId,
    this.isAcceptingNewPatients,
  });

  /// Serialize [SchemaMedicalClinic] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalClinic',
        'availableService': convertToJsonLd(availableService,
            [SchemaMedicalProcedure, SchemaMedicalTest, SchemaMedicalTherapy]),
        'medicalSpecialty':
            convertToJsonLd(medicalSpecialty, [SchemaMedicalSpecialty]),
        'healthPlanNetworkId': convertToJsonLd(healthPlanNetworkId, [String]),
        'isAcceptingNewPatients':
            convertToJsonLd(isAcceptingNewPatients, [bool]),
      });
}
