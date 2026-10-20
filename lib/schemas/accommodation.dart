// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/floor_plan.dart';
import 'package:schema_org/schemas/bed_details.dart';
import 'package:schema_org/schemas/bed_type.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/duration.dart';

/// An accommodation is a place that can accommodate human beings, e.g. a
/// hotel room, a camping pitch, or a meeting room. Many accommodations are
/// for overnight stays, but this is not a mandatory requirement. For more
/// specific types of accommodations not defined in schema.org, one can use
/// [SchemaadditionalType] with external vocabularies. <br /><br /> See also
/// the <a href="/docs/hotels.html">dedicated document on the use of
/// schema.org for marking up hotels and other forms of accommodations</a>.
/// See https://schema.org/Accommodation
class SchemaAccommodation extends SchemaPlace {
  /// Category of an [SchemaAccommodation], following real estate conventions,
  /// e.g. RESO (see
  /// [PropertySubType](https://ddwiki.reso.org/display/DDW17/PropertySubType+Field),
  /// and
  /// [PropertyType](https://ddwiki.reso.org/display/DDW17/PropertyType+Field)
  /// fields for suggested values).
  String? accommodationCategory;

  /// A floorplan of some [SchemaAccommodation].
  SchemaFloorPlan? accommodationFloorPlan;

  /// The type of bed or beds included in the accommodation. For the single
  /// case of just one bed of a certain type, you use bed directly with a text.
  /// If you want to indicate the quantity of a certain kind of bed, use an
  /// instance of BedDetails. For more detailed information, use the
  /// amenityFeature property.
  ///
  /// Supported types: [SchemaBedDetails], [SchemaBedType], [String]
  dynamic bed;

  /// The floor level for an [SchemaAccommodation] in a multi-storey building.
  /// Since counting systems [vary
  /// internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations),
  /// the local system should be used where possible.
  String? floorLevel;

  /// The size of the accommodation, e.g. in square meter or squarefoot.
  /// Typical unit code(s): MTK for square meter, FTK for square foot, or YDK
  /// for square yard.
  SchemaQuantitativeValue? floorSize;

  /// Length of the lease for some [SchemaAccommodation], either particular to
  /// some [SchemaOffer] or in some cases intrinsic to the property.
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  dynamic leaseLength;

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

  /// The allowed total occupancy for the accommodation in persons (including
  /// infants etc). For individual accommodations, this is not necessarily the
  /// legal maximum but defines the permitted usage as per the contractual
  /// agreement (e.g. a double room used by a single person). Typical unit
  /// code(s): C62 for person.
  SchemaQuantitativeValue? occupancy;

  /// Indications regarding the permitted usage of the accommodation.
  String? permittedUsage;

  /// Indicates whether pets are allowed to enter the accommodation or lodging
  /// business. More detailed information can be put in a text value.
  ///
  /// Supported types: [String], [bool]
  dynamic petsAllowed;

  /// The year an [SchemaAccommodation] was constructed. This corresponds to
  /// the [YearBuilt field in
  /// RESO](https://ddwiki.reso.org/display/DDW17/YearBuilt+Field).
  num? yearBuilt;

  /// Create a new instance of [SchemaAccommodation]
  SchemaAccommodation({
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
    this.accommodationCategory,
    this.accommodationFloorPlan,
    this.bed,
    this.floorLevel,
    this.floorSize,
    this.leaseLength,
    this.numberOfBathroomsTotal,
    this.numberOfBedrooms,
    this.numberOfFullBathrooms,
    this.numberOfPartialBathrooms,
    this.numberOfRooms,
    this.occupancy,
    this.permittedUsage,
    this.petsAllowed,
    this.yearBuilt,
  });

  /// Serialize [SchemaAccommodation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Accommodation',
        'accommodationCategory': convertToJsonLd(accommodationCategory),
        'accommodationFloorPlan': convertToJsonLd(accommodationFloorPlan),
        'bed': convertToJsonLd(bed,
            (v) => v is SchemaBedDetails || v is SchemaBedType || v is String),
        'floorLevel': convertToJsonLd(floorLevel),
        'floorSize': convertToJsonLd(floorSize),
        'leaseLength': convertToJsonLd(leaseLength,
            (v) => v is SchemaDuration || v is SchemaQuantitativeValue),
        'numberOfBathroomsTotal': convertToJsonLd(numberOfBathroomsTotal),
        'numberOfBedrooms': convertToJsonLd(
            numberOfBedrooms, (v) => v is SchemaQuantitativeValue || v is num),
        'numberOfFullBathrooms': convertToJsonLd(numberOfFullBathrooms),
        'numberOfPartialBathrooms': convertToJsonLd(numberOfPartialBathrooms),
        'numberOfRooms': convertToJsonLd(
            numberOfRooms, (v) => v is SchemaQuantitativeValue || v is num),
        'occupancy': convertToJsonLd(occupancy),
        'permittedUsage': convertToJsonLd(permittedUsage),
        'petsAllowed':
            convertToJsonLd(petsAllowed, (v) => v is String || v is bool),
        'yearBuilt': convertToJsonLd(yearBuilt),
      });
}
