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
import 'package:schema_org/schemas/how_to.dart';
import 'package:schema_org/schemas/action_status_type.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/postal_address.dart';
import 'package:schema_org/schemas/virtual_location.dart';
import 'package:schema_org/schemas/entry_point.dart';

/// An action performed by a direct agent and indirect participants upon a
/// direct object. Optionally happens at a location with the help of an
/// inanimate instrument. The execution of the action may produce a result.
/// Specific action sub-type documentation specifies the exact expectation of
/// each argument/role.\n\nSee also [blog
/// post](https://blog.schema.org/2014/04/16/announcing-schema-org-actions/)
/// and [Actions overview document](https://schema.org/docs/actions.html).
/// See https://schema.org/Action
class SchemaAction extends SchemaThing {
  /// Description of the process by which the action was performed.
  SchemaHowTo? actionProcess;

  /// Indicates the current disposition of the Action.
  SchemaActionStatusType? actionStatus;

  /// The direct performer or driver of the action (animate or inanimate). E.g.
  /// *John* wrote a book.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic agent;

  /// The endTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to end. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from January to *December*. For media, including audio
  /// and video, it's the time offset of the end of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  String? endTime;

  /// For failed actions, more information on the cause of the failure.
  /// Consider using the Error type.
  SchemaThing? error;

  /// The object that helped the agent perform the action. E.g. John wrote a
  /// book with *a pen*.
  SchemaThing? instrument;

  /// The location of, for example, where an event is happening, where an
  /// organization is located, or where an action takes place.
  ///
  /// Supported types: [SchemaPlace], [SchemaPostalAddress], [String],
  /// [SchemaVirtualLocation]
  dynamic location;

  /// The object upon which the action is carried out, whose state is kept
  /// intact or changed. Also known as the semantic roles patient, affected or
  /// undergoer (which change their state) or theme (which doesn't). E.g. John
  /// read *a book*.
  SchemaThing? object;

  /// Other co-agents that participated in the action indirectly. E.g. John
  /// wrote a book with *Steve*.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic participant;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// The result produced in the action. E.g. John wrote *a book*.
  SchemaThing? result;

  /// The startTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to start. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from *January* to December. For media, including audio
  /// and video, it's the time offset of the start of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  String? startTime;

  /// Indicates a target EntryPoint, or url, for an Action.
  ///
  /// Supported types: [SchemaEntryPoint], [String]
  dynamic target;

  /// Create a new instance of [SchemaAction]
  SchemaAction({
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
    this.actionProcess,
    this.actionStatus,
    this.agent,
    this.endTime,
    this.error,
    this.instrument,
    this.location,
    this.object,
    this.participant,
    this.provider,
    this.result,
    this.startTime,
    this.target,
  });

  /// Serialize [SchemaAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Action',
        'actionProcess': convertToJsonLd(actionProcess),
        'actionStatus': convertToJsonLd(actionStatus),
        'agent': convertToJsonLd(
            agent, (v) => v is SchemaOrganization || v is SchemaPerson),
        'endTime': convertToJsonLd(endTime),
        'error': convertToJsonLd(error),
        'instrument': convertToJsonLd(instrument),
        'location': convertToJsonLd(
            location,
            (v) =>
                v is SchemaPlace ||
                v is SchemaPostalAddress ||
                v is String ||
                v is SchemaVirtualLocation),
        'object': convertToJsonLd(object),
        'participant': convertToJsonLd(
            participant, (v) => v is SchemaOrganization || v is SchemaPerson),
        'provider': convertToJsonLd(
            provider, (v) => v is SchemaOrganization || v is SchemaPerson),
        'result': convertToJsonLd(result),
        'startTime': convertToJsonLd(startTime),
        'target': convertToJsonLd(
            target, (v) => v is SchemaEntryPoint || v is String),
      });
}
