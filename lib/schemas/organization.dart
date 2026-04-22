// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/loan_or_credit.dart';
import 'package:schema_org/schemas/payment_method.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/interaction_counter.dart';
import 'package:schema_org/schemas/aggregate_rating.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/brand.dart';
import 'package:schema_org/schemas/certification.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/article.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/credential.dart';
import 'package:schema_org/schemas/member_program.dart';
import 'package:schema_org/schemas/merchant_return_policy.dart';
import 'package:schema_org/schemas/offer_catalog.dart';
import 'package:schema_org/schemas/shipping_service.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/virtual_location.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/member_program_tier.dart';
import 'package:schema_org/schemas/program_membership.dart';
import 'package:schema_org/schemas/nonprofit_type.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/about_page.dart';
import 'package:schema_org/schemas/review.dart';
import 'package:schema_org/schemas/demand.dart';

/// An organization such as a school, NGO, corporation, club, etc.
/// See https://schema.org/Organization
class SchemaOrganization extends SchemaThing {
  /// The payment method(s) that are accepted in general by an organization, or
  /// for some specific demand or offer.
  ///
  /// Supported types: [SchemaLoanOrCredit], [SchemaPaymentMethod], [String]
  dynamic acceptedPaymentMethod;

  /// For a [SchemaNewsMediaOrganization] or other news-related
  /// [SchemaOrganization], a statement about public engagement activities (for
  /// news media, the newsroom’s), including involving the public - digitally
  /// or otherwise -- in coverage decisions, reporting and activities after
  /// publication.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic actionableFeedbackPolicy;

  /// Physical address of the item.
  ///
  /// Supported types: [SchemaPostalAddress], [String]
  dynamic address;

  /// The number of completed interactions for this entity, in a particular
  /// role (the 'agent'), in a particular action (indicated in the statistic),
  /// and in a particular context (i.e. interactionService).
  SchemaInteractionCounter? agentInteractionStatistic;

  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

  /// Alumni of an organization.
  SchemaPerson? alumni;

  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  dynamic areaServed;

  /// An award won by or for this item.
  String? award;

  /// Awards won by or for this item.
  @Deprecated('Use [award]. See https://schema.org/awards')
  String? awards;

  /// The brand(s) associated with a product or service, or the brand(s)
  /// maintained by an organization or business person.
  ///
  /// Supported types: [SchemaBrand], [SchemaOrganization]
  dynamic brand;

  /// The official registration information of a business including the
  /// organization that issued it such as Company House or Chamber of Commerce
  /// in form of a Certification.
  SchemaCertification? companyRegistration;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoint;

  /// A contact point for a person or organization.
  @Deprecated('Use [contactPoint]. See https://schema.org/contactPoints')
  SchemaContactPoint? contactPoints;

  /// For an [SchemaOrganization] (e.g. [SchemaNewsMediaOrganization]), a
  /// statement describing (in news media, the newsroom’s) disclosure and
  /// correction policy for errors.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic correctionsPolicy;

  /// a store with a pharmacy, or a bakery with a cafe.
  SchemaOrganization? department;

  /// The date that this organization was dissolved.
  String? dissolutionDate;

  /// Statement on diversity policy by an [SchemaOrganization] e.g. a
  /// [SchemaNewsMediaOrganization]. For a [SchemaNewsMediaOrganization], a
  /// statement describing the newsroom’s diversity policy on both staffing and
  /// sources, typically providing staffing data.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic diversityPolicy;

  /// For an [SchemaOrganization] (often but not necessarily a
  /// [SchemaNewsMediaOrganization]), a report on staffing diversity issues. In
  /// a news context this might be for example ASNE or RTDNA (US) reports, or
  /// self-reported.
  ///
  /// Supported types: [SchemaArticle], [String]
  dynamic diversityStaffingReport;

  /// The Dun & Bradstreet DUNS number for identifying an organization or
  /// business person.
  String? duns;

  /// Email address.
  String? email;

  /// Someone working for this organization.
  SchemaPerson? employee;

  /// People working for this organization.
  @Deprecated('Use [employee]. See https://schema.org/employees')
  SchemaPerson? employees;

  /// Statement about ethics policy, e.g. of a [SchemaNewsMediaOrganization]
  /// regarding journalistic and publishing practices, or of a
  /// [SchemaRestaurant], a page describing food source policies. In the case
  /// of a [SchemaNewsMediaOrganization], an ethicsPolicy is typically a
  /// statement describing the personal, organizational, and corporate
  /// standards of behavior expected by the organization.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic ethicsPolicy;

  /// Upcoming or past event associated with this place, organization, or
  /// action.
  SchemaEvent? event;

  /// Upcoming or past events associated with this place or organization.
  @Deprecated('Use [event]. See https://schema.org/events')
  SchemaEvent? events;

  /// The fax number.
  String? faxNumber;

  /// A person or organization who founded this organization.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic founder;

  /// A person who founded this organization.
  @Deprecated('Use [founder]. See https://schema.org/founders')
  SchemaPerson? founders;

  /// The date that this organization was founded.
  String? foundingDate;

  /// The place where the Organization was founded.
  SchemaPlace? foundingLocation;

  /// A person or organization that supports (sponsors) something through some
  /// kind of financial contribution.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic funder;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// //www.gs1.org/gln) (GLN, sometimes also referred to as International
  /// Location Number or ILN) of the respective organization, person, or place.
  /// The GLN is a 13-digit number used to identify parties and physical
  /// locations.
  String? globalLocationNumber;

  /// Certification information about a product, organization, service, place,
  /// or person.
  SchemaCertification? hasCertification;

  /// A credential awarded to the Person or Organization.
  SchemaCredential? hasCredential;

  /// <ul><li>A Digital Link that contains a serial number (AI <code>21</code>)
  /// should only be present on instances of
  /// [SchemaIndividualProduct]</li><li>A Digital Link that contains a lot
  /// number (AI <code>10</code>) should be annotated as [SchemaSomeProducts]
  /// if only products from that lot are sold, or [SchemaIndividualProduct] if
  /// there is only a specific product.</li><li>A Digital Link that contains a
  /// global model number (AI <code>8013</code>) should be attached to a
  /// [SchemaProduct] or a [SchemaProductModel].</li></ul> Other item types
  /// should be adapted similarly.
  String? hasGS1DigitalLink;

  /// MemberProgram offered by an Organization, for example an eCommerce
  /// merchant or an airline.
  SchemaMemberProgram? hasMemberProgram;

  /// Specifies a MerchantReturnPolicy that may be applicable.
  SchemaMerchantReturnPolicy? hasMerchantReturnPolicy;

  /// Indicates an OfferCatalog listing for this Organization, Person, or
  /// Service.
  SchemaOfferCatalog? hasOfferCatalog;

  /// Points-of-Sales operated by the organization or person.
  SchemaPlace? hasPOS;

  /// Specification of a shipping service offered by the organization.
  SchemaShippingService? hasShippingService;

  /// The number of interactions for the CreativeWork using the WebSite or
  /// SoftwareApplication. The most specific child type of InteractionCounter
  /// should be used.
  SchemaInteractionCounter? interactionStatistic;

  /// The International Standard of Industrial Classification of All Economic
  /// Activities (ISIC), Revision 4 code for a particular organization,
  /// business person, or place.
  String? isicV4;

  /// //schema.org/taxID), as ISO identifiers are less ambiguous.
  String? iso6523Code;

  /// Keywords or tags used to describe some item. Multiple textual entries in
  /// a keywords list are typically delimited by commas, or by repeating the
  /// property.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic keywords;

  /// Of a [SchemaPerson], and less typically of an [SchemaOrganization], to
  /// indicate a topic that is known about - suggesting possible expertise but
  /// not implying it. We do not distinguish skill levels here, or relate this
  /// to educational content, events, objectives or [SchemaJobPosting]
  /// descriptions.
  ///
  /// Supported types: [String], [SchemaThing]
  dynamic knowsAbout;

  /// //tools.ietf.org/html/bcp47).
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic knowsLanguage;

  /// The legal address of an organization which acts as the officially
  /// registered address used for legal and tax purposes. The legal address can
  /// be different from the place of operations of a business and other
  /// addresses can be part of an organization.
  SchemaPostalAddress? legalAddress;

  /// The official name of the organization, e.g. the registered company name.
  String? legalName;

  /// One or multiple persons who represent this organization legally such as
  /// CEO or sole administrator.
  SchemaPerson? legalRepresentative;

  /// An organization identifier that uniquely identifies a legal entity as
  /// defined in ISO 17442.
  String? leiCode;

  /// The location of, for example, where an event is happening, where an
  /// organization is located, or where an action takes place.
  ///
  /// Supported types: [SchemaPlace], [SchemaPostalAddress], [String],
  /// [SchemaVirtualLocation]
  dynamic location;

  /// An associated logo.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic logo;

  /// A pointer to products or services offered by the organization or person.
  SchemaOffer? makesOffer;

  /// A member of an Organization or a ProgramMembership. Organizations can be
  /// members of organizations; ProgramMembership is typically for individuals.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic member;

  /// An Organization (or ProgramMembership) to which this Person or
  /// Organization belongs.
  ///
  /// Supported types: [SchemaMemberProgramTier], [SchemaOrganization],
  /// [SchemaProgramMembership]
  dynamic memberOf;

  /// A member of this organization.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @Deprecated('Use [member]. See https://schema.org/members')
  dynamic members;

  /// The North American Industry Classification System (NAICS) code for a
  /// particular organization or business person.
  String? naics;

  /// nonprofitStatus indicates the legal status of a non-profit organization
  /// in its primary place of business.
  SchemaNonprofitType? nonprofitStatus;

  /// The number of employees in an organization, e.g. business.
  SchemaQuantitativeValue? numberOfEmployees;

  /// For an [SchemaOrganization] (often but not necessarily a
  /// [SchemaNewsMediaOrganization]), a description of organizational ownership
  /// structure; funding and grants. In a news/media setting, this is with
  /// particular reference to editorial independence. Note that the
  /// [Schemafunder] is also available and can be used to make basic funder
  /// information machine-readable.
  ///
  /// Supported types: [SchemaAboutPage], [SchemaCreativeWork], [String]
  dynamic ownershipFundingInfo;

  /// Things owned by the organization or person.
  SchemaThing? owns;

  /// The larger organization that this organization is a
  /// [SchemasubOrganization] of, if any.
  SchemaOrganization? parentOrganization;

  /// The publishingPrinciples property indicates (typically via [SchemaURL]) a
  /// document describing the editorial principles of an [SchemaOrganization]
  /// (or individual, e.g. a [SchemaPerson] writing a blog) that relate to
  /// their activities as a publisher, e.g. ethics or diversity policies. When
  /// applied to a [SchemaCreativeWork] (e.g. [SchemaNewsArticle]) the
  /// principles are those of the party primarily responsible for the creation
  /// of the [SchemaCreativeWork].
  ///
  /// While such policies are most typically expressed in natural language,
  /// sometimes related information (e.g. indicating a [Schemafunder]) can be
  /// expressed using schema.org terminology.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic publishingPrinciples;

  /// A review of the item.
  SchemaReview? review;

  /// Review of the item.
  @Deprecated('Use [review]. See https://schema.org/reviews')
  SchemaReview? reviews;

  /// A pointer to products or services sought by the organization or person
  /// (demand).
  SchemaDemand? seeks;

  /// The geographic area where the service is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace]
  @Deprecated('Use [areaServed]. See https://schema.org/serviceArea')
  dynamic serviceArea;

  /// A statement of knowledge, skill, ability, task or any other assertion
  /// expressing a competency that is either claimed by a person, an
  /// organization or desired or required to fulfill a role or to work in an
  /// occupation.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic skills;

  /// A slogan or motto associated with the item.
  String? slogan;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

  /// the more specific 'department' property.
  SchemaOrganization? subOrganization;

  /// The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US
  /// or the CIF/NIF in Spain.
  String? taxID;

  /// The telephone number.
  String? telephone;

  /// For an [SchemaOrganization] (typically a [SchemaNewsMediaOrganization]),
  /// a statement about policy on use of unnamed sources and the decision
  /// process required.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic unnamedSourcesPolicy;

  /// The value-added Tax ID of the organization or person with national prefix
  /// (for example IT123456789). Can also be described as [Schemaiso6523Code]
  /// with proper prefix.
  String? vatID;

  /// Create a new instance of [SchemaOrganization]
  SchemaOrganization({
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
    this.acceptedPaymentMethod,
    this.actionableFeedbackPolicy,
    this.address,
    this.agentInteractionStatistic,
    this.aggregateRating,
    this.alumni,
    this.areaServed,
    this.award,
    this.awards,
    this.brand,
    this.companyRegistration,
    this.contactPoint,
    this.contactPoints,
    this.correctionsPolicy,
    this.department,
    this.dissolutionDate,
    this.diversityPolicy,
    this.diversityStaffingReport,
    this.duns,
    this.email,
    this.employee,
    this.employees,
    this.ethicsPolicy,
    this.event,
    this.events,
    this.faxNumber,
    this.founder,
    this.founders,
    this.foundingDate,
    this.foundingLocation,
    this.funder,
    this.funding,
    this.globalLocationNumber,
    this.hasCertification,
    this.hasCredential,
    this.hasGS1DigitalLink,
    this.hasMemberProgram,
    this.hasMerchantReturnPolicy,
    this.hasOfferCatalog,
    this.hasPOS,
    this.hasShippingService,
    this.interactionStatistic,
    this.isicV4,
    this.iso6523Code,
    this.keywords,
    this.knowsAbout,
    this.knowsLanguage,
    this.legalAddress,
    this.legalName,
    this.legalRepresentative,
    this.leiCode,
    this.location,
    this.logo,
    this.makesOffer,
    this.member,
    this.memberOf,
    this.members,
    this.naics,
    this.nonprofitStatus,
    this.numberOfEmployees,
    this.ownershipFundingInfo,
    this.owns,
    this.parentOrganization,
    this.publishingPrinciples,
    this.review,
    this.reviews,
    this.seeks,
    this.serviceArea,
    this.skills,
    this.slogan,
    this.sponsor,
    this.subOrganization,
    this.taxID,
    this.telephone,
    this.unnamedSourcesPolicy,
    this.vatID,
  });

  /// Serialize [SchemaOrganization] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Organization',
        'acceptedPaymentMethod': convertToJsonLd(acceptedPaymentMethod,
            [SchemaLoanOrCredit, SchemaPaymentMethod, String]),
        'actionableFeedbackPolicy': convertToJsonLd(
            actionableFeedbackPolicy, [SchemaCreativeWork, String]),
        'address': convertToJsonLd(address, [SchemaPostalAddress, String]),
        'agentInteractionStatistic': convertToJsonLd(
            agentInteractionStatistic, [SchemaInteractionCounter]),
        'aggregateRating':
            convertToJsonLd(aggregateRating, [SchemaAggregateRating]),
        'alumni': convertToJsonLd(alumni, [SchemaPerson]),
        'areaServed': convertToJsonLd(areaServed,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace, String]),
        'award': convertToJsonLd(award, [String]),
        'awards': convertToJsonLd(awards, [String]),
        'brand': convertToJsonLd(brand, [SchemaBrand, SchemaOrganization]),
        'companyRegistration':
            convertToJsonLd(companyRegistration, [SchemaCertification]),
        'contactPoint': convertToJsonLd(contactPoint, [SchemaContactPoint]),
        'contactPoints': convertToJsonLd(contactPoints, [SchemaContactPoint]),
        'correctionsPolicy':
            convertToJsonLd(correctionsPolicy, [SchemaCreativeWork, String]),
        'department': convertToJsonLd(department, [SchemaOrganization]),
        'dissolutionDate': convertToJsonLd(dissolutionDate, [String]),
        'diversityPolicy':
            convertToJsonLd(diversityPolicy, [SchemaCreativeWork, String]),
        'diversityStaffingReport':
            convertToJsonLd(diversityStaffingReport, [SchemaArticle, String]),
        'duns': convertToJsonLd(duns, [String]),
        'email': convertToJsonLd(email, [String]),
        'employee': convertToJsonLd(employee, [SchemaPerson]),
        'employees': convertToJsonLd(employees, [SchemaPerson]),
        'ethicsPolicy':
            convertToJsonLd(ethicsPolicy, [SchemaCreativeWork, String]),
        'event': convertToJsonLd(event, [SchemaEvent]),
        'events': convertToJsonLd(events, [SchemaEvent]),
        'faxNumber': convertToJsonLd(faxNumber, [String]),
        'founder': convertToJsonLd(founder, [SchemaOrganization, SchemaPerson]),
        'founders': convertToJsonLd(founders, [SchemaPerson]),
        'foundingDate': convertToJsonLd(foundingDate, [String]),
        'foundingLocation': convertToJsonLd(foundingLocation, [SchemaPlace]),
        'funder': convertToJsonLd(funder, [SchemaOrganization, SchemaPerson]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'globalLocationNumber': convertToJsonLd(globalLocationNumber, [String]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasCredential': convertToJsonLd(hasCredential, [SchemaCredential]),
        'hasGS1DigitalLink': convertToJsonLd(hasGS1DigitalLink, [String]),
        'hasMemberProgram':
            convertToJsonLd(hasMemberProgram, [SchemaMemberProgram]),
        'hasMerchantReturnPolicy': convertToJsonLd(
            hasMerchantReturnPolicy, [SchemaMerchantReturnPolicy]),
        'hasOfferCatalog':
            convertToJsonLd(hasOfferCatalog, [SchemaOfferCatalog]),
        'hasPOS': convertToJsonLd(hasPOS, [SchemaPlace]),
        'hasShippingService':
            convertToJsonLd(hasShippingService, [SchemaShippingService]),
        'interactionStatistic':
            convertToJsonLd(interactionStatistic, [SchemaInteractionCounter]),
        'isicV4': convertToJsonLd(isicV4, [String]),
        'iso6523Code': convertToJsonLd(iso6523Code, [String]),
        'keywords': convertToJsonLd(keywords, [SchemaDefinedTerm, String]),
        'knowsAbout': convertToJsonLd(knowsAbout, [String, SchemaThing]),
        'knowsLanguage':
            convertToJsonLd(knowsLanguage, [SchemaLanguage, String]),
        'legalAddress': convertToJsonLd(legalAddress, [SchemaPostalAddress]),
        'legalName': convertToJsonLd(legalName, [String]),
        'legalRepresentative':
            convertToJsonLd(legalRepresentative, [SchemaPerson]),
        'leiCode': convertToJsonLd(leiCode, [String]),
        'location': convertToJsonLd(location,
            [SchemaPlace, SchemaPostalAddress, String, SchemaVirtualLocation]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
        'makesOffer': convertToJsonLd(makesOffer, [SchemaOffer]),
        'member': convertToJsonLd(member, [SchemaOrganization, SchemaPerson]),
        'memberOf': convertToJsonLd(memberOf, [
          SchemaMemberProgramTier,
          SchemaOrganization,
          SchemaProgramMembership
        ]),
        'members': convertToJsonLd(members, [SchemaOrganization, SchemaPerson]),
        'naics': convertToJsonLd(naics, [String]),
        'nonprofitStatus':
            convertToJsonLd(nonprofitStatus, [SchemaNonprofitType]),
        'numberOfEmployees':
            convertToJsonLd(numberOfEmployees, [SchemaQuantitativeValue]),
        'ownershipFundingInfo': convertToJsonLd(ownershipFundingInfo,
            [SchemaAboutPage, SchemaCreativeWork, String]),
        'owns': convertToJsonLd(owns, [SchemaThing]),
        'parentOrganization':
            convertToJsonLd(parentOrganization, [SchemaOrganization]),
        'publishingPrinciples':
            convertToJsonLd(publishingPrinciples, [SchemaCreativeWork, String]),
        'review': convertToJsonLd(review, [SchemaReview]),
        'reviews': convertToJsonLd(reviews, [SchemaReview]),
        'seeks': convertToJsonLd(seeks, [SchemaDemand]),
        'serviceArea': convertToJsonLd(serviceArea,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace]),
        'skills': convertToJsonLd(skills, [SchemaDefinedTerm, String]),
        'slogan': convertToJsonLd(slogan, [String]),
        'sponsor': convertToJsonLd(sponsor, [SchemaOrganization, SchemaPerson]),
        'subOrganization':
            convertToJsonLd(subOrganization, [SchemaOrganization]),
        'taxID': convertToJsonLd(taxID, [String]),
        'telephone': convertToJsonLd(telephone, [String]),
        'unnamedSourcesPolicy':
            convertToJsonLd(unnamedSourcesPolicy, [SchemaCreativeWork, String]),
        'vatID': convertToJsonLd(vatID, [String]),
      });
}
