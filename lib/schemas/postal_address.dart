library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schemas/country.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/contact_point_option.dart';
import 'package:schema_org/schemas/opening_hours_specification.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// The mailing address.
/// See https://schema.org/PostalAddress
class SchemaPostalAddress {
  /// //en.wikipedia.org/wiki/ISO_3166-1).  Supported types:
  /// [Country], [String]
  dynamic addressCountry;

  /// The locality in which the street address is, and which is in the
  /// region For example, Mountain View.
  String? addressLocality;

  ///
  /// //en.wikipedia.org/wiki/List_of_administrative_divisions_by_country).
  String? addressRegion;

  /// The post office box number for PO box addresses.
  String? postOfficeBoxNumber;

  /// The postal code For example, 94043.
  String? postalCode;

  /// The street address For example, 1600 Amphitheatre Pkwy.
  String? streetAddress;

  /// The geographic area where a service or offered item is provided.
  /// Supported types: [AdministrativeArea], [GeoShape], [Place],
  /// [String]
  dynamic areaServed;

  /// //tools.ietf.org/html/bcp47) See also [[inLanguage]].  Supported
  /// types: [Language], [String]
  dynamic availableLanguage;

  /// An option available on this contact point (e.g a toll-free
  /// number or support for hearing-impaired callers).
  SchemaContactPointOption? contactOption;

  /// A person or organization can have different contact points, for
  /// different purposes For example, a sales contact point, a PR
  /// contact point and so on This property is used to specify the
  /// kind of contact point.
  String? contactType;

  /// Email address.
  String? email;

  /// The fax number.
  String? faxNumber;

  /// The hours during which this service or contact is available.
  SchemaOpeningHoursSpecification? hoursAvailable;

  /// The product or service this support contact point is related to
  /// (such as product support for a particular product line) This can
  /// be a specific product or product line (e.g "iPhone") or a
  /// general category of products or services (e.g "smartphones").
  /// Supported types: [Product], [String]
  dynamic productSupported;

  /// The geographic area where the service is provided.  Supported
  /// types: [AdministrativeArea], [GeoShape], [Place]
  dynamic serviceArea;

  /// The telephone number.
  String? telephone;

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

  /// Create a new instance of [SchemaPostalAddress]
  SchemaPostalAddress({
    this.addressCountry,
    this.addressLocality,
    this.addressRegion,
    this.postOfficeBoxNumber,
    this.postalCode,
    this.streetAddress,
    this.areaServed,
    this.availableLanguage,
    this.contactOption,
    this.contactType,
    this.email,
    this.faxNumber,
    this.hoursAvailable,
    this.productSupported,
    this.serviceArea,
    this.telephone,
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

  /// Serialize [SchemaPostalAddress] to JSON-LD
  Map<String, dynamic> toJsonLd() => {
        '@context': 'https://schema.org',
        '@type': 'PostalAddress',
        'addressCountry':
            convertToJsonLd(addressCountry, [SchemaCountry, String]),
        'addressLocality': convertToJsonLd(addressLocality, [String]),
        'addressRegion': convertToJsonLd(addressRegion, [String]),
        'postOfficeBoxNumber': convertToJsonLd(postOfficeBoxNumber, [String]),
        'postalCode': convertToJsonLd(postalCode, [String]),
        'streetAddress': convertToJsonLd(streetAddress, [String]),
        'areaServed': convertToJsonLd(areaServed,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace, String]),
        'availableLanguage':
            convertToJsonLd(availableLanguage, [SchemaLanguage, String]),
        'contactOption':
            convertToJsonLd(contactOption, [SchemaContactPointOption]),
        'contactType': convertToJsonLd(contactType, [String]),
        'email': convertToJsonLd(email, [String]),
        'faxNumber': convertToJsonLd(faxNumber, [String]),
        'hoursAvailable':
            convertToJsonLd(hoursAvailable, [SchemaOpeningHoursSpecification]),
        'productSupported':
            convertToJsonLd(productSupported, [SchemaProduct, String]),
        'serviceArea': convertToJsonLd(serviceArea,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace]),
        'telephone': convertToJsonLd(telephone, [String]),
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