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
import 'package:schema_org/schemas/item_list.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/demand.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// A trip or journey. An itinerary of visits to one or more places.
/// See https://schema.org/Trip
class SchemaTrip extends SchemaIntangible {
  /// The expected arrival time.
  String? arrivalTime;

  /// The expected departure time.
  String? departureTime;

  /// Destination(s) ( [SchemaPlace] ) that make up a trip. For a trip where
  /// destination order is important use [SchemaItemList] to specify that order
  /// (see examples).
  ///
  /// Supported types: [SchemaItemList], [SchemaPlace]
  dynamic itinerary;

  /// An offer to provide this item&#x2014;for example, an offer to sell a
  /// product, rent the DVD of a movie, perform a service, or give away tickets
  /// to an event. Use [SchemabusinessFunction] to indicate the kind of
  /// transaction offered, i.e. sell, lease, etc. This property can also be
  /// used to describe a [SchemaDemand]. While this property is listed as
  /// expected on a number of common types, it can be used in others. In that
  /// case, using a second type, such as Product or a subtype of Product, can
  /// clarify the nature of the offer.
  ///
  /// Supported types: [SchemaDemand], [SchemaOffer]
  dynamic offers;

  /// Identifies that this [SchemaTrip] is a subTrip of another Trip. For
  /// example Day 1, Day 2, etc. of a multi-day trip.
  SchemaTrip? partOfTrip;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// Identifies a [SchemaTrip] that is a subTrip of this Trip. For example Day
  /// 1, Day 2, etc. of a multi-day trip.
  SchemaTrip? subTrip;

  /// The location of origin of the trip, prior to any destination(s).
  SchemaPlace? tripOrigin;

  /// Create a new instance of [SchemaTrip]
  SchemaTrip({
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
    this.arrivalTime,
    this.departureTime,
    this.itinerary,
    this.offers,
    this.partOfTrip,
    this.provider,
    this.subTrip,
    this.tripOrigin,
  });

  /// Serialize [SchemaTrip] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Trip',
        'arrivalTime': convertToJsonLd(arrivalTime, [String]),
        'departureTime': convertToJsonLd(departureTime, [String]),
        'itinerary': convertToJsonLd(itinerary, [SchemaItemList, SchemaPlace]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
        'partOfTrip': convertToJsonLd(partOfTrip, [SchemaTrip]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'subTrip': convertToJsonLd(subTrip, [SchemaTrip]),
        'tripOrigin': convertToJsonLd(tripOrigin, [SchemaPlace]),
      });
}
