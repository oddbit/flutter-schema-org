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
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/program_membership.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/reservation_status_type.dart';
import 'package:schema_org/schemas/ticket.dart';
import 'package:schema_org/schemas/price_specification.dart';

/// Describes a reservation for travel, dining or an event. Some reservations
/// require tickets. \n\nNote: This type is for information about actual
/// reservations, e.g. in confirmation emails or HTML pages with individual
/// confirmations of reservations. For offers of tickets, restaurant
/// reservations, flights, or rental cars, use [SchemaOffer].
/// See https://schema.org/Reservation
class SchemaReservation extends SchemaIntangible {
  /// 'bookingAgent' is an out-dated term indicating a 'broker' that serves as
  /// a booking agent.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @Deprecated('Use [broker]. See https://schema.org/bookingAgent')
  dynamic bookingAgent;

  /// The date and time the reservation was booked.
  String? bookingTime;

  /// An entity that arranges for an exchange between a buyer and a seller. In
  /// most cases a broker never acquires or releases ownership of a product or
  /// service involved in an exchange. If it is not clear whether an entity is
  /// a broker, seller, or buyer, the latter two terms are preferred.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic broker;

  /// The date and time the reservation was modified.
  String? modifiedTime;

  /// The currency of the price, or a price component when attached to
  /// [SchemaPriceSpecification] and its subtypes.\n\nUse standard formats:
  /// [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g.
  /// "USD"; [Ticker
  /// symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
  /// cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange
  /// Trading
  /// Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
  /// (LETS) and other currency types, e.g. "Ithaca HOUR".
  String? priceCurrency;

  /// Any membership in a frequent flyer, hotel loyalty program, etc. being
  /// applied to the reservation.
  SchemaProgramMembership? programMembershipUsed;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// The thing -- flight, event, restaurant, etc. being reserved.
  SchemaThing? reservationFor;

  /// A unique identifier for the reservation.
  String? reservationId;

  /// The current status of the reservation.
  SchemaReservationStatusType? reservationStatus;

  /// A ticket associated with the reservation.
  SchemaTicket? reservedTicket;

  /// The total price for the reservation or ticket, including applicable
  /// taxes, shipping, etc.\n\nUsage guidelines:\n\n* Use values from
  /// 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039))
  /// rather than superficially similar Unicode symbols.\n* Use '.' (Unicode
  /// 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid
  /// using these symbols as a readability separator.
  ///
  /// Supported types: [SchemaPriceSpecification], [String], [num]
  dynamic totalPrice;

  /// The person or organization the reservation or ticket is for.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic underName;

  /// Create a new instance of [SchemaReservation]
  SchemaReservation({
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
    this.bookingAgent,
    this.bookingTime,
    this.broker,
    this.modifiedTime,
    this.priceCurrency,
    this.programMembershipUsed,
    this.provider,
    this.reservationFor,
    this.reservationId,
    this.reservationStatus,
    this.reservedTicket,
    this.totalPrice,
    this.underName,
  });

  /// Serialize [SchemaReservation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Reservation',
        'bookingAgent': convertToJsonLd(
            bookingAgent, (v) => v is SchemaOrganization || v is SchemaPerson),
        'bookingTime': convertToJsonLd(bookingTime),
        'broker': convertToJsonLd(
            broker, (v) => v is SchemaOrganization || v is SchemaPerson),
        'modifiedTime': convertToJsonLd(modifiedTime),
        'priceCurrency': convertToJsonLd(priceCurrency),
        'programMembershipUsed': convertToJsonLd(programMembershipUsed),
        'provider': convertToJsonLd(
            provider, (v) => v is SchemaOrganization || v is SchemaPerson),
        'reservationFor': convertToJsonLd(reservationFor),
        'reservationId': convertToJsonLd(reservationId),
        'reservationStatus': convertToJsonLd(reservationStatus),
        'reservedTicket': convertToJsonLd(reservedTicket),
        'totalPrice': convertToJsonLd(totalPrice,
            (v) => v is SchemaPriceSpecification || v is String || v is num),
        'underName': convertToJsonLd(
            underName, (v) => v is SchemaOrganization || v is SchemaPerson),
      });
}
