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
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/member_program.dart';

/// Used to describe membership in a loyalty programs (e.g. "StarAliance"),
/// traveler clubs (e.g. "AAA"), purchase clubs ("Safeway Club"), etc.
/// See https://schema.org/ProgramMembership
class SchemaProgramMembership extends SchemaIntangible {
  /// The Organization (airline, travelers' club, retailer, etc.) the
  /// membership is made with or which offers the MemberProgram.
  SchemaOrganization? hostingOrganization;

  /// A member of an Organization or a ProgramMembership. Organizations can be
  /// members of organizations; ProgramMembership is typically for individuals.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic member;

  /// A member of this organization.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  @Deprecated('Use [member]. See https://schema.org/members')
  dynamic members;

  /// A unique identifier for the membership.
  String? membershipNumber;

  /// The number of membership points earned by the member. If necessary, the
  /// unitText can be used to express the units the points are issued in. (E.g.
  /// stars, miles, etc.)
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic membershipPointsEarned;

  /// The [MemberProgram](https://schema.org/MemberProgram) associated with a
  /// [ProgramMembership](https://schema.org/ProgramMembership).
  SchemaMemberProgram? program;

  /// The program providing the membership. It is preferable to use
  /// [:program](https://schema.org/program) instead.
  String? programName;

  /// Create a new instance of [SchemaProgramMembership]
  SchemaProgramMembership({
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
    this.hostingOrganization,
    this.member,
    this.members,
    this.membershipNumber,
    this.membershipPointsEarned,
    this.program,
    this.programName,
  });

  /// Serialize [SchemaProgramMembership] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ProgramMembership',
        'hostingOrganization': convertToJsonLd(hostingOrganization),
        'member': convertToJsonLd(
            member, (v) => v is SchemaOrganization || v is SchemaPerson),
        'members': convertToJsonLd(
            members, (v) => v is SchemaOrganization || v is SchemaPerson),
        'membershipNumber': convertToJsonLd(membershipNumber),
        'membershipPointsEarned': convertToJsonLd(membershipPointsEarned,
            (v) => v is SchemaQuantitativeValue || v is num),
        'program': convertToJsonLd(program),
        'programName': convertToJsonLd(programName),
      });
}
