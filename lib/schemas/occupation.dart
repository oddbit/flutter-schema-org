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
import 'package:schema_org/schemas/educational_occupational_credential.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/monetary_amount_distribution.dart';
import 'package:schema_org/schemas/occupational_experience_requirements.dart';
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/credential.dart';
import 'package:schema_org/schemas/defined_term.dart';

/// A profession, may involve prolonged training and/or a formal
/// qualification.
/// See https://schema.org/Occupation
class SchemaOccupation extends SchemaIntangible {
  /// Educational background needed for the position or Occupation.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic educationRequirements;

  /// An estimated salary for a job posting or occupation, based on a variety
  /// of variables including, but not limited to industry, job title, and
  /// location. Estimated salaries are often computed by outside organizations
  /// rather than the hiring organization, who may not have committed to the
  /// estimated value.
  ///
  /// Supported types: [SchemaMonetaryAmount],
  /// [SchemaMonetaryAmountDistribution], [num]
  dynamic estimatedSalary;

  /// Description of skills and experience needed for the position or
  /// Occupation.
  ///
  /// Supported types: [SchemaOccupationalExperienceRequirements], [String]
  dynamic experienceRequirements;

  /// The region/country for which this occupational description is
  /// appropriate. Note that educational requirements and qualifications can
  /// vary between jurisdictions.
  SchemaAdministrativeArea? occupationLocation;

  /// A category describing the job, preferably using a term from a taxonomy
  /// such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html),
  /// [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or
  /// similar, with the property repeated for each applicable value. Ideally
  /// the taxonomy should be identified, and both the textual label and formal
  /// code for the category should be provided.\n Note: for historical reasons,
  /// any textual label and formal code provided as a literal may be assumed to
  /// be from O*NET-SOC.
  ///
  /// Supported types: [SchemaCategoryCode], [String]
  dynamic occupationalCategory;

  /// Specific qualifications required for this role or Occupation.
  ///
  /// Supported types: [SchemaCredential], [String]
  dynamic qualifications;

  /// Responsibilities associated with this role or Occupation.
  String? responsibilities;

  /// A statement of knowledge, skill, ability, task or any other assertion
  /// expressing a competency that is either claimed by a person, an
  /// organization or desired or required to fulfill a role or to work in an
  /// occupation.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic skills;

  /// Create a new instance of [SchemaOccupation]
  SchemaOccupation({
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
    this.educationRequirements,
    this.estimatedSalary,
    this.experienceRequirements,
    this.occupationLocation,
    this.occupationalCategory,
    this.qualifications,
    this.responsibilities,
    this.skills,
  });

  /// Serialize [SchemaOccupation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Occupation',
        'educationRequirements': convertToJsonLd(educationRequirements,
            (v) => v is SchemaEducationalOccupationalCredential || v is String),
        'estimatedSalary': convertToJsonLd(
            estimatedSalary,
            (v) =>
                v is SchemaMonetaryAmount ||
                v is SchemaMonetaryAmountDistribution ||
                v is num),
        'experienceRequirements': convertToJsonLd(
            experienceRequirements,
            (v) =>
                v is SchemaOccupationalExperienceRequirements || v is String),
        'occupationLocation': convertToJsonLd(occupationLocation),
        'occupationalCategory': convertToJsonLd(occupationalCategory,
            (v) => v is SchemaCategoryCode || v is String),
        'qualifications': convertToJsonLd(
            qualifications, (v) => v is SchemaCredential || v is String),
        'responsibilities': convertToJsonLd(responsibilities),
        'skills': convertToJsonLd(
            skills, (v) => v is SchemaDefinedTerm || v is String),
      });
}
