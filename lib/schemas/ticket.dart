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
import 'package:schema_org/schemas/seat.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/person.dart';

/// Used to describe a ticket to an event, a flight, a bus ride, etc.
/// See https://schema.org/Ticket
class SchemaTicket extends SchemaIntangible {
  /// The date the ticket was issued.
  String? dateIssued;

  /// The organization issuing the item, for example a [SchemaPermit],
  /// [SchemaTicket], or [SchemaCertification].
  SchemaOrganization? issuedBy;

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

  /// The unique identifier for the ticket.
  String? ticketNumber;

  /// Reference to an asset (e.g., Barcode, QR code image or PDF) usable for
  /// entrance.
  String? ticketToken;

  /// The seat associated with the ticket.
  SchemaSeat? ticketedSeat;

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

  /// Create a new instance of [SchemaTicket]
  SchemaTicket({
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
    this.dateIssued,
    this.issuedBy,
    this.priceCurrency,
    this.ticketNumber,
    this.ticketToken,
    this.ticketedSeat,
    this.totalPrice,
    this.underName,
  });

  /// Serialize [SchemaTicket] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Ticket',
        'dateIssued': convertToJsonLd(dateIssued),
        'issuedBy': convertToJsonLd(issuedBy),
        'priceCurrency': convertToJsonLd(priceCurrency),
        'ticketNumber': convertToJsonLd(ticketNumber),
        'ticketToken': convertToJsonLd(ticketToken),
        'ticketedSeat': convertToJsonLd(ticketedSeat),
        'totalPrice': convertToJsonLd(totalPrice,
            (v) => v is SchemaPriceSpecification || v is String || v is num),
        'underName': convertToJsonLd(
            underName, (v) => v is SchemaOrganization || v is SchemaPerson),
      });
}
