// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/location_feature_specification.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/accommodation.dart';
import 'package:schema_org/schemas/image_object.dart';

/// A FloorPlan is an explicit representation of a collection of similar
/// accommodations, allowing the provision of common information (room
/// counts, sizes, layout diagrams) and offers for rental or sale. In typical
/// use, some [SchemaApartmentComplex] has an [SchemaaccommodationFloorPlan]
/// which is a [SchemaFloorPlan]. A FloorPlan is always in the context of a
/// particular place, either a larger [SchemaApartmentComplex] or a single
/// [SchemaApartment]. The visual/spatial aspects of a floor plan (i.e. room
/// layout, [see wikipedia](https://en.wikipedia.org/wiki/Floor_plan)) can be
/// indicated using [Schemaimage].
/// See https://schema.org/FloorPlan
class SchemaFloorPlan extends SchemaIntangible {
  /// An amenity feature (e.g. a characteristic or service) of the
  /// Accommodation. This generic property does not make a statement about
  /// whether the feature is included in an offer for the main accommodation or
  /// available at extra costs.
  SchemaLocationFeatureSpecification? amenityFeature;

  /// The size of the accommodation, e.g. in square meter or squarefoot.
  /// Typical unit code(s): MTK for square meter, FTK for square foot, or YDK
  /// for square yard.
  SchemaQuantitativeValue? floorSize;

  /// Indicates some accommodation that this floor plan describes.
  SchemaAccommodation? isPlanForApartment;

  /// A schematic image showing the floorplan layout.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic layoutImage;

  /// Indicates the total (available plus unavailable) number of accommodation
  /// units in an [SchemaApartmentComplex], or the number of accommodation
  /// units for a specific [SchemaFloorPlan] (within its specific
  /// [SchemaApartmentComplex]). See also
  /// [SchemanumberOfAvailableAccommodationUnits].
  SchemaQuantitativeValue? numberOfAccommodationUnits;

  /// Indicates the number of available accommodation units in an
  /// [SchemaApartmentComplex], or the number of accommodation units for a
  /// specific [SchemaFloorPlan] (within its specific
  /// [SchemaApartmentComplex]). See also [SchemanumberOfAccommodationUnits].
  SchemaQuantitativeValue? numberOfAvailableAccommodationUnits;

  /// The total integer number of bathrooms in some [SchemaAccommodation],
  /// following real estate conventions as [documented in
  /// RESO](https://ddwiki.reso.org/display/DDW17/BathroomsTotalInteger+Field):
  /// "The simple sum of the number of bathrooms. For example for a property
  /// with two Full Bathrooms and one Half Bathroom, the Bathrooms Total
  /// Integer will be 3.". See also [SchemanumberOfRooms].
  int? numberOfBathroomsTotal;

  /// The total integer number of bedrooms in a some [SchemaAccommodation],
  /// [SchemaApartmentComplex] or [SchemaFloorPlan].
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfBedrooms;

  /// Number of full bathrooms - The total number of full and ¾ bathrooms in an
  /// [SchemaAccommodation]. This corresponds to the [BathroomsFull field in
  /// RESO](https://ddwiki.reso.org/display/DDW17/BathroomsFull+Field).
  num? numberOfFullBathrooms;

  /// Number of partial bathrooms - The total number of half and ¼ bathrooms in
  /// an [SchemaAccommodation]. This corresponds to the [BathroomsPartial field
  /// in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsPartial+Field).
  num? numberOfPartialBathrooms;

  /// The number of rooms (excluding bathrooms and closets) of the
  /// accommodation or lodging business. Typical unit code(s): ROM for room or
  /// C62 for no unit. The type of room can be put in the unitText property of
  /// the QuantitativeValue.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfRooms;

  /// Indicates whether pets are allowed to enter the accommodation or lodging
  /// business. More detailed information can be put in a text value.
  ///
  /// Supported types: [String], [bool]
  dynamic petsAllowed;

  /// Create a new instance of [SchemaFloorPlan]
  SchemaFloorPlan({
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
  });

  /// Serialize [SchemaFloorPlan] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'FloorPlan',
        'amenityFeature': convertToJsonLd(amenityFeature),
        'floorSize': convertToJsonLd(floorSize),
        'isPlanForApartment': convertToJsonLd(isPlanForApartment),
        'layoutImage': convertToJsonLd(
            layoutImage, (v) => v is SchemaImageObject || v is String),
        'numberOfAccommodationUnits':
            convertToJsonLd(numberOfAccommodationUnits),
        'numberOfAvailableAccommodationUnits':
            convertToJsonLd(numberOfAvailableAccommodationUnits),
        'numberOfBathroomsTotal': convertToJsonLd(numberOfBathroomsTotal),
        'numberOfBedrooms': convertToJsonLd(
            numberOfBedrooms, (v) => v is SchemaQuantitativeValue || v is num),
        'numberOfFullBathrooms': convertToJsonLd(numberOfFullBathrooms),
        'numberOfPartialBathrooms': convertToJsonLd(numberOfPartialBathrooms),
        'numberOfRooms': convertToJsonLd(
            numberOfRooms, (v) => v is SchemaQuantitativeValue || v is num),
        'petsAllowed':
            convertToJsonLd(petsAllowed, (v) => v is String || v is bool),
      });
}
