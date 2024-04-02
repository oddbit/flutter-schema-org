library schema_org;

import 'package:schema_org/utils.dart';
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/location_feature_specification.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/accommodation.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// //en.wikipedia.org/wiki/Floor_plan)) can be indicated using
/// [[image]].
/// See https://schema.org/FloorPlan
class SchemaFloorPlan implements SchemaSerializable {
  /// An amenity feature (e.g a characteristic or service) of the
  /// Accommodation This generic property does not make a statement
  /// about whether the feature is included in an offer for the main
  /// accommodation or available at extra costs.
  SchemaLocationFeatureSpecification? amenityFeature;

  /// MTK for square meter, FTK for square foot, or YDK for square
  /// yard.
  SchemaQuantitativeValue? floorSize;

  /// Indicates some accommodation that this floor plan describes.
  SchemaAccommodation? isPlanForApartment;

  /// A schematic image showing the floorplan layout.  Supported
  /// types: [ImageObject], [String]
  dynamic layoutImage;

  /// Indicates the total (available plus unavailable) number of
  /// accommodation units in an [[ApartmentComplex]], or the number of
  /// accommodation units for a specific [[FloorPlan]] (within its
  /// specific [[ApartmentComplex]]) See also
  /// [[numberOfAvailableAccommodationUnits]].
  SchemaQuantitativeValue? numberOfAccommodationUnits;

  /// Indicates the number of available accommodation units in an
  /// [[ApartmentComplex]], or the number of accommodation units for a
  /// specific [[FloorPlan]] (within its specific
  /// [[ApartmentComplex]]) See also [[numberOfAccommodationUnits]].
  SchemaQuantitativeValue? numberOfAvailableAccommodationUnits;

  /// "The simple sum of the number of bathrooms For example for a
  /// property with two Full Bathrooms and one Half Bathroom, the
  /// Bathrooms Total Integer will be 3." See also [[numberOfRooms]].
  int? numberOfBathroomsTotal;

  /// The total integer number of bedrooms in a some
  /// [[Accommodation]], [[ApartmentComplex]] or [[FloorPlan]].
  /// Supported types: [QuantitativeValue], [int]
  dynamic numberOfBedrooms;

  /// //ddwiki.reso.org/display/DDW17/BathroomsFull+Field).
  int? numberOfFullBathrooms;

  /// //ddwiki.reso.org/display/DDW17/BathroomsPartial+Field).
  int? numberOfPartialBathrooms;

  /// ROM for room or C62 for no unit The type of room can be put in
  /// the unitText property of the QuantitativeValue.  Supported
  /// types: [QuantitativeValue], [int]
  dynamic numberOfRooms;

  /// Indicates whether pets are allowed to enter the accommodation or
  /// lodging business More detailed information can be put in a text
  /// value.  Supported types: [String], [bool]
  dynamic petsAllowed;

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

  /// Create a new instance of [SchemaFloorPlan]
  SchemaFloorPlan({
    this.amenityFeature,
    this.floorSize,
    this.isPlanForApartment,
    this.layoutImage,
    this.numberOfAccommodationUnits,
    this.numberOfAvailableAccommodationUnits,
    this.numberOfBathroomsTotal,
    this.numberOfBedrooms,
    this.numberOfFullBathrooms,
    this.numberOfPartialBathrooms,
    this.numberOfRooms,
    this.petsAllowed,
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

  /// Serialize [SchemaFloorPlan] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'FloorPlan',
        'amenityFeature': convertToJsonLd(
            amenityFeature, [SchemaLocationFeatureSpecification]),
        'floorSize': convertToJsonLd(floorSize, [SchemaQuantitativeValue]),
        'isPlanForApartment':
            convertToJsonLd(isPlanForApartment, [SchemaAccommodation]),
        'layoutImage':
            convertToJsonLd(layoutImage, [SchemaImageObject, String]),
        'numberOfAccommodationUnits': convertToJsonLd(
            numberOfAccommodationUnits, [SchemaQuantitativeValue]),
        'numberOfAvailableAccommodationUnits': convertToJsonLd(
            numberOfAvailableAccommodationUnits, [SchemaQuantitativeValue]),
        'numberOfBathroomsTotal':
            convertToJsonLd(numberOfBathroomsTotal, [int]),
        'numberOfBedrooms':
            convertToJsonLd(numberOfBedrooms, [SchemaQuantitativeValue, int]),
        'numberOfFullBathrooms': convertToJsonLd(numberOfFullBathrooms, [int]),
        'numberOfPartialBathrooms':
            convertToJsonLd(numberOfPartialBathrooms, [int]),
        'numberOfRooms':
            convertToJsonLd(numberOfRooms, [SchemaQuantitativeValue, int]),
        'petsAllowed': convertToJsonLd(petsAllowed, [String, bool]),
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
