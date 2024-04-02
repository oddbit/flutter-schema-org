library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/interaction_counter.dart';
import 'package:schema_org/schemas/aggregate_rating.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/brand.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/article.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/grant.dart';
import 'package:schema_org/schemas/certification.dart';
import 'package:schema_org/schemas/educational_occupational_credential.dart';
import 'package:schema_org/schemas/merchant_return_policy.dart';
import 'package:schema_org/schemas/offer_catalog.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/virtual_location.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/program_membership.dart';
import 'package:schema_org/schemas/nonprofit_type.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/about_page.dart';
import 'package:schema_org/schemas/ownership_info.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/review.dart';
import 'package:schema_org/schemas/demand.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/action.dart';

/// A Workers Union (also known as a Labor Union, Labour Union, or
/// Trade Union) is an organization that promotes the interests of
/// its worker members by collectively bargaining with management,
/// organizing, and political lobbying.
/// See https://schema.org/WorkersUnion
class SchemaWorkersUnion implements SchemaSerializable {
  /// For a [[NewsMediaOrganization]] or other news-related
  /// [[Organization]], a statement about public engagement activities
  /// (for news media, the newsroom’s), including involving the public
  /// - digitally or otherwise -- in coverage decisions, reporting and
  /// activities after publication.  Supported types: [CreativeWork],
  /// [String]
  dynamic actionableFeedbackPolicy;

  /// Physical address of the item.  Supported types: [PostalAddress],
  /// [String]
  dynamic address;

  /// The number of completed interactions for this entity, in a
  /// particular role (the 'agent'), in a particular action (indicated
  /// in the statistic), and in a particular context (i.e
  /// interactionService).
  SchemaInteractionCounter? agentInteractionStatistic;

  /// The overall rating, based on a collection of reviews or ratings,
  /// of the item.
  SchemaAggregateRating? aggregateRating;

  /// Alumni of an organization.
  SchemaPerson? alumni;

  /// The geographic area where a service or offered item is provided.
  /// Supported types: [AdministrativeArea], [GeoShape], [Place],
  /// [String]
  dynamic areaServed;

  /// An award won by or for this item.
  String? award;

  /// Awards won by or for this item.
  String? awards;

  /// The brand(s) associated with a product or service, or the
  /// brand(s) maintained by an organization or business person.
  /// Supported types: [Brand], [Organization]
  dynamic brand;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoint;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoints;

  /// For an [[Organization]] (e.g [[NewsMediaOrganization]]), a
  /// statement describing (in news media, the newsroom’s) disclosure
  /// and correction policy for errors.  Supported types:
  /// [CreativeWork], [String]
  dynamic correctionsPolicy;

  /// a store with a pharmacy, or a bakery with a cafe.
  SchemaOrganization? department;

  /// The date that this organization was dissolved.
  String? dissolutionDate;

  /// Statement on diversity policy by an [[Organization]] e.g a
  /// [[NewsMediaOrganization]] For a [[NewsMediaOrganization]], a
  /// statement describing the newsroom’s diversity policy on both
  /// staffing and sources, typically providing staffing data.
  /// Supported types: [CreativeWork], [String]
  dynamic diversityPolicy;

  /// For an [[Organization]] (often but not necessarily a
  /// [[NewsMediaOrganization]]), a report on staffing diversity
  /// issues In a news context this might be for example ASNE or RTDNA
  /// (US) reports, or self-reported.  Supported types: [Article],
  /// [String]
  dynamic diversityStaffingReport;

  /// The Dun & Bradstreet DUNS number for identifying an organization
  /// or business person.
  String? duns;

  /// Email address.
  String? email;

  /// Someone working for this organization.
  SchemaPerson? employee;

  /// People working for this organization.
  SchemaPerson? employees;

  /// Statement about ethics policy, e.g of a
  /// [[NewsMediaOrganization]] regarding journalistic and publishing
  /// practices, or of a [[Restaurant]], a page describing food source
  /// policies In the case of a [[NewsMediaOrganization]], an
  /// ethicsPolicy is typically a statement describing the personal,
  /// organizational, and corporate standards of behavior expected by
  /// the organization.  Supported types: [CreativeWork], [String]
  dynamic ethicsPolicy;

  /// Upcoming or past event associated with this place, organization,
  /// or action.
  SchemaEvent? event;

  /// Upcoming or past events associated with this place or
  /// organization.
  SchemaEvent? events;

  /// The fax number.
  String? faxNumber;

  /// A person who founded this organization.
  SchemaPerson? founder;

  /// A person who founded this organization.
  SchemaPerson? founders;

  /// The date that this organization was founded.
  String? foundingDate;

  /// The place where the Organization was founded.
  SchemaPlace? foundingLocation;

  /// A person or organization that supports (sponsors) something
  /// through some kind of financial contribution.  Supported types:
  /// [Organization], [Person]
  dynamic funder;

  /// A [[Grant]] that directly or indirectly provide funding or
  /// sponsorship for this item See also [[ownershipFundingInfo]].
  SchemaGrant? funding;

  /// //www.gs1.org/gln) (GLN, sometimes also referred to as
  /// International Location Number or ILN) of the respective
  /// organization, person, or place The GLN is a 13-digit number used
  /// to identify parties and physical locations.
  String? globalLocationNumber;

  /// Certification information about a product, organization,
  /// service, place, or person.
  SchemaCertification? hasCertification;

  /// A credential awarded to the Person or Organization.
  SchemaEducationalOccupationalCredential? hasCredential;

  /// Specifies a MerchantReturnPolicy that may be applicable.
  SchemaMerchantReturnPolicy? hasMerchantReturnPolicy;

  /// Indicates an OfferCatalog listing for this Organization, Person,
  /// or Service.
  SchemaOfferCatalog? hasOfferCatalog;

  /// Points-of-Sales operated by the organization or person.
  SchemaPlace? hasPOS;

  /// The number of interactions for the CreativeWork using the
  /// WebSite or SoftwareApplication The most specific child type of
  /// InteractionCounter should be used.
  SchemaInteractionCounter? interactionStatistic;

  /// The International Standard of Industrial Classification of All
  /// Economic Activities (ISIC), Revision 4 code for a particular
  /// organization, business person, or place.
  String? isicV4;

  /// //schema.org/taxID), as ISO identifiers are less ambiguous.
  String? iso6523Code;

  /// Keywords or tags used to describe some item Multiple textual
  /// entries in a keywords list are typically delimited by commas, or
  /// by repeating the property.  Supported types: [DefinedTerm],
  /// [String], [String]
  dynamic keywords;

  /// Of a [[Person]], and less typically of an [[Organization]], to
  /// indicate a topic that is known about - suggesting possible
  /// expertise but not implying it We do not distinguish skill levels
  /// here, or relate this to educational content, events, objectives
  /// or [[JobPosting]] descriptions.  Supported types: [String],
  /// [String], [Thing]
  dynamic knowsAbout;

  /// //tools.ietf.org/html/bcp47).  Supported types: [Language],
  /// [String]
  dynamic knowsLanguage;

  /// The official name of the organization, e.g the registered
  /// company name.
  String? legalName;

  /// An organization identifier that uniquely identifies a legal
  /// entity as defined in ISO 17442.
  String? leiCode;

  /// The location of, for example, where an event is happening, where
  /// an organization is located, or where an action takes place.
  /// Supported types: [Place], [PostalAddress], [String],
  /// [VirtualLocation]
  dynamic location;

  /// An associated logo.  Supported types: [ImageObject], [String]
  dynamic logo;

  /// A pointer to products or services offered by the organization or
  /// person.
  SchemaOffer? makesOffer;

  /// A member of an Organization or a ProgramMembership Organizations
  /// can be members of organizations; ProgramMembership is typically
  /// for individuals.  Supported types: [Organization], [Person]
  dynamic member;

  /// An Organization (or ProgramMembership) to which this Person or
  /// Organization belongs.  Supported types: [Organization],
  /// [ProgramMembership]
  dynamic memberOf;

  /// A member of this organization.  Supported types: [Organization],
  /// [Person]
  dynamic members;

  /// The North American Industry Classification System (NAICS) code
  /// for a particular organization or business person.
  String? naics;

  /// nonprofitStatus indicates the legal status of a non-profit
  /// organization in its primary place of business.
  SchemaNonprofitType? nonprofitStatus;

  /// The number of employees in an organization, e.g business.
  SchemaQuantitativeValue? numberOfEmployees;

  /// For an [[Organization]] (often but not necessarily a
  /// [[NewsMediaOrganization]]), a description of organizational
  /// ownership structure; funding and grants In a news/media setting,
  /// this is with particular reference to editorial independence Note
  /// that the [[funder]] is also available and can be used to make
  /// basic funder information machine-readable.  Supported types:
  /// [AboutPage], [CreativeWork], [String], [String]
  dynamic ownershipFundingInfo;

  /// Products owned by the organization or person.  Supported types:
  /// [OwnershipInfo], [Product]
  dynamic owns;

  /// The larger organization that this organization is a
  /// [[subOrganization]] of, if any.
  SchemaOrganization? parentOrganization;

  /// The publishingPrinciples property indicates (typically via
  /// [[URL]]) a document describing the editorial principles of an
  /// [[Organization]] (or individual, e.g a [[Person]] writing a
  /// blog) that relate to their activities as a publisher, e.g ethics
  /// or diversity policies When applied to a [[CreativeWork]] (e.g
  /// [[NewsArticle]]) the principles are those of the party primarily
  /// responsible for the creation of the [[CreativeWork]]  While such
  /// policies are most typically expressed in natural language,
  /// sometimes related information (e.g indicating a [[funder]]) can
  /// be expressed using schema.org terminology   Supported types:
  /// [CreativeWork], [String]
  dynamic publishingPrinciples;

  /// A review of the item.
  SchemaReview? review;

  /// Review of the item.
  SchemaReview? reviews;

  /// A pointer to products or services sought by the organization or
  /// person (demand).
  SchemaDemand? seeks;

  /// The geographic area where the service is provided.  Supported
  /// types: [AdministrativeArea], [GeoShape], [Place]
  dynamic serviceArea;

  /// A slogan or motto associated with the item.
  String? slogan;

  /// A person or organization that supports a thing through a pledge,
  /// promise, or financial contribution E.g a sponsor of a Medical
  /// Study or a corporate sponsor of an event.  Supported types:
  /// [Organization], [Person]
  dynamic sponsor;

  /// the more specific 'department' property.
  SchemaOrganization? subOrganization;

  /// The Tax / Fiscal ID of the organization or person, e.g the TIN
  /// in the US or the CIF/NIF in Spain.
  String? taxID;

  /// The telephone number.
  String? telephone;

  /// For an [[Organization]] (typically a [[NewsMediaOrganization]]),
  /// a statement about policy on use of unnamed sources and the
  /// decision process required.  Supported types: [CreativeWork],
  /// [String]
  dynamic unnamedSourcesPolicy;

  /// The Value-added Tax ID of the organization or person.
  String? vatID;

  /// //schema.org/docs/styleguide.html">style guide</a>.  Supported
  /// types: [String], [String]
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.  Supported types: [String],
  /// [TextObject]
  dynamic description;

  /// A sub property of description A short description of the item
  /// used to disambiguate from other, similar items Information from
  /// other properties (in particular, name) may be necessary for the
  /// description to be useful for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for
  /// any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc
  /// Schema.org provides dedicated properties for representing many
  /// of these, either as textual strings or as URL (URI) links See
  /// [background notes](/docs/datamodel.html#identifierBg) for more
  /// details    Supported types: [PropertyValue], [String], [String]
  dynamic identifier;

  /// An image of the item This can be a [[URL]] or a fully described
  /// [[ImageObject]].  Supported types: [ImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is
  /// the main entity being described See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  /// Supported types: [CreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// Indicates a potential Action, which describes an idealized
  /// action in which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the
  /// item's identity E.g the URL of the item's Wikipedia page,
  /// Wikidata entry, or official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.  Supported types:
  /// [CreativeWork], [Event]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaWorkersUnion]
  SchemaWorkersUnion({
    this.actionableFeedbackPolicy,
    this.address,
    this.agentInteractionStatistic,
    this.aggregateRating,
    this.alumni,
    this.areaServed,
    this.award,
    this.awards,
    this.brand,
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
    this.hasMerchantReturnPolicy,
    this.hasOfferCatalog,
    this.hasPOS,
    this.interactionStatistic,
    this.isicV4,
    this.iso6523Code,
    this.keywords,
    this.knowsAbout,
    this.knowsLanguage,
    this.legalName,
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
    this.slogan,
    this.sponsor,
    this.subOrganization,
    this.taxID,
    this.telephone,
    this.unnamedSourcesPolicy,
    this.vatID,
    this.additionalType,
    this.alternateName,
    this.description,
    this.disambiguatingDescription,
    this.identifier,
    this.image,
    this.mainEntityOfPage,
    this.name,
    this.potentialAction,
    this.sameAs,
    this.subjectOf,
    this.url,
  });

  /// Serialize [SchemaWorkersUnion] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'WorkersUnion',
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
        'founder': convertToJsonLd(founder, [SchemaPerson]),
        'founders': convertToJsonLd(founders, [SchemaPerson]),
        'foundingDate': convertToJsonLd(foundingDate, [String]),
        'foundingLocation': convertToJsonLd(foundingLocation, [SchemaPlace]),
        'funder': convertToJsonLd(funder, [SchemaOrganization, SchemaPerson]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'globalLocationNumber': convertToJsonLd(globalLocationNumber, [String]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasCredential': convertToJsonLd(
            hasCredential, [SchemaEducationalOccupationalCredential]),
        'hasMerchantReturnPolicy': convertToJsonLd(
            hasMerchantReturnPolicy, [SchemaMerchantReturnPolicy]),
        'hasOfferCatalog':
            convertToJsonLd(hasOfferCatalog, [SchemaOfferCatalog]),
        'hasPOS': convertToJsonLd(hasPOS, [SchemaPlace]),
        'interactionStatistic':
            convertToJsonLd(interactionStatistic, [SchemaInteractionCounter]),
        'isicV4': convertToJsonLd(isicV4, [String]),
        'iso6523Code': convertToJsonLd(iso6523Code, [String]),
        'keywords':
            convertToJsonLd(keywords, [SchemaDefinedTerm, String, String]),
        'knowsAbout':
            convertToJsonLd(knowsAbout, [String, String, SchemaThing]),
        'knowsLanguage':
            convertToJsonLd(knowsLanguage, [SchemaLanguage, String]),
        'legalName': convertToJsonLd(legalName, [String]),
        'leiCode': convertToJsonLd(leiCode, [String]),
        'location': convertToJsonLd(location,
            [SchemaPlace, SchemaPostalAddress, String, SchemaVirtualLocation]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
        'makesOffer': convertToJsonLd(makesOffer, [SchemaOffer]),
        'member': convertToJsonLd(member, [SchemaOrganization, SchemaPerson]),
        'memberOf': convertToJsonLd(
            memberOf, [SchemaOrganization, SchemaProgramMembership]),
        'members': convertToJsonLd(members, [SchemaOrganization, SchemaPerson]),
        'naics': convertToJsonLd(naics, [String]),
        'nonprofitStatus':
            convertToJsonLd(nonprofitStatus, [SchemaNonprofitType]),
        'numberOfEmployees':
            convertToJsonLd(numberOfEmployees, [SchemaQuantitativeValue]),
        'ownershipFundingInfo': convertToJsonLd(ownershipFundingInfo,
            [SchemaAboutPage, SchemaCreativeWork, String, String]),
        'owns': convertToJsonLd(owns, [SchemaOwnershipInfo, SchemaProduct]),
        'parentOrganization':
            convertToJsonLd(parentOrganization, [SchemaOrganization]),
        'publishingPrinciples':
            convertToJsonLd(publishingPrinciples, [SchemaCreativeWork, String]),
        'review': convertToJsonLd(review, [SchemaReview]),
        'reviews': convertToJsonLd(reviews, [SchemaReview]),
        'seeks': convertToJsonLd(seeks, [SchemaDemand]),
        'serviceArea': convertToJsonLd(serviceArea,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace]),
        'slogan': convertToJsonLd(slogan, [String]),
        'sponsor': convertToJsonLd(sponsor, [SchemaOrganization, SchemaPerson]),
        'subOrganization':
            convertToJsonLd(subOrganization, [SchemaOrganization]),
        'taxID': convertToJsonLd(taxID, [String]),
        'telephone': convertToJsonLd(telephone, [String]),
        'unnamedSourcesPolicy':
            convertToJsonLd(unnamedSourcesPolicy, [SchemaCreativeWork, String]),
        'vatID': convertToJsonLd(vatID, [String]),
        'additionalType': convertToJsonLd(additionalType, [String, String]),
        'alternateName': convertToJsonLd(alternateName, [String]),
        'description': convertToJsonLd(description, [String, SchemaTextObject]),
        'disambiguatingDescription':
            convertToJsonLd(disambiguatingDescription, [String]),
        'identifier':
            convertToJsonLd(identifier, [SchemaPropertyValue, String, String]),
        'image': convertToJsonLd(image, [SchemaImageObject, String]),
        'mainEntityOfPage':
            convertToJsonLd(mainEntityOfPage, [SchemaCreativeWork, String]),
        'name': convertToJsonLd(name, [String]),
        'potentialAction': convertToJsonLd(potentialAction, [SchemaAction]),
        'sameAs': convertToJsonLd(sameAs, [String]),
        'subjectOf':
            convertToJsonLd(subjectOf, [SchemaCreativeWork, SchemaEvent]),
        'url': convertToJsonLd(url, [String]),
      });
}
