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
import 'package:schema_org/schemas/creative_work.dart';

/// A News/Media organization such as a newspaper or TV station.
/// See https://schema.org/NewsMediaOrganization
class SchemaNewsMediaOrganization extends SchemaOrganization {
  /// For a [SchemaNewsMediaOrganization], a link to the masthead page or a
  /// page listing top editorial management.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic masthead;

  /// For a [SchemaNewsMediaOrganization], a statement on coverage priorities,
  /// including any public agenda or stance on issues.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic missionCoveragePrioritiesPolicy;

  /// For a [SchemaNewsMediaOrganization] or other news-related
  /// [SchemaOrganization], a statement explaining when authors of articles are
  /// not named in bylines.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic noBylinesPolicy;

  /// Disclosure about verification and fact-checking processes for a
  /// [SchemaNewsMediaOrganization] or other fact-checking
  /// [SchemaOrganization].
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic verificationFactCheckingPolicy;

  /// Create a new instance of [SchemaNewsMediaOrganization]
  SchemaNewsMediaOrganization({
    super.acceptedPaymentMethod,
    super.actionableFeedbackPolicy,
    super.additionalType,
    super.address,
    super.agentInteractionStatistic,
    super.aggregateRating,
    super.alternateName,
    super.alumni,
    super.areaServed,
    super.authorizedRepresentative,
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
    super.hasProductReturnPolicy,
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
    this.masthead,
    this.missionCoveragePrioritiesPolicy,
    this.noBylinesPolicy,
    this.verificationFactCheckingPolicy,
  });

  /// Serialize [SchemaNewsMediaOrganization] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'NewsMediaOrganization',
        'masthead': convertToJsonLd(
            masthead, (v) => v is SchemaCreativeWork || v is String),
        'missionCoveragePrioritiesPolicy': convertToJsonLd(
            missionCoveragePrioritiesPolicy,
            (v) => v is SchemaCreativeWork || v is String),
        'noBylinesPolicy': convertToJsonLd(
            noBylinesPolicy, (v) => v is SchemaCreativeWork || v is String),
        'verificationFactCheckingPolicy': convertToJsonLd(
            verificationFactCheckingPolicy,
            (v) => v is SchemaCreativeWork || v is String),
      });
}
