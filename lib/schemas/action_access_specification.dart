library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/media_subscription.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// A set of requirements that must be fulfilled in order to perform
/// an Action.
/// See https://schema.org/ActionAccessSpecification
class SchemaActionAccessSpecification {
  /// The end of the availability of the product or service included
  /// in the offer.  Supported types: [String], [String], [String]
  String? availabilityEnds;

  /// The beginning of the availability of the product or service
  /// included in the offer.  Supported types: [String], [String],
  /// [String]
  String? availabilityStarts;

  /// A category for the item Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.  Supported types:
  /// [CategoryCode], [PhysicalActivityCategory], [String], [String],
  /// [Thing]
  dynamic category;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the
  /// place, or the GeoShape for the geo-political region(s) for which
  /// the offer or delivery charge specification is valid.\n\nSee also
  /// [[ineligibleRegion]]    Supported types: [GeoShape], [Place],
  /// [String]
  dynamic eligibleRegion;

  /// An Offer which must be accepted before the user can perform the
  /// Action For example, the user may need to buy a movie before
  /// being able to watch it.
  SchemaOffer? expectsAcceptanceOf;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the
  /// place, or the GeoShape for the geo-political region(s) for which
  /// the offer or delivery charge specification is not valid, e.g a
  /// region where the transaction is not allowed.\n\nSee also
  /// [[eligibleRegion]]    Supported types: [GeoShape], [Place],
  /// [String]
  dynamic ineligibleRegion;

  /// Indicates if use of the media require a subscription (either
  /// paid or free) Allowed values are ```true``` or ```false``` (note
  /// that an earlier version had 'yes', 'no').  Supported types:
  /// [MediaSubscription], [bool]
  dynamic requiresSubscription;

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

  /// Create a new instance of [SchemaActionAccessSpecification]
  SchemaActionAccessSpecification({
    this.availabilityEnds,
    this.availabilityStarts,
    this.category,
    this.eligibleRegion,
    this.expectsAcceptanceOf,
    this.ineligibleRegion,
    this.requiresSubscription,
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

  /// Serialize [SchemaActionAccessSpecification] to JSON-LD
  Map<String, dynamic> toJsonLd() => {
        '@context': 'https://schema.org',
        '@type': 'ActionAccessSpecification',
        'availabilityEnds':
            convertToJsonLd(availabilityEnds, [String, String, String]),
        'availabilityStarts':
            convertToJsonLd(availabilityStarts, [String, String, String]),
        'category': convertToJsonLd(category, [
          SchemaCategoryCode,
          SchemaPhysicalActivityCategory,
          String,
          String,
          SchemaThing
        ]),
        'eligibleRegion': convertToJsonLd(
            eligibleRegion, [SchemaGeoShape, SchemaPlace, String]),
        'expectsAcceptanceOf':
            convertToJsonLd(expectsAcceptanceOf, [SchemaOffer]),
        'ineligibleRegion': convertToJsonLd(
            ineligibleRegion, [SchemaGeoShape, SchemaPlace, String]),
        'requiresSubscription': convertToJsonLd(
            requiresSubscription, [SchemaMediaSubscription, bool]),
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
