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
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/aggregate_rating.dart';
import 'package:schema_org/schemas/location_feature_specification.dart';
import 'package:schema_org/schemas/event.dart';
import 'package:schema_org/schemas/geo_coordinates.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/geospatial_geometry.dart';
import 'package:schema_org/schemas/certification.dart';
import 'package:schema_org/schemas/map.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/opening_hours_specification.dart';
import 'package:schema_org/schemas/photograph.dart';
import 'package:schema_org/schemas/review.dart';

/// Entities that have a somewhat fixed, physical extension.
/// See https://schema.org/Place
class SchemaPlace extends SchemaThing {
  /// //schema.org/gtin13, ...) will typically expect such data to be provided
  /// using those properties, rather than using the generic property/value
  /// mechanism.
  SchemaPropertyValue? additionalProperty;

  /// Physical address of the item.
  ///
  /// Supported types: [SchemaPostalAddress], [String]
  dynamic address;

  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

  /// An amenity feature (e.g. a characteristic or service) of the
  /// Accommodation. This generic property does not make a statement about
  /// whether the feature is included in an offer for the main accommodation or
  /// available at extra costs.
  SchemaLocationFeatureSpecification? amenityFeature;

  /// //www.starbucks.co.uk/store-locator/etc/detail/3047 the code "3047" is a
  /// branchCode for a particular branch.
  String? branchCode;

  /// The basic containment relation between a place and one that contains it.
  @Deprecated('Use [containedInPlace]. See https://schema.org/containedIn')
  SchemaPlace? containedIn;

  /// The basic containment relation between a place and one that contains it.
  SchemaPlace? containedInPlace;

  /// The basic containment relation between a place and another that it
  /// contains.
  SchemaPlace? containsPlace;

  /// Upcoming or past event associated with this place, organization, or
  /// action.
  SchemaEvent? event;

  /// Upcoming or past events associated with this place or organization.
  @Deprecated('Use [event]. See https://schema.org/events')
  SchemaEvent? events;

  /// The fax number.
  String? faxNumber;

  /// The geo coordinates of the place.
  ///
  /// Supported types: [SchemaGeoCoordinates], [SchemaGeoShape]
  dynamic geo;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoContains;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoCoveredBy;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoCovers;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoCrosses;

  /// //en.wikipedia.org/wiki/DE-9IM).)
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoDisjoint;

  /// //en.wikipedia.org/wiki/DE-9IM). "Two geometries are topologically equal
  /// if their interiors intersect and no part of the interior or boundary of
  /// one geometry intersects the exterior of the other" (a symmetric
  /// relationship).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoEquals;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoIntersects;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoOverlaps;

  /// //en.wikipedia.org/wiki/DE-9IM).)
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoTouches;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoWithin;

  /// //www.gs1.org/gln) (GLN, sometimes also referred to as International
  /// Location Number or ILN) of the respective organization, person, or place.
  /// The GLN is a 13-digit number used to identify parties and physical
  /// locations.
  String? globalLocationNumber;

  /// Certification information about a product, organization, service, place,
  /// or person.
  SchemaCertification? hasCertification;

  /// Indicates whether some facility (e.g. [SchemaFoodEstablishment],
  /// [SchemaCovidTestingFacility]) offers a service that can be used by
  /// driving through in a car. In the case of [SchemaCovidTestingFacility]
  /// such facilities could potentially help with social distancing from other
  /// potentially-infected users.
  bool? hasDriveThroughService;

  /// <ul><li>A Digital Link that contains a serial number (AI <code>21</code>)
  /// should only be present on instances of
  /// [SchemaIndividualProduct]</li><li>A Digital Link that contains a lot
  /// number (AI <code>10</code>) should be annotated as [SchemaSomeProducts]
  /// if only products from that lot are sold, or [SchemaIndividualProduct] if
  /// there is only a specific product.</li><li>A Digital Link that contains a
  /// global model number (AI <code>8013</code>) should be attached to a
  /// [SchemaProduct] or a [SchemaProductModel].</li></ul> Other item types
  /// should be adapted similarly.
  String? hasGS1DigitalLink;

  /// A URL to a map of the place.
  ///
  /// Supported types: [SchemaMap], [String]
  dynamic hasMap;

  /// A flag to signal that the item, event, or place is accessible for free.
  bool? isAccessibleForFree;

  /// The International Standard of Industrial Classification of All Economic
  /// Activities (ISIC), Revision 4 code for a particular organization,
  /// business person, or place.
  String? isicV4;

  /// Keywords or tags used to describe some item. Multiple textual entries in
  /// a keywords list are typically delimited by commas, or by repeating the
  /// property.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic keywords;

  /// //en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [num]
  dynamic latitude;

  /// An associated logo.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic logo;

  /// //en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [num]
  dynamic longitude;

  /// A URL to a map of the place.
  @Deprecated('Use [hasMap]. See https://schema.org/map')
  String? map;

  /// A URL to a map of the place.
  @Deprecated('Use [hasMap]. See https://schema.org/maps')
  String? maps;

  /// The total number of individuals that may attend an event or venue.
  int? maximumAttendeeCapacity;

  /// The opening hours of a certain place.
  SchemaOpeningHoursSpecification? openingHoursSpecification;

  /// A photograph of this place.
  ///
  /// Supported types: [SchemaImageObject], [SchemaPhotograph]
  dynamic photo;

  /// Photographs of this place.
  ///
  /// Supported types: [SchemaImageObject], [SchemaPhotograph]
  @Deprecated('Use [photo]. See https://schema.org/photos')
  dynamic photos;

  /// A flag to signal that the [SchemaPlace] is open to public visitors. If
  /// this property is omitted there is no assumed default boolean value.
  bool? publicAccess;

  /// A review of the item.
  SchemaReview? review;

  /// Review of the item.
  @Deprecated('Use [review]. See https://schema.org/reviews')
  SchemaReview? reviews;

  /// A slogan or motto associated with the item.
  String? slogan;

  /// Indicates whether it is allowed to smoke in the place, e.g. in the
  /// restaurant, hotel or hotel room.
  bool? smokingAllowed;

  /// The special opening hours of a certain place.\n\nUse this to explicitly
  /// override general opening hours brought in scope by
  /// [SchemaopeningHoursSpecification] or [SchemaopeningHours].
  SchemaOpeningHoursSpecification? specialOpeningHoursSpecification;

  /// The telephone number.
  String? telephone;

  /// A page providing information on how to book a tour of some [SchemaPlace],
  /// such as an [SchemaAccommodation] or [SchemaApartmentComplex] in a real
  /// estate setting, as well as other kinds of tours as appropriate.
  String? tourBookingPage;

  /// Create a new instance of [SchemaPlace]
  SchemaPlace({
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
    this.additionalProperty,
    this.address,
    this.aggregateRating,
    this.amenityFeature,
    this.branchCode,
    this.containedIn,
    this.containedInPlace,
    this.containsPlace,
    this.event,
    this.events,
    this.faxNumber,
    this.geo,
    this.geoContains,
    this.geoCoveredBy,
    this.geoCovers,
    this.geoCrosses,
    this.geoDisjoint,
    this.geoEquals,
    this.geoIntersects,
    this.geoOverlaps,
    this.geoTouches,
    this.geoWithin,
    this.globalLocationNumber,
    this.hasCertification,
    this.hasDriveThroughService,
    this.hasGS1DigitalLink,
    this.hasMap,
    this.isAccessibleForFree,
    this.isicV4,
    this.keywords,
    this.latitude,
    this.logo,
    this.longitude,
    this.map,
    this.maps,
    this.maximumAttendeeCapacity,
    this.openingHoursSpecification,
    this.photo,
    this.photos,
    this.publicAccess,
    this.review,
    this.reviews,
    this.slogan,
    this.smokingAllowed,
    this.specialOpeningHoursSpecification,
    this.telephone,
    this.tourBookingPage,
  });

  /// Serialize [SchemaPlace] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Place',
        'additionalProperty':
            convertToJsonLd(additionalProperty, [SchemaPropertyValue]),
        'address': convertToJsonLd(address, [SchemaPostalAddress, String]),
        'aggregateRating':
            convertToJsonLd(aggregateRating, [SchemaAggregateRating]),
        'amenityFeature': convertToJsonLd(
            amenityFeature, [SchemaLocationFeatureSpecification]),
        'branchCode': convertToJsonLd(branchCode, [String]),
        'containedIn': convertToJsonLd(containedIn, [SchemaPlace]),
        'containedInPlace': convertToJsonLd(containedInPlace, [SchemaPlace]),
        'containsPlace': convertToJsonLd(containsPlace, [SchemaPlace]),
        'event': convertToJsonLd(event, [SchemaEvent]),
        'events': convertToJsonLd(events, [SchemaEvent]),
        'faxNumber': convertToJsonLd(faxNumber, [String]),
        'geo': convertToJsonLd(geo, [SchemaGeoCoordinates, SchemaGeoShape]),
        'geoContains': convertToJsonLd(
            geoContains, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoCoveredBy': convertToJsonLd(
            geoCoveredBy, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoCovers':
            convertToJsonLd(geoCovers, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoCrosses': convertToJsonLd(
            geoCrosses, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoDisjoint': convertToJsonLd(
            geoDisjoint, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoEquals':
            convertToJsonLd(geoEquals, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoIntersects': convertToJsonLd(
            geoIntersects, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoOverlaps': convertToJsonLd(
            geoOverlaps, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoTouches': convertToJsonLd(
            geoTouches, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoWithin':
            convertToJsonLd(geoWithin, [SchemaGeospatialGeometry, SchemaPlace]),
        'globalLocationNumber': convertToJsonLd(globalLocationNumber, [String]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasDriveThroughService':
            convertToJsonLd(hasDriveThroughService, [bool]),
        'hasGS1DigitalLink': convertToJsonLd(hasGS1DigitalLink, [String]),
        'hasMap': convertToJsonLd(hasMap, [SchemaMap, String]),
        'isAccessibleForFree': convertToJsonLd(isAccessibleForFree, [bool]),
        'isicV4': convertToJsonLd(isicV4, [String]),
        'keywords': convertToJsonLd(keywords, [SchemaDefinedTerm, String]),
        'latitude': convertToJsonLd(latitude, [String, num]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
        'longitude': convertToJsonLd(longitude, [String, num]),
        'map': convertToJsonLd(map, [String]),
        'maps': convertToJsonLd(maps, [String]),
        'maximumAttendeeCapacity':
            convertToJsonLd(maximumAttendeeCapacity, [int]),
        'openingHoursSpecification': convertToJsonLd(
            openingHoursSpecification, [SchemaOpeningHoursSpecification]),
        'photo': convertToJsonLd(photo, [SchemaImageObject, SchemaPhotograph]),
        'photos':
            convertToJsonLd(photos, [SchemaImageObject, SchemaPhotograph]),
        'publicAccess': convertToJsonLd(publicAccess, [bool]),
        'review': convertToJsonLd(review, [SchemaReview]),
        'reviews': convertToJsonLd(reviews, [SchemaReview]),
        'slogan': convertToJsonLd(slogan, [String]),
        'smokingAllowed': convertToJsonLd(smokingAllowed, [bool]),
        'specialOpeningHoursSpecification': convertToJsonLd(
            specialOpeningHoursSpecification,
            [SchemaOpeningHoursSpecification]),
        'telephone': convertToJsonLd(telephone, [String]),
        'tourBookingPage': convertToJsonLd(tourBookingPage, [String]),
      });
}
