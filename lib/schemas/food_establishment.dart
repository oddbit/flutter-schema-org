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
import 'package:schema_org/schemas/menu.dart';
import 'package:schema_org/schemas/rating.dart';

/// A food-related business.
/// See https://schema.org/FoodEstablishment
class SchemaFoodEstablishment extends SchemaLocalBusiness {
  /// Indicates whether a FoodEstablishment accepts reservations. Values can be
  /// Boolean, an URL at which reservations can be made or (for backwards
  /// compatibility) the strings ```Yes``` or ```No```.
  ///
  /// Supported types: [String], [bool]
  dynamic acceptsReservations;

  /// Either the actual menu as a structured representation, as text, or a URL
  /// of the menu.
  ///
  /// Supported types: [SchemaMenu], [String]
  dynamic hasMenu;

  /// Either the actual menu as a structured representation, as text, or a URL
  /// of the menu.
  ///
  /// Supported types: [SchemaMenu], [String]
  @Deprecated('Use [hasMenu]. See https://schema.org/menu')
  dynamic menu;

  /// The cuisine of the restaurant.
  String? servesCuisine;

  /// An official rating for a lodging business or food establishment, e.g.
  /// from national associations or standards bodies. Use the author property
  /// to indicate the rating organization, e.g. as an Organization with name
  /// such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars).
  SchemaRating? starRating;

  /// Create a new instance of [SchemaFoodEstablishment]
  SchemaFoodEstablishment({
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
    this.acceptsReservations,
    this.hasMenu,
    this.menu,
    this.servesCuisine,
    this.starRating,
  });

  /// Serialize [SchemaFoodEstablishment] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'FoodEstablishment',
        'acceptsReservations': convertToJsonLd(
            acceptsReservations, (v) => v is String || v is bool),
        'hasMenu':
            convertToJsonLd(hasMenu, (v) => v is SchemaMenu || v is String),
        'menu': convertToJsonLd(menu, (v) => v is SchemaMenu || v is String),
        'servesCuisine': convertToJsonLd(servesCuisine),
        'starRating': convertToJsonLd(starRating),
      });
}
