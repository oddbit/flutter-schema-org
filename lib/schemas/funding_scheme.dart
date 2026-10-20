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

/// A FundingScheme combines organizational, project and policy aspects of
/// grant-based funding that sets guidelines, principles and mechanisms to
/// support other kinds of projects and activities. Funding is typically
/// organized via [SchemaGrant] funding. Examples of funding schemes: Swiss
/// Priority Programmes (SPPs); EU Framework 7 (FP7); Horizon 2020; the
/// NIH-R01 Grant Program; Wellcome institutional strategic support fund. For
/// large scale public sector funding, the management and administration of
/// grant awards is often handled by other, dedicated, organizations -
/// [SchemaFundingAgency]s such as ERC, REA, ...
/// See https://schema.org/FundingScheme
class SchemaFundingScheme extends SchemaOrganization {
  /// Create a new instance of [SchemaFundingScheme]
  SchemaFundingScheme({
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
  });

  /// Serialize [SchemaFundingScheme] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'FundingScheme',
      });
}
