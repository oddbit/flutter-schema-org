// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/local_business.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/rating.dart';

/// A lodging business, such as a motel, hotel, or inn.
/// See https://schema.org/LodgingBusiness
class SchemaLodgingBusiness extends SchemaLocalBusiness {
  /// An intended audience, i.e. a group for whom something was created.
  SchemaAudience? audience;

  /// A language someone may use with or at the item, service or place. Please
  /// use one of the language codes from the [IETF BCP 47
  /// standard](http://tools.ietf.org/html/bcp47). See also [SchemainLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic availableLanguage;

  /// The earliest someone may check into a lodging establishment.
  String? checkinTime;

  /// The latest someone may check out of a lodging establishment.
  String? checkoutTime;

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

  /// An official rating for a lodging business or food establishment, e.g.
  /// from national associations or standards bodies. Use the author property
  /// to indicate the rating organization, e.g. as an Organization with name
  /// such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars).
  SchemaRating? starRating;

  /// Create a new instance of [SchemaLodgingBusiness]
  SchemaLodgingBusiness({
    super.acceptedPaymentMethod,
    super.actionableFeedbackPolicy,
    super.additionalProperty,
    super.additionalType,
    super.address,
    super.agentInteractionStatistic,
    super.aggregateRating,
    super.alternateName,
    super.alumni,
    super.amenityFeature,
    super.areaServed,
    super.authorizedRepresentative,
    super.award,
    super.awards,
    super.branchCode,
    super.branchOf,
    super.brand,
    super.companyRegistration,
    super.contactPoint,
    super.contactPoints,
    super.containedIn,
    super.containedInPlace,
    super.containsPlace,
    super.correctionsPolicy,
    super.currenciesAccepted,
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
    super.floorLevel,
    super.founder,
    super.founders,
    super.foundingDate,
    super.foundingLocation,
    super.funder,
    super.funding,
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
    super.hasCredential,
    super.hasDriveThroughService,
    super.hasGS1DigitalLink,
    super.hasMap,
    super.hasMemberProgram,
    super.hasMerchantReturnPolicy,
    super.hasOfferCatalog,
    super.hasPOS,
    super.hasProductReturnPolicy,
    super.hasShippingService,
    super.identifier,
    super.image,
    super.interactionStatistic,
    super.isAccessibleForFree,
    super.isicV4,
    super.iso6523Code,
    super.keywords,
    super.knowsAbout,
    super.knowsLanguage,
    super.latitude,
    super.legalAddress,
    super.legalName,
    super.legalRepresentative,
    super.leiCode,
    super.location,
    super.logo,
    super.longitude,
    super.mainEntityOfPage,
    super.makesOffer,
    super.map,
    super.maps,
    super.maximumAttendeeCapacity,
    super.member,
    super.memberOf,
    super.members,
    super.naics,
    super.name,
    super.nonprofitStatus,
    super.numberOfEmployees,
    super.openingHours,
    super.openingHoursSpecification,
    super.owner,
    super.ownershipFundingInfo,
    super.owns,
    super.parentOrganization,
    super.paymentAccepted,
    super.photo,
    super.photos,
    super.potentialAction,
    super.priceRange,
    super.publicAccess,
    super.publishingPrinciples,
    super.review,
    super.reviews,
    super.sameAs,
    super.seeks,
    super.serviceArea,
    super.skills,
    super.slogan,
    super.smokingAllowed,
    super.specialOpeningHoursSpecification,
    super.sponsor,
    super.subOrganization,
    super.subjectOf,
    super.taxID,
    super.telephone,
    super.tourBookingPage,
    super.unnamedSourcesPolicy,
    super.url,
    super.vatID,
    this.audience,
    this.availableLanguage,
    this.checkinTime,
    this.checkoutTime,
    this.numberOfRooms,
    this.petsAllowed,
    this.starRating,
  });

  /// Serialize [SchemaLodgingBusiness] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'LodgingBusiness',
        'audience': convertToJsonLd(audience),
        'availableLanguage': convertToJsonLd(
            availableLanguage, (v) => v is SchemaLanguage || v is String),
        'checkinTime': convertToJsonLd(checkinTime),
        'checkoutTime': convertToJsonLd(checkoutTime),
        'numberOfRooms': convertToJsonLd(
            numberOfRooms, (v) => v is SchemaQuantitativeValue || v is num),
        'petsAllowed':
            convertToJsonLd(petsAllowed, (v) => v is String || v is bool),
        'starRating': convertToJsonLd(starRating),
      });
}
