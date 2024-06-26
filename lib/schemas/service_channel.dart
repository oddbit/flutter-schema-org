import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/service.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// A means for accessing a service, e.g. a government office location, web
/// site, or phone number.
/// See https://schema.org/ServiceChannel
class SchemaServiceChannel implements SchemaSerializable {
  /// //tools.ietf.org/html/bcp47). See also [SchemainLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic availableLanguage;

  /// Estimated processing time for the service using this channel.
  SchemaDuration? processingTime;

  /// The service provided by this channel.
  SchemaService? providesService;

  /// The location (e.g. civic structure, local business, etc.) where a person
  /// can go to access the service.
  SchemaPlace? serviceLocation;

  /// The phone number to use to access the service.
  SchemaContactPoint? servicePhone;

  /// The address for accessing the service by mail.
  SchemaPostalAddress? servicePostalAddress;

  /// The number to access the service by text message.
  SchemaContactPoint? serviceSmsNumber;

  /// The website to access the service.
  String? serviceUrl;

  /// //schema.org/docs/styleguide.html">style guide</a>.
  ///
  /// Supported types: [String], [String]
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.
  ///
  /// Supported types: [String], [SchemaTextObject]
  dynamic description;

  /// A sub property of description. A short description of the item used to
  /// disambiguate from other, similar items. Information from other properties
  /// (in particular, name) may be necessary for the description to be useful
  /// for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for any kind of
  /// [SchemaThing], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides
  /// dedicated properties for representing many of these, either as textual
  /// strings or as URL (URI) links. See [background
  /// notes](/docs/datamodel.html#identifierBg) for more details.
  ///
  /// Supported types: [SchemaPropertyValue], [String], [String]
  dynamic identifier;

  /// An image of the item. This can be a [SchemaURL] or a fully described
  /// [SchemaImageObject].
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is the main
  /// entity being described. See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// Indicates a potential Action, which describes an idealized action in
  /// which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the item's
  /// identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
  /// official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaEvent]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaServiceChannel]
  SchemaServiceChannel({
    this.availableLanguage,
    this.processingTime,
    this.providesService,
    this.serviceLocation,
    this.servicePhone,
    this.servicePostalAddress,
    this.serviceSmsNumber,
    this.serviceUrl,
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

  /// Serialize [SchemaServiceChannel] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'ServiceChannel',
        'availableLanguage':
            convertToJsonLd(availableLanguage, [SchemaLanguage, String]),
        'processingTime': convertToJsonLd(processingTime, [SchemaDuration]),
        'providesService': convertToJsonLd(providesService, [SchemaService]),
        'serviceLocation': convertToJsonLd(serviceLocation, [SchemaPlace]),
        'servicePhone': convertToJsonLd(servicePhone, [SchemaContactPoint]),
        'servicePostalAddress':
            convertToJsonLd(servicePostalAddress, [SchemaPostalAddress]),
        'serviceSmsNumber':
            convertToJsonLd(serviceSmsNumber, [SchemaContactPoint]),
        'serviceUrl': convertToJsonLd(serviceUrl, [String]),
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
