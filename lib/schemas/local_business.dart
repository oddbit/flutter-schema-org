// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/location_feature_specification.dart';
import 'package:schema_org/schemas/geo_coordinates.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/geospatial_geometry.dart';
import 'package:schema_org/schemas/map.dart';
import 'package:schema_org/schemas/opening_hours_specification.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/photograph.dart';

/// A particular physical business or branch of an organization. Examples of
/// LocalBusiness include a restaurant, a particular branch of a restaurant
/// chain, a branch of a bank, a medical practice, a club, a bowling alley,
/// etc.
/// See https://schema.org/LocalBusiness
class SchemaLocalBusiness extends SchemaOrganization implements SchemaPlace {
  /// The larger organization that this local business is a branch of, if any.
  /// Not to be confused with (anatomical) [Schemabranch].
  @Deprecated('Use [parentOrganization]. See https://schema.org/branchOf')
  SchemaOrganization? branchOf;

  /// The currency accepted.\n\nUse standard formats: [ISO 4217 currency
  /// format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR".
  String? currenciesAccepted;

  /// The floor level for an [SchemaAccommodation] in a multi-storey building.
  /// Since counting systems [vary
  /// internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations),
  /// the local system should be used where possible.
  String? floorLevel;

  /// The general opening hours for a business. Opening hours can be specified
  /// as a weekly time range, starting with days, then times per day. Multiple
  /// days can be listed with commas ',' separating each day. Day or time
  /// ranges are specified using a hyphen '-'.\n\n* Days are specified using
  /// the following two-letter combinations: ```Mo```, ```Tu```, ```We```,
  /// ```Th```, ```Fr```, ```Sa```, ```Su```.\n* Times are specified using
  /// 24:00 format. For example, 3pm is specified as ```15:00```, 10am as
  /// ```10:00```. \n* Here is an example: <code>&lt;time
  /// itemprop="openingHours" datetime=&quot;Tu,Th
  /// 16:00-20:00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.\n*
  /// If a business is open 7 days a week, then it can be specified as
  /// <code>&lt;time itemprop=&quot;openingHours&quot;
  /// datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all
  /// day&lt;/time&gt;</code>.
  String? openingHours;

  /// Cash, Credit Card, Cryptocurrency, Local Exchange Tradings System, etc.
  String? paymentAccepted;

  /// The price range of the business, for example ```$$$```.
  String? priceRange;

  /// A property-value pair representing an additional characteristic of the
  /// entity, e.g. a product feature or another characteristic for which there
  /// is no matching property in schema.org.\n\nNote: Publishers should be
  /// aware that applications designed to use specific schema.org properties
  /// (e.g. https://schema.org/width, https://schema.org/color,
  /// https://schema.org/gtin13, ...) will typically expect such data to be
  /// provided using those properties, rather than using the generic
  /// property/value mechanism.
  @override
  SchemaPropertyValue? additionalProperty;

  /// An amenity feature (e.g. a characteristic or service) of the
  /// Accommodation. This generic property does not make a statement about
  /// whether the feature is included in an offer for the main accommodation or
  /// available at extra costs.
  @override
  SchemaLocationFeatureSpecification? amenityFeature;

  /// A short textual code (also called "store code") that uniquely identifies
  /// a place of business. The code is typically assigned by the
  /// parentOrganization and used in structured URLs.\n\nFor example, in the
  /// URL http://www.starbucks.co.uk/store-locator/etc/detail/3047 the code
  /// "3047" is a branchCode for a particular branch.
  @override
  String? branchCode;

  /// The basic containment relation between a place and one that contains it.
  @override
  @Deprecated('Use [containedInPlace]. See https://schema.org/containedIn')
  SchemaPlace? containedIn;

  /// The basic containment relation between a place and one that contains it.
  @override
  SchemaPlace? containedInPlace;

  /// The basic containment relation between a place and another that it
  /// contains.
  @override
  SchemaPlace? containsPlace;

  /// The geo coordinates of the place.
  ///
  /// Supported types: [SchemaGeoCoordinates], [SchemaGeoShape]
  @override
  dynamic geo;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a containing geometry to a contained geometry. "a
  /// contains b iff no points of b lie in the exterior of a, and at least one
  /// point of the interior of b lies in the interior of a". As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoContains;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a geometry to another that covers it. As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoCoveredBy;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a covering geometry to a covered geometry. "Every
  /// point of b is a point of (the interior or boundary of) a". As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoCovers;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a geometry to another that crosses it: "a crosses b:
  /// they have some but not all interior points in common, and the dimension
  /// of the intersection is less than that of at least one of them". As
  /// defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoCrosses;

  /// Represents spatial relations in which two geometries (or the places they
  /// represent) are topologically disjoint: "they have no point in common.
  /// They form a set of disconnected geometries." (A symmetric relationship,
  /// as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoDisjoint;

  /// Represents spatial relations in which two geometries (or the places they
  /// represent) are topologically equal, as defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM). "Two geometries are
  /// topologically equal if their interiors intersect and no part of the
  /// interior or boundary of one geometry intersects the exterior of the
  /// other" (a symmetric relationship).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoEquals;

  /// Represents spatial relations in which two geometries (or the places they
  /// represent) have at least one point in common. As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoIntersects;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a geometry to another that geospatially overlaps it,
  /// i.e. they have some but not all points in common. As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoOverlaps;

  /// Represents spatial relations in which two geometries (or the places they
  /// represent) touch: "they have at least one boundary point in common, but
  /// no interior points." (A symmetric relationship, as defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoTouches;

  /// Represents a relationship between two geometries (or the places they
  /// represent), relating a geometry to one that contains it, i.e. it is
  /// inside (i.e. within) its interior. As defined in
  /// [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  @override
  dynamic geoWithin;

  /// Indicates whether some facility (e.g. [SchemaFoodEstablishment],
  /// [SchemaCovidTestingFacility]) offers a service that can be used by
  /// driving through in a car. In the case of [SchemaCovidTestingFacility]
  /// such facilities could potentially help with social distancing from other
  /// potentially-infected users.
  @override
  bool? hasDriveThroughService;

  /// A URL to a map of the place.
  ///
  /// Supported types: [SchemaMap], [String]
  @override
  dynamic hasMap;

  /// A flag to signal that the item, event, or place is accessible for free.
  @override
  bool? isAccessibleForFree;

  /// The latitude of a location. For example ```37.42242``` ([WGS
  /// 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [num]
  @override
  dynamic latitude;

  /// The longitude of a location. For example ```-122.08585``` ([WGS
  /// 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [num]
  @override
  dynamic longitude;

  /// A URL to a map of the place.
  @override
  @Deprecated('Use [hasMap]. See https://schema.org/map')
  String? map;

  /// A URL to a map of the place.
  @override
  @Deprecated('Use [hasMap]. See https://schema.org/maps')
  String? maps;

  /// The total number of individuals that may attend an event or venue.
  @override
  int? maximumAttendeeCapacity;

  /// The opening hours of a certain place.
  @override
  SchemaOpeningHoursSpecification? openingHoursSpecification;

  /// A photograph of this place.
  ///
  /// Supported types: [SchemaImageObject], [SchemaPhotograph]
  @override
  dynamic photo;

  /// Photographs of this place.
  ///
  /// Supported types: [SchemaImageObject], [SchemaPhotograph]
  @override
  @Deprecated('Use [photo]. See https://schema.org/photos')
  dynamic photos;

  /// A flag to signal that the [SchemaPlace] is open to public visitors. If
  /// this property is omitted there is no assumed default boolean value.
  @override
  bool? publicAccess;

  /// Indicates whether it is allowed to smoke in the place, e.g. in the
  /// restaurant, hotel or hotel room.
  @override
  bool? smokingAllowed;

  /// The special opening hours of a certain place.\n\nUse this to explicitly
  /// override general opening hours brought in scope by
  /// [SchemaopeningHoursSpecification] or [SchemaopeningHours].
  @override
  SchemaOpeningHoursSpecification? specialOpeningHoursSpecification;

  /// A page providing information on how to book a tour of some [SchemaPlace],
  /// such as an [SchemaAccommodation] or [SchemaApartmentComplex] in a real
  /// estate setting, as well as other kinds of tours as appropriate.
  @override
  String? tourBookingPage;

  /// Create a new instance of [SchemaLocalBusiness]
  SchemaLocalBusiness({
    super.acceptedPaymentMethod,
    super.actionableFeedbackPolicy,
    super.additionalType,
    super.address,
    super.agentInteractionStatistic,
    super.aggregateRating,
    super.alternateName,
    super.alumni,
    super.areaServed,
    super.authorizedRepresentative,
    super.award,
    super.awards,
    super.brand,
    super.companyRegistration,
    super.contactPoint,
    super.contactPoints,
    super.correctionsPolicy,
    super.department,
    super.description,
    super.disambiguatingDescription,
    super.dissolutionDate,
    super.diversityPolicy,
    super.diversityStaffingReport,
    super.duns,
    super.email,
    super.employee,
    super.employees,
    super.ethicsPolicy,
    super.event,
    super.events,
    super.faxNumber,
    super.founder,
    super.founders,
    super.foundingDate,
    super.foundingLocation,
    super.funder,
    super.funding,
    super.globalLocationNumber,
    super.hasCertification,
    super.hasCredential,
    super.hasGS1DigitalLink,
    super.hasMemberProgram,
    super.hasMerchantReturnPolicy,
    super.hasOfferCatalog,
    super.hasPOS,
    super.hasProductReturnPolicy,
    super.hasShippingService,
    super.identifier,
    super.image,
    super.interactionStatistic,
    super.isicV4,
    super.iso6523Code,
    super.keywords,
    super.knowsAbout,
    super.knowsLanguage,
    super.legalAddress,
    super.legalName,
    super.legalRepresentative,
    super.leiCode,
    super.location,
    super.logo,
    super.mainEntityOfPage,
    super.makesOffer,
    super.member,
    super.memberOf,
    super.members,
    super.naics,
    super.name,
    super.nonprofitStatus,
    super.numberOfEmployees,
    super.owner,
    super.ownershipFundingInfo,
    super.owns,
    super.parentOrganization,
    super.potentialAction,
    super.publishingPrinciples,
    super.review,
    super.reviews,
    super.sameAs,
    super.seeks,
    super.serviceArea,
    super.skills,
    super.slogan,
    super.sponsor,
    super.subOrganization,
    super.subjectOf,
    super.taxID,
    super.telephone,
    super.unnamedSourcesPolicy,
    super.url,
    super.vatID,
    this.branchOf,
    this.currenciesAccepted,
    this.floorLevel,
    this.openingHours,
    this.paymentAccepted,
    this.priceRange,
    this.additionalProperty,
    this.amenityFeature,
    this.branchCode,
    this.containedIn,
    this.containedInPlace,
    this.containsPlace,
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
    this.hasDriveThroughService,
    this.hasMap,
    this.isAccessibleForFree,
    this.latitude,
    this.longitude,
    this.map,
    this.maps,
    this.maximumAttendeeCapacity,
    this.openingHoursSpecification,
    this.photo,
    this.photos,
    this.publicAccess,
    this.smokingAllowed,
    this.specialOpeningHoursSpecification,
    this.tourBookingPage,
  });

  /// Serialize [SchemaLocalBusiness] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'LocalBusiness',
        'branchOf': convertToJsonLd(branchOf),
        'currenciesAccepted': convertToJsonLd(currenciesAccepted),
        'floorLevel': convertToJsonLd(floorLevel),
        'openingHours': convertToJsonLd(openingHours),
        'paymentAccepted': convertToJsonLd(paymentAccepted),
        'priceRange': convertToJsonLd(priceRange),
        'additionalProperty': convertToJsonLd(additionalProperty),
        'amenityFeature': convertToJsonLd(amenityFeature),
        'branchCode': convertToJsonLd(branchCode),
        'containedIn': convertToJsonLd(containedIn),
        'containedInPlace': convertToJsonLd(containedInPlace),
        'containsPlace': convertToJsonLd(containsPlace),
        'geo': convertToJsonLd(
            geo, (v) => v is SchemaGeoCoordinates || v is SchemaGeoShape),
        'geoContains': convertToJsonLd(geoContains,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoCoveredBy': convertToJsonLd(geoCoveredBy,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoCovers': convertToJsonLd(geoCovers,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoCrosses': convertToJsonLd(geoCrosses,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoDisjoint': convertToJsonLd(geoDisjoint,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoEquals': convertToJsonLd(geoEquals,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoIntersects': convertToJsonLd(geoIntersects,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoOverlaps': convertToJsonLd(geoOverlaps,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoTouches': convertToJsonLd(geoTouches,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'geoWithin': convertToJsonLd(geoWithin,
            (v) => v is SchemaGeospatialGeometry || v is SchemaPlace),
        'hasDriveThroughService': convertToJsonLd(hasDriveThroughService),
        'hasMap': convertToJsonLd(hasMap, (v) => v is SchemaMap || v is String),
        'isAccessibleForFree': convertToJsonLd(isAccessibleForFree),
        'latitude': convertToJsonLd(latitude, (v) => v is String || v is num),
        'longitude': convertToJsonLd(longitude, (v) => v is String || v is num),
        'map': convertToJsonLd(map),
        'maps': convertToJsonLd(maps),
        'maximumAttendeeCapacity': convertToJsonLd(maximumAttendeeCapacity),
        'openingHoursSpecification': convertToJsonLd(openingHoursSpecification),
        'photo': convertToJsonLd(
            photo, (v) => v is SchemaImageObject || v is SchemaPhotograph),
        'photos': convertToJsonLd(
            photos, (v) => v is SchemaImageObject || v is SchemaPhotograph),
        'publicAccess': convertToJsonLd(publicAccess),
        'smokingAllowed': convertToJsonLd(smokingAllowed),
        'specialOpeningHoursSpecification':
            convertToJsonLd(specialOpeningHoursSpecification),
        'tourBookingPage': convertToJsonLd(tourBookingPage),
      });
}
