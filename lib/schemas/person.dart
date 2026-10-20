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
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/interaction_counter.dart';
import 'package:schema_org/schemas/educational_organization.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/brand.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/gender_type.dart';
import 'package:schema_org/schemas/certification.dart';
import 'package:schema_org/schemas/credential.dart';
import 'package:schema_org/schemas/occupation.dart';
import 'package:schema_org/schemas/offer_catalog.dart';
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/member_program_tier.dart';
import 'package:schema_org/schemas/program_membership.dart';
import 'package:schema_org/schemas/country.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/demand.dart';
import 'package:schema_org/schemas/mass.dart';

/// A person (alive, dead, undead, or fictional).
/// See https://schema.org/Person
class SchemaPerson extends SchemaThing {
  /// An additional name for a Person, can be used for a middle name.
  String? additionalName;

  /// Physical address of the item.
  ///
  /// Supported types: [SchemaPostalAddress], [String]
  dynamic address;

  /// An organization that this person is affiliated with. For example, a
  /// school/university, a club, or a team.
  SchemaOrganization? affiliation;

  /// The number of completed interactions for this entity, in a particular
  /// role (the 'agent'), in a particular action (indicated in the statistic),
  /// and in a particular context (i.e. interactionService).
  SchemaInteractionCounter? agentInteractionStatistic;

  /// An organization that the person is an alumni of.
  ///
  /// Supported types: [SchemaEducationalOrganization], [SchemaOrganization]
  dynamic alumniOf;

  /// An award won by or for this item.
  String? award;

  /// Awards won by or for this item.
  @Deprecated('Use [award]. See https://schema.org/awards')
  String? awards;

  /// Date of birth.
  String? birthDate;

  /// The place where the person was born.
  SchemaPlace? birthPlace;

  /// The brand(s) associated with a product or service, or the brand(s)
  /// maintained by an organization or business person.
  ///
  /// Supported types: [SchemaBrand], [SchemaOrganization]
  dynamic brand;

  /// A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in
  /// broadcasting and radio communications to identify people, radio and TV
  /// stations, or vehicles.
  String? callSign;

  /// A child of the person.
  SchemaPerson? children;

  /// A colleague of the person.
  ///
  /// Supported types: [SchemaPerson], [String]
  dynamic colleague;

  /// A colleague of the person.
  @Deprecated('Use [colleague]. See https://schema.org/colleagues')
  SchemaPerson? colleagues;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoint;

  /// A contact point for a person or organization.
  @Deprecated('Use [contactPoint]. See https://schema.org/contactPoints')
  SchemaContactPoint? contactPoints;

  /// Date of death.
  String? deathDate;

  /// The place where the person died.
  SchemaPlace? deathPlace;

  /// The Dun & Bradstreet DUNS number for identifying an organization or
  /// business person.
  String? duns;

  /// Email address.
  String? email;

  /// Family name. In the U.S., the last name of a Person.
  String? familyName;

  /// The fax number.
  String? faxNumber;

  /// The most generic uni-directional social relation.
  SchemaPerson? follows;

  /// A person or organization that supports (sponsors) something through some
  /// kind of financial contribution.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic funder;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// Gender of something, typically a [SchemaPerson], but possibly also
  /// fictional characters, animals, etc. While https://schema.org/Male and
  /// https://schema.org/Female may be used, text strings are also acceptable
  /// for people who are not a binary gender. The [Schemagender] property can
  /// also be used in an extended sense to cover e.g. the gender of sports
  /// teams. As with the gender of individuals, we do not try to enumerate all
  /// possibilities. A mixed-gender [SchemaSportsTeam] can be indicated with a
  /// text value of "Mixed".
  ///
  /// Supported types: [SchemaGenderType], [String]
  dynamic gender;

  /// Given name. In the U.S., the first name of a Person.
  String? givenName;

  /// The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also
  /// referred to as International Location Number or ILN) of the respective
  /// organization, person, or place. The GLN is a 13-digit number used to
  /// identify parties and physical locations.
  String? globalLocationNumber;

  /// Certification information about a product, organization, service, place,
  /// or person.
  SchemaCertification? hasCertification;

  /// A credential awarded to the Person or Organization.
  SchemaCredential? hasCredential;

  /// The Person's occupation. For past professions, use Role for expressing
  /// dates.
  SchemaOccupation? hasOccupation;

  /// Indicates an OfferCatalog listing for this Organization, Person, or
  /// Service.
  SchemaOfferCatalog? hasOfferCatalog;

  /// Points-of-Sales operated by the organization or person.
  SchemaPlace? hasPOS;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic height;

  /// A contact location for a person's residence.
  ///
  /// Supported types: [SchemaContactPoint], [SchemaPlace]
  dynamic homeLocation;

  /// An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.
  String? honorificPrefix;

  /// An honorific suffix following a Person's name such as M.D./PhD/MSCSW.
  String? honorificSuffix;

  /// The number of interactions for the CreativeWork using the WebSite or
  /// SoftwareApplication. The most specific child type of InteractionCounter
  /// should be used.
  SchemaInteractionCounter? interactionStatistic;

  /// The International Standard of Industrial Classification of All Economic
  /// Activities (ISIC), Revision 4 code for a particular organization,
  /// business person, or place.
  String? isicV4;

  /// The job title of the person (for example, Financial Manager).
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic jobTitle;

  /// The most generic bi-directional social/work relation.
  SchemaPerson? knows;

  /// Of a [SchemaPerson], and less typically of an [SchemaOrganization], to
  /// indicate a topic that is known about - suggesting possible expertise but
  /// not implying it. We do not distinguish skill levels here, or relate this
  /// to educational content, events, objectives or [SchemaJobPosting]
  /// descriptions.
  ///
  /// Supported types: [String], [SchemaThing]
  dynamic knowsAbout;

  /// Of a [SchemaPerson], and less typically of an [SchemaOrganization], to
  /// indicate a known language. We do not distinguish skill levels or
  /// reading/writing/speaking/signing here. Use language codes from the [IETF
  /// BCP 47 standard](http://tools.ietf.org/html/bcp47).
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic knowsLanguage;

  /// A life event like baptism, communions, Bar Mitzvahs, Aqiqah, Namakarana,
  /// Miyamairi, burial, ....
  SchemaEvent? lifeEvent;

  /// A pointer to products or services offered by the organization or person.
  SchemaOffer? makesOffer;

  /// An Organization (or ProgramMembership) to which this Person or
  /// Organization belongs.
  ///
  /// Supported types: [SchemaMemberProgramTier], [SchemaOrganization],
  /// [SchemaProgramMembership]
  dynamic memberOf;

  /// The North American Industry Classification System (NAICS) code for a
  /// particular organization or business person.
  String? naics;

  /// Nationality of the person.
  SchemaCountry? nationality;

  /// The total financial value of the person as calculated by subtracting the
  /// total value of liabilities from the total value of assets.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification]
  dynamic netWorth;

  /// Things owned by the organization or person.
  SchemaThing? owns;

  /// A parent of this person.
  SchemaPerson? parent;

  /// A parents of the person.
  @Deprecated('Use [parent]. See https://schema.org/parents')
  SchemaPerson? parents;

  /// Event that this person is a performer or participant in.
  SchemaEvent? performerIn;

  /// A short string listing or describing pronouns for a person. Typically the
  /// person concerned is the best authority as pronouns are a critical part of
  /// personal identity and expression. Publishers and consumers of this
  /// information are reminded to treat this data responsibly, take
  /// country-specific laws related to gender expression into account, and be
  /// wary of out-of-date data and drawing unwarranted inferences about the
  /// person being described.
  ///
  /// In English, formulations such as "they/them", "she/her", and "he/him" are
  /// commonly used online and can also be used here. We do not intend to
  /// enumerate all possible micro-syntaxes in all languages. More structured
  /// and well-defined external values for pronouns can be referenced using the
  /// [SchemaStructuredValue] or [SchemaDefinedTerm] values.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [SchemaStructuredValue]
  dynamic pronouns;

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

  /// The most generic familial relation.
  SchemaPerson? relatedTo;

  /// A pointer to products or services sought by the organization or person
  /// (demand).
  SchemaDemand? seeks;

  /// A sibling of the person.
  SchemaPerson? sibling;

  /// A sibling of the person.
  @Deprecated('Use [sibling]. See https://schema.org/siblings')
  SchemaPerson? siblings;

  /// A statement of knowledge, skill, ability, task or any other assertion
  /// expressing a competency that is either claimed by a person, an
  /// organization or desired or required to fulfill a role or to work in an
  /// occupation.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic skills;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

  /// The person's spouse.
  SchemaPerson? spouse;

  /// The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US
  /// or the CIF/NIF in Spain.
  String? taxID;

  /// The telephone number.
  String? telephone;

  /// The value-added Tax ID of the organization or person with national prefix
  /// (for example IT123456789). Can also be described as [Schemaiso6523Code]
  /// with proper prefix.
  String? vatID;

  /// The weight of the product or person.
  ///
  /// Supported types: [SchemaMass], [SchemaQuantitativeValue]
  dynamic weight;

  /// A contact location for a person's place of work.
  ///
  /// Supported types: [SchemaContactPoint], [SchemaPlace]
  dynamic workLocation;

  /// Organizations that the person works for.
  SchemaOrganization? worksFor;

  /// Create a new instance of [SchemaPerson]
  SchemaPerson({
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
    this.additionalName,
    this.address,
    this.affiliation,
    this.agentInteractionStatistic,
    this.alumniOf,
    this.award,
    this.awards,
    this.birthDate,
    this.birthPlace,
    this.brand,
    this.callSign,
    this.children,
    this.colleague,
    this.colleagues,
    this.contactPoint,
    this.contactPoints,
    this.deathDate,
    this.deathPlace,
    this.duns,
    this.email,
    this.familyName,
    this.faxNumber,
    this.follows,
    this.funder,
    this.funding,
    this.gender,
    this.givenName,
    this.globalLocationNumber,
    this.hasCertification,
    this.hasCredential,
    this.hasOccupation,
    this.hasOfferCatalog,
    this.hasPOS,
    this.height,
    this.homeLocation,
    this.honorificPrefix,
    this.honorificSuffix,
    this.interactionStatistic,
    this.isicV4,
    this.jobTitle,
    this.knows,
    this.knowsAbout,
    this.knowsLanguage,
    this.lifeEvent,
    this.makesOffer,
    this.memberOf,
    this.naics,
    this.nationality,
    this.netWorth,
    this.owns,
    this.parent,
    this.parents,
    this.performerIn,
    this.pronouns,
    this.publishingPrinciples,
    this.relatedTo,
    this.seeks,
    this.sibling,
    this.siblings,
    this.skills,
    this.sponsor,
    this.spouse,
    this.taxID,
    this.telephone,
    this.vatID,
    this.weight,
    this.workLocation,
    this.worksFor,
  });

  /// Serialize [SchemaPerson] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Person',
        'additionalName': convertToJsonLd(additionalName),
        'address': convertToJsonLd(
            address, (v) => v is SchemaPostalAddress || v is String),
        'affiliation': convertToJsonLd(affiliation),
        'agentInteractionStatistic': convertToJsonLd(agentInteractionStatistic),
        'alumniOf': convertToJsonLd(
            alumniOf,
            (v) =>
                v is SchemaEducationalOrganization || v is SchemaOrganization),
        'award': convertToJsonLd(award),
        'awards': convertToJsonLd(awards),
        'birthDate': convertToJsonLd(birthDate),
        'birthPlace': convertToJsonLd(birthPlace),
        'brand': convertToJsonLd(
            brand, (v) => v is SchemaBrand || v is SchemaOrganization),
        'callSign': convertToJsonLd(callSign),
        'children': convertToJsonLd(children),
        'colleague':
            convertToJsonLd(colleague, (v) => v is SchemaPerson || v is String),
        'colleagues': convertToJsonLd(colleagues),
        'contactPoint': convertToJsonLd(contactPoint),
        'contactPoints': convertToJsonLd(contactPoints),
        'deathDate': convertToJsonLd(deathDate),
        'deathPlace': convertToJsonLd(deathPlace),
        'duns': convertToJsonLd(duns),
        'email': convertToJsonLd(email),
        'familyName': convertToJsonLd(familyName),
        'faxNumber': convertToJsonLd(faxNumber),
        'follows': convertToJsonLd(follows),
        'funder': convertToJsonLd(
            funder, (v) => v is SchemaOrganization || v is SchemaPerson),
        'funding': convertToJsonLd(funding),
        'gender': convertToJsonLd(
            gender, (v) => v is SchemaGenderType || v is String),
        'givenName': convertToJsonLd(givenName),
        'globalLocationNumber': convertToJsonLd(globalLocationNumber),
        'hasCertification': convertToJsonLd(hasCertification),
        'hasCredential': convertToJsonLd(hasCredential),
        'hasOccupation': convertToJsonLd(hasOccupation),
        'hasOfferCatalog': convertToJsonLd(hasOfferCatalog),
        'hasPOS': convertToJsonLd(hasPOS),
        'height': convertToJsonLd(
            height, (v) => v is SchemaDistance || v is SchemaQuantitativeValue),
        'homeLocation': convertToJsonLd(
            homeLocation, (v) => v is SchemaContactPoint || v is SchemaPlace),
        'honorificPrefix': convertToJsonLd(honorificPrefix),
        'honorificSuffix': convertToJsonLd(honorificSuffix),
        'interactionStatistic': convertToJsonLd(interactionStatistic),
        'isicV4': convertToJsonLd(isicV4),
        'jobTitle': convertToJsonLd(
            jobTitle, (v) => v is SchemaDefinedTerm || v is String),
        'knows': convertToJsonLd(knows),
        'knowsAbout':
            convertToJsonLd(knowsAbout, (v) => v is String || v is SchemaThing),
        'knowsLanguage': convertToJsonLd(
            knowsLanguage, (v) => v is SchemaLanguage || v is String),
        'lifeEvent': convertToJsonLd(lifeEvent),
        'makesOffer': convertToJsonLd(makesOffer),
        'memberOf': convertToJsonLd(
            memberOf,
            (v) =>
                v is SchemaMemberProgramTier ||
                v is SchemaOrganization ||
                v is SchemaProgramMembership),
        'naics': convertToJsonLd(naics),
        'nationality': convertToJsonLd(nationality),
        'netWorth': convertToJsonLd(netWorth,
            (v) => v is SchemaMonetaryAmount || v is SchemaPriceSpecification),
        'owns': convertToJsonLd(owns),
        'parent': convertToJsonLd(parent),
        'parents': convertToJsonLd(parents),
        'performerIn': convertToJsonLd(performerIn),
        'pronouns': convertToJsonLd(
            pronouns,
            (v) =>
                v is SchemaDefinedTerm ||
                v is String ||
                v is SchemaStructuredValue),
        'publishingPrinciples': convertToJsonLd(publishingPrinciples,
            (v) => v is SchemaCreativeWork || v is String),
        'relatedTo': convertToJsonLd(relatedTo),
        'seeks': convertToJsonLd(seeks),
        'sibling': convertToJsonLd(sibling),
        'siblings': convertToJsonLd(siblings),
        'skills': convertToJsonLd(
            skills, (v) => v is SchemaDefinedTerm || v is String),
        'sponsor': convertToJsonLd(
            sponsor, (v) => v is SchemaOrganization || v is SchemaPerson),
        'spouse': convertToJsonLd(spouse),
        'taxID': convertToJsonLd(taxID),
        'telephone': convertToJsonLd(telephone),
        'vatID': convertToJsonLd(vatID),
        'weight': convertToJsonLd(
            weight, (v) => v is SchemaMass || v is SchemaQuantitativeValue),
        'workLocation': convertToJsonLd(
            workLocation, (v) => v is SchemaContactPoint || v is SchemaPlace),
        'worksFor': convertToJsonLd(worksFor),
      });
}
