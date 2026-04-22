// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/organization_role.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/price_specification.dart';

/// A subclass of OrganizationRole used to describe employee relationships.
/// See https://schema.org/EmployeeRole
class SchemaEmployeeRole extends SchemaOrganizationRole {
  /// The base salary of the job or of an employee in an EmployeeRole.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification],
  /// [num]
  dynamic baseSalary;

  /// //en.wikipedia.org/wiki/ISO_4217)) used for the main salary information
  /// in this job posting or for this employee.
  String? salaryCurrency;

  /// Create a new instance of [SchemaEmployeeRole]
  SchemaEmployeeRole({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endDate,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.namedPosition,
    super.numberedPosition,
    super.owner,
    super.potentialAction,
    super.roleName,
    super.sameAs,
    super.startDate,
    super.subjectOf,
    super.url,
    this.baseSalary,
    this.salaryCurrency,
  });

  /// Serialize [SchemaEmployeeRole] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EmployeeRole',
        'baseSalary': convertToJsonLd(
            baseSalary, [SchemaMonetaryAmount, SchemaPriceSpecification, num]),
        'salaryCurrency': convertToJsonLd(salaryCurrency, [String]),
      });
}
