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

/// Represents additional information about a relationship or property. For
/// example a Role can be used to say that a 'member' role linking some
/// SportsTeam to a player occurred during a particular time period. Or that
/// a Person's 'actor' role in a Movie was for some particular characterName.
/// Such properties can be attached to a Role entity, which is then
/// associated with the main entities using ordinary properties like 'member'
/// or 'actor'.\n\nSee also [blog
/// post](https://blog.schema.org/2014/06/16/introducing-role/).
/// See https://schema.org/Role
class SchemaRole extends SchemaIntangible {
  /// The end date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? endDate;

  /// A position played, performed or filled by a person or organization, as
  /// part of an organization. For example, an athlete in a SportsTeam might
  /// play in the position named 'Quarterback'.
  @Deprecated('Use [roleName]. See https://schema.org/namedPosition')
  String? namedPosition;

  /// A role played, performed or filled by a person or organization. For
  /// example, the team of creators for a comic book might fill the roles named
  /// 'inker', 'penciller', and 'letterer'; or an athlete in a SportsTeam might
  /// play in the position named 'Quarterback'.
  String? roleName;

  /// The start date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? startDate;

  /// Create a new instance of [SchemaRole]
  SchemaRole({
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
    this.endDate,
    this.namedPosition,
    this.roleName,
    this.startDate,
  });

  /// Serialize [SchemaRole] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Role',
        'endDate': convertToJsonLd(endDate),
        'namedPosition': convertToJsonLd(namedPosition),
        'roleName': convertToJsonLd(roleName),
        'startDate': convertToJsonLd(startDate),
      });
}
