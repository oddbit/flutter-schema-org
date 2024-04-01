library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schemas/qualitative_value.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/program_membership.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/reservation_status_type.dart';
import 'package:schema_org/schemas/ticket.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// This type is for information about actual reservations, e.g in
/// confirmation emails or HTML pages with individual confirmations
/// of reservations.
/// See https://schema.org/LodgingReservation
class SchemaLodgingReservation {
  /// The earliest someone may check into a lodging establishment.
  /// Supported types: [String], [String]
  String? checkinTime;

  /// The latest someone may check out of a lodging establishment.
  /// Supported types: [String], [String]
  String? checkoutTime;

  /// A full description of the lodging unit.
  String? lodgingUnitDescription;

  /// Textual description of the unit type (including suite vs room,
  /// size of bed, etc.).  Supported types: [QualitativeValue],
  /// [String]
  dynamic lodgingUnitType;

  /// The number of adults staying in the unit.  Supported types:
  /// [QuantitativeValue], [int]
  dynamic numAdults;

  /// The number of children staying in the unit.  Supported types:
  /// [QuantitativeValue], [int]
  dynamic numChildren;

  /// 'bookingAgent' is an out-dated term indicating a 'broker' that
  /// serves as a booking agent.  Supported types: [Organization],
  /// [Person]
  dynamic bookingAgent;

  /// The date and time the reservation was booked.
  String? bookingTime;

  /// An entity that arranges for an exchange between a buyer and a
  /// seller In most cases a broker never acquires or releases
  /// ownership of a product or service involved in an exchange If it
  /// is not clear whether an entity is a broker, seller, or buyer,
  /// the latter two terms are preferred.  Supported types:
  /// [Organization], [Person]
  dynamic broker;

  /// The date and time the reservation was modified.
  String? modifiedTime;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS)
  /// and other currency types, e.g "Ithaca HOUR".
  String? priceCurrency;

  /// Any membership in a frequent flyer, hotel loyalty program, etc
  /// being applied to the reservation.
  SchemaProgramMembership? programMembershipUsed;

  /// The service provider, service operator, or service performer;
  /// the goods producer Another party (a seller) may offer those
  /// services or goods on behalf of the provider A provider may also
  /// serve as the seller.  Supported types: [Organization], [Person]
  dynamic provider;

  /// The thing -- flight, event, restaurant, etc being reserved.
  SchemaThing? reservationFor;

  /// A unique identifier for the reservation.
  String? reservationId;

  /// The current status of the reservation.
  SchemaReservationStatusType? reservationStatus;

  /// A ticket associated with the reservation.
  SchemaTicket? reservedTicket;

  /// \n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030)
  /// to 'DIGIT NINE' (U+0039)) rather than superficially similar
  /// Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E))
  /// rather than ',' to indicate a decimal point Avoid using these
  /// symbols as a readability separator.  Supported types:
  /// [PriceSpecification], [String], [int]
  dynamic totalPrice;

  /// The person or organization the reservation or ticket is for.
  /// Supported types: [Organization], [Person]
  dynamic underName;

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

  /// Create a new instance of [SchemaLodgingReservation]
  SchemaLodgingReservation({
    this.checkinTime,
    this.checkoutTime,
    this.lodgingUnitDescription,
    this.lodgingUnitType,
    this.numAdults,
    this.numChildren,
    this.bookingAgent,
    this.bookingTime,
    this.broker,
    this.modifiedTime,
    this.priceCurrency,
    this.programMembershipUsed,
    this.provider,
    this.reservationFor,
    this.reservationId,
    this.reservationStatus,
    this.reservedTicket,
    this.totalPrice,
    this.underName,
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

  /// Serialize [SchemaLodgingReservation] to JSON-LD
  Map<String, dynamic> toJsonLd() => {
        '@context': 'https://schema.org',
        '@type': 'LodgingReservation',
        'checkinTime': convertToJsonLd(checkinTime, [String, String]),
        'checkoutTime': convertToJsonLd(checkoutTime, [String, String]),
        'lodgingUnitDescription':
            convertToJsonLd(lodgingUnitDescription, [String]),
        'lodgingUnitType':
            convertToJsonLd(lodgingUnitType, [SchemaQualitativeValue, String]),
        'numAdults': convertToJsonLd(numAdults, [SchemaQuantitativeValue, int]),
        'numChildren':
            convertToJsonLd(numChildren, [SchemaQuantitativeValue, int]),
        'bookingAgent':
            convertToJsonLd(bookingAgent, [SchemaOrganization, SchemaPerson]),
        'bookingTime': convertToJsonLd(bookingTime, [String]),
        'broker': convertToJsonLd(broker, [SchemaOrganization, SchemaPerson]),
        'modifiedTime': convertToJsonLd(modifiedTime, [String]),
        'priceCurrency': convertToJsonLd(priceCurrency, [String]),
        'programMembershipUsed':
            convertToJsonLd(programMembershipUsed, [SchemaProgramMembership]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'reservationFor': convertToJsonLd(reservationFor, [SchemaThing]),
        'reservationId': convertToJsonLd(reservationId, [String]),
        'reservationStatus':
            convertToJsonLd(reservationStatus, [SchemaReservationStatusType]),
        'reservedTicket': convertToJsonLd(reservedTicket, [SchemaTicket]),
        'totalPrice': convertToJsonLd(
            totalPrice, [SchemaPriceSpecification, String, int]),
        'underName':
            convertToJsonLd(underName, [SchemaOrganization, SchemaPerson]),
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