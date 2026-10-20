// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/civic_structure.dart';
import 'package:schema_org/schemas/entertainment_business.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/loan_or_credit.dart';
import 'package:schema_org/schemas/payment_method.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/interaction_counter.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/brand.dart';
import 'package:schema_org/schemas/certification.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/article.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/credential.dart';
import 'package:schema_org/schemas/member_program.dart';
import 'package:schema_org/schemas/merchant_return_policy.dart';
import 'package:schema_org/schemas/offer_catalog.dart';
import 'package:schema_org/schemas/product_return_policy.dart';
import 'package:schema_org/schemas/shipping_service.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/virtual_location.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/member_program_tier.dart';
import 'package:schema_org/schemas/program_membership.dart';
import 'package:schema_org/schemas/nonprofit_type.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/about_page.dart';
import 'package:schema_org/schemas/demand.dart';
import 'package:schema_org/schemas/defined_term.dart';

/// A movie theater.
/// See https://schema.org/MovieTheater
class SchemaMovieTheater extends SchemaCivicStructure
    implements SchemaEntertainmentBusiness {
  /// The number of screens in the movie theater.
  num? screenCount;

  /// The larger organization that this local business is a branch of, if any.
  /// Not to be confused with (anatomical) [Schemabranch].
  @override
  @Deprecated('Use [parentOrganization]. See https://schema.org/branchOf')
  SchemaOrganization? branchOf;

  /// The currency accepted.\n\nUse standard formats: [ISO 4217 currency
  /// format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR".
  @override
  String? currenciesAccepted;

  /// The floor level for an [SchemaAccommodation] in a multi-storey building.
  /// Since counting systems [vary
  /// internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations),
  /// the local system should be used where possible.
  @override
  String? floorLevel;

  /// Cash, Credit Card, Cryptocurrency, Local Exchange Tradings System, etc.
  @override
  String? paymentAccepted;

  /// The price range of the business, for example ```$$$```.
  @override
  String? priceRange;

  /// The payment method(s) that are accepted in general by an organization, or
  /// for some specific demand or offer.
  ///
  /// Supported types: [SchemaLoanOrCredit], [SchemaPaymentMethod], [String]
  @override
  dynamic acceptedPaymentMethod;

  /// For a [SchemaNewsMediaOrganization] or other news-related
  /// [SchemaOrganization], a statement about public engagement activities (for
  /// news media, the newsroom’s), including involving the public - digitally
  /// or otherwise -- in coverage decisions, reporting and activities after
  /// publication.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  @override
  dynamic actionableFeedbackPolicy;

  /// The number of completed interactions for this entity, in a particular
  /// role (the 'agent'), in a particular action (indicated in the statistic),
  /// and in a particular context (i.e. interactionService).
  @override
  SchemaInteractionCounter? agentInteractionStatistic;

  /// Alumni of an organization.
  @override
  SchemaPerson? alumni;

  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  @override
  dynamic areaServed;

  /// An organization or person officially appointed to act on behalf of the
  /// manufacturer in a specific region or context.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @override
  dynamic authorizedRepresentative;

  /// An award won by or for this item.
  @override
  String? award;

  /// Awards won by or for this item.
  @override
  @Deprecated('Use [award]. See https://schema.org/awards')
  String? awards;

  /// The brand(s) associated with a product or service, or the brand(s)
  /// maintained by an organization or business person.
  ///
  /// Supported types: [SchemaBrand], [SchemaOrganization]
  @override
  dynamic brand;

  /// The official registration information of a business including the
  /// organization that issued it such as Company House or Chamber of Commerce
  /// in form of a Certification.
  @override
  SchemaCertification? companyRegistration;

  /// A contact point for a person or organization.
  @override
  SchemaContactPoint? contactPoint;

  /// A contact point for a person or organization.
  @override
  @Deprecated('Use [contactPoint]. See https://schema.org/contactPoints')
  SchemaContactPoint? contactPoints;

  /// For an [SchemaOrganization] (e.g. [SchemaNewsMediaOrganization]), a
  /// statement describing (in news media, the newsroom’s) disclosure and
  /// correction policy for errors.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  @override
  dynamic correctionsPolicy;

  /// A relationship between an organization and a department of that
  /// organization, also described as an organization (allowing different urls,
  /// logos, opening hours). For example: a store with a pharmacy, or a bakery
  /// with a cafe.
  @override
  SchemaOrganization? department;

  /// The date that this organization was dissolved.
  @override
  String? dissolutionDate;

  /// Statement on diversity policy by an [SchemaOrganization] e.g. a
  /// [SchemaNewsMediaOrganization]. For a [SchemaNewsMediaOrganization], a
  /// statement describing the newsroom’s diversity policy on both staffing and
  /// sources, typically providing staffing data.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  @override
  dynamic diversityPolicy;

  /// For an [SchemaOrganization] (often but not necessarily a
  /// [SchemaNewsMediaOrganization]), a report on staffing diversity issues. In
  /// a news context this might be for example ASNE or RTDNA (US) reports, or
  /// self-reported.
  ///
  /// Supported types: [SchemaArticle], [String]
  @override
  dynamic diversityStaffingReport;

  /// The Dun & Bradstreet DUNS number for identifying an organization or
  /// business person.
  @override
  String? duns;

  /// Email address.
  @override
  String? email;

  /// Someone working for this organization.
  @override
  SchemaPerson? employee;

  /// People working for this organization.
  @override
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
  @override
  dynamic ethicsPolicy;

  /// A person or organization who founded this organization.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @override
  dynamic founder;

  /// A person who founded this organization.
  @override
  @Deprecated('Use [founder]. See https://schema.org/founders')
  SchemaPerson? founders;

  /// The date that this organization was founded.
  @override
  String? foundingDate;

  /// The place where the Organization was founded.
  @override
  SchemaPlace? foundingLocation;

  /// A person or organization that supports (sponsors) something through some
  /// kind of financial contribution.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @override
  dynamic funder;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  @override
  SchemaGrant? funding;

  /// A credential awarded to the Person or Organization.
  @override
  SchemaCredential? hasCredential;

  /// MemberProgram offered by an Organization, for example an eCommerce
  /// merchant or an airline.
  @override
  SchemaMemberProgram? hasMemberProgram;

  /// Specifies a MerchantReturnPolicy that may be applicable.
  @override
  SchemaMerchantReturnPolicy? hasMerchantReturnPolicy;

  /// Indicates an OfferCatalog listing for this Organization, Person, or
  /// Service.
  @override
  SchemaOfferCatalog? hasOfferCatalog;

  /// Points-of-Sales operated by the organization or person.
  @override
  SchemaPlace? hasPOS;

  /// Indicates a ProductReturnPolicy that may be applicable.
  @override
  @Deprecated(
      'Use [hasMerchantReturnPolicy]. See https://schema.org/hasProductReturnPolicy')
  SchemaProductReturnPolicy? hasProductReturnPolicy;

  /// Specification of a shipping service offered by the organization.
  @override
  SchemaShippingService? hasShippingService;

  /// The number of interactions for the CreativeWork using the WebSite or
  /// SoftwareApplication. The most specific child type of InteractionCounter
  /// should be used.
  @override
  SchemaInteractionCounter? interactionStatistic;

  /// An organization identifier as defined in [ISO
  /// 6523(-1)](https://en.wikipedia.org/wiki/ISO/IEC_6523). The identifier
  /// should be in the `XXXX:YYYYYY:ZZZ` or `XXXX:YYYYYY`format. Where `XXXX`
  /// is a 4 digit _ICD_ (International Code Designator), `YYYYYY` is an _OID_
  /// (Organization Identifier) with all formatting characters (dots, dashes,
  /// spaces) removed with a maximal length of 35 characters, and `ZZZ` is an
  /// optional OPI (Organization Part Identifier) with a maximum length of 35
  /// characters. The various components (ICD, OID, OPI) are joined with a
  /// colon character (ASCII `0x3a`). Note that many existing organization
  /// identifiers defined as attributes like
  /// [leiCode](https://schema.org/leiCode) (`0199`),
  /// [duns](https://schema.org/duns) (`0060`) or
  /// [GLN](https://schema.org/globalLocationNumber) (`0088`) can be expressed
  /// using ISO-6523. If possible, ISO-6523 codes should be preferred to
  /// populating [vatID](https://schema.org/vatID) or
  /// [taxID](https://schema.org/taxID), as ISO identifiers are less ambiguous.
  @override
  String? iso6523Code;

  /// Of a [SchemaPerson], and less typically of an [SchemaOrganization], to
  /// indicate a topic that is known about - suggesting possible expertise but
  /// not implying it. We do not distinguish skill levels here, or relate this
  /// to educational content, events, objectives or [SchemaJobPosting]
  /// descriptions.
  ///
  /// Supported types: [String], [SchemaThing]
  @override
  dynamic knowsAbout;

  /// Of a [SchemaPerson], and less typically of an [SchemaOrganization], to
  /// indicate a known language. We do not distinguish skill levels or
  /// reading/writing/speaking/signing here. Use language codes from the [IETF
  /// BCP 47 standard](http://tools.ietf.org/html/bcp47).
  ///
  /// Supported types: [SchemaLanguage], [String]
  @override
  dynamic knowsLanguage;

  /// The legal address of an organization which acts as the officially
  /// registered address used for legal and tax purposes. The legal address can
  /// be different from the place of operations of a business and other
  /// addresses can be part of an organization.
  @override
  SchemaPostalAddress? legalAddress;

  /// The official name of the organization, e.g. the registered company name.
  @override
  String? legalName;

  /// One or multiple persons who represent this organization legally such as
  /// CEO or sole administrator.
  @override
  SchemaPerson? legalRepresentative;

  /// An organization identifier that uniquely identifies a legal entity as
  /// defined in ISO 17442.
  @override
  String? leiCode;

  /// The location of, for example, where an event is happening, where an
  /// organization is located, or where an action takes place.
  ///
  /// Supported types: [SchemaPlace], [SchemaPostalAddress], [String],
  /// [SchemaVirtualLocation]
  @override
  dynamic location;

  /// A pointer to products or services offered by the organization or person.
  @override
  SchemaOffer? makesOffer;

  /// A member of an Organization or a ProgramMembership. Organizations can be
  /// members of organizations; ProgramMembership is typically for individuals.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @override
  dynamic member;

  /// An Organization (or ProgramMembership) to which this Person or
  /// Organization belongs.
  ///
  /// Supported types: [SchemaMemberProgramTier], [SchemaOrganization],
  /// [SchemaProgramMembership]
  @override
  dynamic memberOf;

  /// A member of this organization.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @override
  @Deprecated('Use [member]. See https://schema.org/members')
  dynamic members;

  /// The North American Industry Classification System (NAICS) code for a
  /// particular organization or business person.
  @override
  String? naics;

  /// nonprofitStatus indicates the legal status of a non-profit organization
  /// in its primary place of business.
  @override
  SchemaNonprofitType? nonprofitStatus;

  /// The number of employees in an organization, e.g. business.
  @override
  SchemaQuantitativeValue? numberOfEmployees;

  /// For an [SchemaOrganization] (often but not necessarily a
  /// [SchemaNewsMediaOrganization]), a description of organizational ownership
  /// structure; funding and grants. In a news/media setting, this is with
  /// particular reference to editorial independence. Note that the
  /// [Schemafunder] is also available and can be used to make basic funder
  /// information machine-readable.
  ///
  /// Supported types: [SchemaAboutPage], [SchemaCreativeWork], [String]
  @override
  dynamic ownershipFundingInfo;

  /// Things owned by the organization or person.
  @override
  SchemaThing? owns;

  /// The larger organization that this organization is a
  /// [SchemasubOrganization] of, if any.
  @override
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
  @override
  dynamic publishingPrinciples;

  /// A pointer to products or services sought by the organization or person
  /// (demand).
  @override
  SchemaDemand? seeks;

  /// The geographic area where the service is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace]
  @override
  @Deprecated('Use [areaServed]. See https://schema.org/serviceArea')
  dynamic serviceArea;

  /// A statement of knowledge, skill, ability, task or any other assertion
  /// expressing a competency that is either claimed by a person, an
  /// organization or desired or required to fulfill a role or to work in an
  /// occupation.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  @override
  dynamic skills;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @override
  dynamic sponsor;

  /// A relationship between two organizations where the first includes the
  /// second, e.g., as a subsidiary. See also: the more specific 'department'
  /// property.
  @override
  SchemaOrganization? subOrganization;

  /// The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US
  /// or the CIF/NIF in Spain.
  @override
  String? taxID;

  /// For an [SchemaOrganization] (typically a [SchemaNewsMediaOrganization]),
  /// a statement about policy on use of unnamed sources and the decision
  /// process required.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  @override
  dynamic unnamedSourcesPolicy;

  /// The value-added Tax ID of the organization or person with national prefix
  /// (for example IT123456789). Can also be described as [Schemaiso6523Code]
  /// with proper prefix.
  @override
  String? vatID;

  /// Create a new instance of [SchemaMovieTheater]
  SchemaMovieTheater({
    super.additionalProperty,
    super.additionalType,
    super.address,
    super.aggregateRating,
    super.alternateName,
    super.amenityFeature,
    super.branchCode,
    super.containedIn,
    super.containedInPlace,
    super.containsPlace,
    super.description,
    super.disambiguatingDescription,
    super.event,
    super.events,
    super.faxNumber,
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
    super.hasDriveThroughService,
    super.hasGS1DigitalLink,
    super.hasMap,
    super.identifier,
    super.image,
    super.isAccessibleForFree,
    super.isicV4,
    super.keywords,
    super.latitude,
    super.logo,
    super.longitude,
    super.mainEntityOfPage,
    super.map,
    super.maps,
    super.maximumAttendeeCapacity,
    super.name,
    super.openingHours,
    super.openingHoursSpecification,
    super.owner,
    super.photo,
    super.photos,
    super.potentialAction,
    super.publicAccess,
    super.review,
    super.reviews,
    super.sameAs,
    super.slogan,
    super.smokingAllowed,
    super.specialOpeningHoursSpecification,
    super.subjectOf,
    super.telephone,
    super.tourBookingPage,
    super.url,
    this.screenCount,
    this.branchOf,
    this.currenciesAccepted,
    this.floorLevel,
    this.paymentAccepted,
    this.priceRange,
    this.acceptedPaymentMethod,
    this.actionableFeedbackPolicy,
    this.agentInteractionStatistic,
    this.alumni,
    this.areaServed,
    this.authorizedRepresentative,
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
    this.founder,
    this.founders,
    this.foundingDate,
    this.foundingLocation,
    this.funder,
    this.funding,
    this.hasCredential,
    this.hasMemberProgram,
    this.hasMerchantReturnPolicy,
    this.hasOfferCatalog,
    this.hasPOS,
    this.hasProductReturnPolicy,
    this.hasShippingService,
    this.interactionStatistic,
    this.iso6523Code,
    this.knowsAbout,
    this.knowsLanguage,
    this.legalAddress,
    this.legalName,
    this.legalRepresentative,
    this.leiCode,
    this.location,
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
    this.seeks,
    this.serviceArea,
    this.skills,
    this.sponsor,
    this.subOrganization,
    this.taxID,
    this.unnamedSourcesPolicy,
    this.vatID,
  });

  /// Serialize [SchemaMovieTheater] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MovieTheater',
        'screenCount': convertToJsonLd(screenCount),
        'branchOf': convertToJsonLd(branchOf),
        'currenciesAccepted': convertToJsonLd(currenciesAccepted),
        'floorLevel': convertToJsonLd(floorLevel),
        'paymentAccepted': convertToJsonLd(paymentAccepted),
        'priceRange': convertToJsonLd(priceRange),
        'acceptedPaymentMethod': convertToJsonLd(
            acceptedPaymentMethod,
            (v) =>
                v is SchemaLoanOrCredit ||
                v is SchemaPaymentMethod ||
                v is String),
        'actionableFeedbackPolicy': convertToJsonLd(actionableFeedbackPolicy,
            (v) => v is SchemaCreativeWork || v is String),
        'agentInteractionStatistic': convertToJsonLd(agentInteractionStatistic),
        'alumni': convertToJsonLd(alumni),
        'areaServed': convertToJsonLd(
            areaServed,
            (v) =>
                v is SchemaAdministrativeArea ||
                v is SchemaGeoShape ||
                v is SchemaPlace ||
                v is String),
        'authorizedRepresentative': convertToJsonLd(authorizedRepresentative,
            (v) => v is SchemaOrganization || v is SchemaPerson),
        'award': convertToJsonLd(award),
        'awards': convertToJsonLd(awards),
        'brand': convertToJsonLd(
            brand, (v) => v is SchemaBrand || v is SchemaOrganization),
        'companyRegistration': convertToJsonLd(companyRegistration),
        'contactPoint': convertToJsonLd(contactPoint),
        'contactPoints': convertToJsonLd(contactPoints),
        'correctionsPolicy': convertToJsonLd(
            correctionsPolicy, (v) => v is SchemaCreativeWork || v is String),
        'department': convertToJsonLd(department),
        'dissolutionDate': convertToJsonLd(dissolutionDate),
        'diversityPolicy': convertToJsonLd(
            diversityPolicy, (v) => v is SchemaCreativeWork || v is String),
        'diversityStaffingReport': convertToJsonLd(
            diversityStaffingReport, (v) => v is SchemaArticle || v is String),
        'duns': convertToJsonLd(duns),
        'email': convertToJsonLd(email),
        'employee': convertToJsonLd(employee),
        'employees': convertToJsonLd(employees),
        'ethicsPolicy': convertToJsonLd(
            ethicsPolicy, (v) => v is SchemaCreativeWork || v is String),
        'founder': convertToJsonLd(
            founder, (v) => v is SchemaOrganization || v is SchemaPerson),
        'founders': convertToJsonLd(founders),
        'foundingDate': convertToJsonLd(foundingDate),
        'foundingLocation': convertToJsonLd(foundingLocation),
        'funder': convertToJsonLd(
            funder, (v) => v is SchemaOrganization || v is SchemaPerson),
        'funding': convertToJsonLd(funding),
        'hasCredential': convertToJsonLd(hasCredential),
        'hasMemberProgram': convertToJsonLd(hasMemberProgram),
        'hasMerchantReturnPolicy': convertToJsonLd(hasMerchantReturnPolicy),
        'hasOfferCatalog': convertToJsonLd(hasOfferCatalog),
        'hasPOS': convertToJsonLd(hasPOS),
        'hasProductReturnPolicy': convertToJsonLd(hasProductReturnPolicy),
        'hasShippingService': convertToJsonLd(hasShippingService),
        'interactionStatistic': convertToJsonLd(interactionStatistic),
        'iso6523Code': convertToJsonLd(iso6523Code),
        'knowsAbout':
            convertToJsonLd(knowsAbout, (v) => v is String || v is SchemaThing),
        'knowsLanguage': convertToJsonLd(
            knowsLanguage, (v) => v is SchemaLanguage || v is String),
        'legalAddress': convertToJsonLd(legalAddress),
        'legalName': convertToJsonLd(legalName),
        'legalRepresentative': convertToJsonLd(legalRepresentative),
        'leiCode': convertToJsonLd(leiCode),
        'location': convertToJsonLd(
            location,
            (v) =>
                v is SchemaPlace ||
                v is SchemaPostalAddress ||
                v is String ||
                v is SchemaVirtualLocation),
        'makesOffer': convertToJsonLd(makesOffer),
        'member': convertToJsonLd(
            member, (v) => v is SchemaOrganization || v is SchemaPerson),
        'memberOf': convertToJsonLd(
            memberOf,
            (v) =>
                v is SchemaMemberProgramTier ||
                v is SchemaOrganization ||
                v is SchemaProgramMembership),
        'members': convertToJsonLd(
            members, (v) => v is SchemaOrganization || v is SchemaPerson),
        'naics': convertToJsonLd(naics),
        'nonprofitStatus': convertToJsonLd(nonprofitStatus),
        'numberOfEmployees': convertToJsonLd(numberOfEmployees),
        'ownershipFundingInfo': convertToJsonLd(
            ownershipFundingInfo,
            (v) =>
                v is SchemaAboutPage || v is SchemaCreativeWork || v is String),
        'owns': convertToJsonLd(owns),
        'parentOrganization': convertToJsonLd(parentOrganization),
        'publishingPrinciples': convertToJsonLd(publishingPrinciples,
            (v) => v is SchemaCreativeWork || v is String),
        'seeks': convertToJsonLd(seeks),
        'serviceArea': convertToJsonLd(
            serviceArea,
            (v) =>
                v is SchemaAdministrativeArea ||
                v is SchemaGeoShape ||
                v is SchemaPlace),
        'skills': convertToJsonLd(
            skills, (v) => v is SchemaDefinedTerm || v is String),
        'sponsor': convertToJsonLd(
            sponsor, (v) => v is SchemaOrganization || v is SchemaPerson),
        'subOrganization': convertToJsonLd(subOrganization),
        'taxID': convertToJsonLd(taxID),
        'unnamedSourcesPolicy': convertToJsonLd(unnamedSourcesPolicy,
            (v) => v is SchemaCreativeWork || v is String),
        'vatID': convertToJsonLd(vatID),
      });
}
