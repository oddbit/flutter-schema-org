library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/repayment_specification.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/aggregate_rating.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/service_channel.dart';
import 'package:schema_org/schemas/brand.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/certification.dart';
import 'package:schema_org/schemas/offer_catalog.dart';
import 'package:schema_org/schemas/opening_hours_specification.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/demand.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/review.dart';
import 'package:schema_org/schemas/government_benefits_type.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// //purl.org/goodrelations/v1#VISA
/// See https://schema.org/CreditCard
class SchemaCreditCard {
  /// The amount of money.  Supported types: [MonetaryAmount], [int]
  dynamic amount;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS)
  /// and other currency types, e.g "Ithaca HOUR".
  String? currency;

  /// The period of time after any due date that the borrower has to
  /// fulfil its obligations before a default (failure to pay) is
  /// deemed to have occurred.
  SchemaDuration? gracePeriod;

  /// A form of paying back money previously borrowed from a lender
  /// Repayment usually takes the form of periodic payments that
  /// normally include part principal plus interest in each payment.
  SchemaRepaymentSpecification? loanRepaymentForm;

  /// The duration of the loan or credit agreement.
  SchemaQuantitativeValue? loanTerm;

  /// The type of a loan or credit.  Supported types: [String],
  /// [String]
  String? loanType;

  /// The only way you get the money back in the event of default is
  /// the security Recourse is where you still have the opportunity to
  /// go back to the borrower for the rest of the money.
  bool? recourseLoan;

  /// Whether the terms for payment of interest can be renegotiated
  /// during the life of the loan.
  bool? renegotiableLoan;

  /// Assets required to secure loan or credit repayments It may take
  /// form of third party pledge, goods, financial instruments (cash,
  /// securities, etc.)  Supported types: [String], [Thing]
  dynamic requiredCollateral;

  /// A cardholder benefit that pays the cardholder a small percentage
  /// of their net expenditures.  Supported types: [bool], [int]
  dynamic cashBack;

  /// A secure method for consumers to purchase products or services
  /// via debit, credit or smartcards by using RFID or NFC technology.
  bool? contactlessPayment;

  /// A floor limit is the amount of money above which credit card
  /// transactions must be authorized.
  SchemaMonetaryAmount? floorLimit;

  /// The minimum payment is the lowest amount of money that one is
  /// required to pay on a credit card statement each month.
  /// Supported types: [MonetaryAmount], [int]
  dynamic monthlyMinimumRepaymentAmount;

  /// The annual rate that is charged for borrowing (or made by
  /// investing), expressed as a single percentage number that
  /// represents the actual yearly cost of funds over the term of a
  /// loan This includes any fees or additional costs associated with
  /// the transaction.  Supported types: [QuantitativeValue], [int]
  dynamic annualPercentageRate;

  /// Description of fees, commissions, and other terms applied either
  /// to a class of financial product, or by a financial service
  /// organization.  Supported types: [String], [String]
  String? feesAndCommissionsSpecification;

  /// This is different from the calculated annualPercentageRate.
  /// Supported types: [QuantitativeValue], [int]
  dynamic interestRate;

  /// The overall rating, based on a collection of reviews or ratings,
  /// of the item.
  SchemaAggregateRating? aggregateRating;

  /// The geographic area where a service or offered item is provided.
  /// Supported types: [AdministrativeArea], [GeoShape], [Place],
  /// [String]
  dynamic areaServed;

  /// An intended audience, i.e a group for whom something was
  /// created.
  SchemaAudience? audience;

  /// A means of accessing the service (e.g a phone bank, a web site,
  /// a location, etc.).
  SchemaServiceChannel? availableChannel;

  /// An award won by or for this item.
  String? award;

  /// The brand(s) associated with a product or service, or the
  /// brand(s) maintained by an organization or business person.
  /// Supported types: [Brand], [Organization]
  dynamic brand;

  /// An entity that arranges for an exchange between a buyer and a
  /// seller In most cases a broker never acquires or releases
  /// ownership of a product or service involved in an exchange If it
  /// is not clear whether an entity is a broker, seller, or buyer,
  /// the latter two terms are preferred.  Supported types:
  /// [Organization], [Person]
  dynamic broker;

  /// A category for the item Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.  Supported types:
  /// [CategoryCode], [PhysicalActivityCategory], [String], [String],
  /// [Thing]
  dynamic category;

  /// Certification information about a product, organization,
  /// service, place, or person.
  SchemaCertification? hasCertification;

  /// Indicates an OfferCatalog listing for this Organization, Person,
  /// or Service.
  SchemaOfferCatalog? hasOfferCatalog;

  /// The hours during which this service or contact is available.
  SchemaOpeningHoursSpecification? hoursAvailable;

  /// A pointer to another, somehow related product (or multiple
  /// products).  Supported types: [Product], [Service]
  dynamic isRelatedTo;

  /// A pointer to another, functionally similar product (or multiple
  /// products).  Supported types: [Product], [Service]
  dynamic isSimilarTo;

  /// An associated logo.  Supported types: [ImageObject], [String]
  dynamic logo;

  /// An offer to provide this item&#x2014;for example, an offer to
  /// sell a product, rent the DVD of a movie, perform a service, or
  /// give away tickets to an event Use [[businessFunction]] to
  /// indicate the kind of transaction offered, i.e sell, lease, etc
  /// This property can also be used to describe a [[Demand]] While
  /// this property is listed as expected on a number of common types,
  /// it can be used in others In that case, using a second type, such
  /// as Product or a subtype of Product, can clarify the nature of
  /// the offer    Supported types: [Demand], [Offer]
  dynamic offers;

  /// The tangible thing generated by the service, e.g a passport,
  /// permit, etc.
  SchemaThing? produces;

  /// The service provider, service operator, or service performer;
  /// the goods producer Another party (a seller) may offer those
  /// services or goods on behalf of the provider A provider may also
  /// serve as the seller.  Supported types: [Organization], [Person]
  dynamic provider;

  /// Indicates the mobility of a provided service (e.g 'static',
  /// 'dynamic').
  String? providerMobility;

  /// A review of the item.
  SchemaReview? review;

  /// The geographic area where the service is provided.  Supported
  /// types: [AdministrativeArea], [GeoShape], [Place]
  dynamic serviceArea;

  /// The audience eligible for this service.
  SchemaAudience? serviceAudience;

  /// The tangible thing generated by the service, e.g a passport,
  /// permit, etc.
  SchemaThing? serviceOutput;

  /// The type of service being offered, e.g veterans' benefits,
  /// emergency relief, etc.  Supported types:
  /// [GovernmentBenefitsType], [String]
  dynamic serviceType;

  /// A slogan or motto associated with the item.
  String? slogan;

  /// Human-readable terms of service documentation.  Supported types:
  /// [String], [String]
  String? termsOfService;

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

  /// Create a new instance of [SchemaCreditCard]
  SchemaCreditCard({
    this.amount,
    this.currency,
    this.gracePeriod,
    this.loanRepaymentForm,
    this.loanTerm,
    this.loanType,
    this.recourseLoan,
    this.renegotiableLoan,
    this.requiredCollateral,
    this.cashBack,
    this.contactlessPayment,
    this.floorLimit,
    this.monthlyMinimumRepaymentAmount,
    this.annualPercentageRate,
    this.feesAndCommissionsSpecification,
    this.interestRate,
    this.aggregateRating,
    this.areaServed,
    this.audience,
    this.availableChannel,
    this.award,
    this.brand,
    this.broker,
    this.category,
    this.hasCertification,
    this.hasOfferCatalog,
    this.hoursAvailable,
    this.isRelatedTo,
    this.isSimilarTo,
    this.logo,
    this.offers,
    this.produces,
    this.provider,
    this.providerMobility,
    this.review,
    this.serviceArea,
    this.serviceAudience,
    this.serviceOutput,
    this.serviceType,
    this.slogan,
    this.termsOfService,
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

  /// Serialize [SchemaCreditCard] to JSON-LD
  Map<String, dynamic> toJsonLd() => {
        '@context': 'https://schema.org',
        '@type': 'CreditCard',
        'amount': convertToJsonLd(amount, [SchemaMonetaryAmount, int]),
        'currency': convertToJsonLd(currency, [String]),
        'gracePeriod': convertToJsonLd(gracePeriod, [SchemaDuration]),
        'loanRepaymentForm':
            convertToJsonLd(loanRepaymentForm, [SchemaRepaymentSpecification]),
        'loanTerm': convertToJsonLd(loanTerm, [SchemaQuantitativeValue]),
        'loanType': convertToJsonLd(loanType, [String, String]),
        'recourseLoan': convertToJsonLd(recourseLoan, [bool]),
        'renegotiableLoan': convertToJsonLd(renegotiableLoan, [bool]),
        'requiredCollateral':
            convertToJsonLd(requiredCollateral, [String, SchemaThing]),
        'cashBack': convertToJsonLd(cashBack, [bool, int]),
        'contactlessPayment': convertToJsonLd(contactlessPayment, [bool]),
        'floorLimit': convertToJsonLd(floorLimit, [SchemaMonetaryAmount]),
        'monthlyMinimumRepaymentAmount': convertToJsonLd(
            monthlyMinimumRepaymentAmount, [SchemaMonetaryAmount, int]),
        'annualPercentageRate': convertToJsonLd(
            annualPercentageRate, [SchemaQuantitativeValue, int]),
        'feesAndCommissionsSpecification':
            convertToJsonLd(feesAndCommissionsSpecification, [String, String]),
        'interestRate':
            convertToJsonLd(interestRate, [SchemaQuantitativeValue, int]),
        'aggregateRating':
            convertToJsonLd(aggregateRating, [SchemaAggregateRating]),
        'areaServed': convertToJsonLd(areaServed,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace, String]),
        'audience': convertToJsonLd(audience, [SchemaAudience]),
        'availableChannel':
            convertToJsonLd(availableChannel, [SchemaServiceChannel]),
        'award': convertToJsonLd(award, [String]),
        'brand': convertToJsonLd(brand, [SchemaBrand, SchemaOrganization]),
        'broker': convertToJsonLd(broker, [SchemaOrganization, SchemaPerson]),
        'category': convertToJsonLd(category, [
          SchemaCategoryCode,
          SchemaPhysicalActivityCategory,
          String,
          String,
          SchemaThing
        ]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasOfferCatalog':
            convertToJsonLd(hasOfferCatalog, [SchemaOfferCatalog]),
        'hoursAvailable':
            convertToJsonLd(hoursAvailable, [SchemaOpeningHoursSpecification]),
        'isRelatedTo':
            convertToJsonLd(isRelatedTo, [SchemaProduct, SchemaService]),
        'isSimilarTo':
            convertToJsonLd(isSimilarTo, [SchemaProduct, SchemaService]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
        'produces': convertToJsonLd(produces, [SchemaThing]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'providerMobility': convertToJsonLd(providerMobility, [String]),
        'review': convertToJsonLd(review, [SchemaReview]),
        'serviceArea': convertToJsonLd(serviceArea,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace]),
        'serviceAudience': convertToJsonLd(serviceAudience, [SchemaAudience]),
        'serviceOutput': convertToJsonLd(serviceOutput, [SchemaThing]),
        'serviceType': convertToJsonLd(
            serviceType, [SchemaGovernmentBenefitsType, String]),
        'slogan': convertToJsonLd(slogan, [String]),
        'termsOfService': convertToJsonLd(termsOfService, [String, String]),
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
      };
}
