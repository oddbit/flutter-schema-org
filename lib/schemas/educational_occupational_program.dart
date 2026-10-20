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
import 'package:schema_org/schemas/day_of_week.dart';
import 'package:schema_org/schemas/educational_occupational_credential.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/course.dart';
import 'package:schema_org/schemas/structured_value.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/demand.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/alignment_object.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/monetary_amount_distribution.dart';
import 'package:schema_org/schemas/duration.dart';

/// A program offered by an institution which determines the learning
/// progress to achieve an outcome, usually a credential like a degree or
/// certificate. This would define a discrete set of opportunities (e.g.,
/// job, courses) that together constitute a program with a clear start, end,
/// set of requirements, and transition to a new occupational opportunity
/// (e.g., a job), or sometimes a higher educational opportunity (e.g., an
/// advanced degree).
/// See https://schema.org/EducationalOccupationalProgram
class SchemaEducationalOccupationalProgram extends SchemaIntangible {
  /// The date on which the program stops collecting applications for the next
  /// enrollment cycle. Flexible application deadlines (for example, a program
  /// with rolling admissions) can be described in a textual string, rather
  /// than as a DateTime.
  String? applicationDeadline;

  /// The date at which the program begins collecting applications for the next
  /// enrollment cycle.
  String? applicationStartDate;

  /// The day of the week for which these opening hours are valid.
  SchemaDayOfWeek? dayOfWeek;

  /// A description of the qualification, award, certificate, diploma or other
  /// educational credential awarded as a consequence of successful completion
  /// of this course or program.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic educationalCredentialAwarded;

  /// Similar to courseMode, the medium or means of delivery of the program as
  /// a whole. The value may either be a text label (e.g. "online", "onsite" or
  /// "blended"; "synchronous" or "asynchronous"; "full-time" or "part-time")
  /// or a URL reference to a term from a controlled vocabulary (e.g.
  /// https://ceds.ed.gov/element/001311#Asynchronous ).
  String? educationalProgramMode;

  /// The end date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? endDate;

  /// A financial aid type or program which students may use to pay for tuition
  /// or fees associated with the program.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic financialAidEligible;

  /// A course or class that is one of the learning opportunities that
  /// constitute an educational / occupational program. No information is
  /// implied about whether the course is mandatory or optional; no guarantee
  /// is implied about whether the course will be available to everyone on the
  /// program.
  SchemaCourse? hasCourse;

  /// The maximum number of students who may be enrolled in the program.
  int? maximumEnrollment;

  /// The number of credits or units awarded by a Course or required to
  /// complete an EducationalOccupationalProgram.
  ///
  /// Supported types: [SchemaStructuredValue], [int]
  dynamic numberOfCredits;

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

  /// A description of the qualification, award, certificate, diploma or other
  /// occupational credential awarded as a consequence of successful completion
  /// of this course or program.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic occupationalCredentialAwarded;

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

  /// Prerequisites for enrolling in the program.
  ///
  /// Supported types: [SchemaAlignmentObject], [SchemaCourse],
  /// [SchemaEducationalOccupationalCredential], [String]
  dynamic programPrerequisites;

  /// The type of educational or occupational program. For example, classroom,
  /// internship, alternance, etc.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic programType;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// The expected salary upon completing the training.
  SchemaMonetaryAmountDistribution? salaryUponCompletion;

  /// The start date and time of the item (in [ISO 8601 date
  /// format](http://en.wikipedia.org/wiki/ISO_8601)).
  String? startDate;

  /// The amount of time in a term as defined by the institution. A term is a
  /// length of time where students take one or more classes. Semesters and
  /// quarters are common units for term.
  SchemaDuration? termDuration;

  /// The number of times terms of study are offered per year. Semesters and
  /// quarters are common units for term. For example, if the student can only
  /// take 2 semesters for the program in one year, then termsPerYear should be
  /// 2.
  num? termsPerYear;

  /// The time of day the program normally runs. For example, "evenings".
  String? timeOfDay;

  /// The expected length of time to complete the program if attending
  /// full-time.
  SchemaDuration? timeToComplete;

  /// The estimated salary earned while in the program.
  SchemaMonetaryAmountDistribution? trainingSalary;

  /// The number of credits or units a full-time student would be expected to
  /// take in 1 term however 'term' is defined by the institution.
  ///
  /// Supported types: [SchemaStructuredValue], [int]
  dynamic typicalCreditsPerTerm;

  /// Create a new instance of [SchemaEducationalOccupationalProgram]
  SchemaEducationalOccupationalProgram({
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
    this.applicationDeadline,
    this.applicationStartDate,
    this.dayOfWeek,
    this.educationalCredentialAwarded,
    this.educationalProgramMode,
    this.endDate,
    this.financialAidEligible,
    this.hasCourse,
    this.maximumEnrollment,
    this.numberOfCredits,
    this.occupationalCategory,
    this.occupationalCredentialAwarded,
    this.offers,
    this.programPrerequisites,
    this.programType,
    this.provider,
    this.salaryUponCompletion,
    this.startDate,
    this.termDuration,
    this.termsPerYear,
    this.timeOfDay,
    this.timeToComplete,
    this.trainingSalary,
    this.typicalCreditsPerTerm,
  });

  /// Serialize [SchemaEducationalOccupationalProgram] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'EducationalOccupationalProgram',
        'applicationDeadline': convertToJsonLd(applicationDeadline),
        'applicationStartDate': convertToJsonLd(applicationStartDate),
        'dayOfWeek': convertToJsonLd(dayOfWeek),
        'educationalCredentialAwarded': convertToJsonLd(
            educationalCredentialAwarded,
            (v) => v is SchemaEducationalOccupationalCredential || v is String),
        'educationalProgramMode': convertToJsonLd(educationalProgramMode),
        'endDate': convertToJsonLd(endDate),
        'financialAidEligible': convertToJsonLd(
            financialAidEligible, (v) => v is SchemaDefinedTerm || v is String),
        'hasCourse': convertToJsonLd(hasCourse),
        'maximumEnrollment': convertToJsonLd(maximumEnrollment),
        'numberOfCredits': convertToJsonLd(
            numberOfCredits, (v) => v is SchemaStructuredValue || v is int),
        'occupationalCategory': convertToJsonLd(occupationalCategory,
            (v) => v is SchemaCategoryCode || v is String),
        'occupationalCredentialAwarded': convertToJsonLd(
            occupationalCredentialAwarded,
            (v) => v is SchemaEducationalOccupationalCredential || v is String),
        'offers': convertToJsonLd(
            offers, (v) => v is SchemaDemand || v is SchemaOffer),
        'programPrerequisites': convertToJsonLd(
            programPrerequisites,
            (v) =>
                v is SchemaAlignmentObject ||
                v is SchemaCourse ||
                v is SchemaEducationalOccupationalCredential ||
                v is String),
        'programType': convertToJsonLd(
            programType, (v) => v is SchemaDefinedTerm || v is String),
        'provider': convertToJsonLd(
            provider, (v) => v is SchemaOrganization || v is SchemaPerson),
        'salaryUponCompletion': convertToJsonLd(salaryUponCompletion),
        'startDate': convertToJsonLd(startDate),
        'termDuration': convertToJsonLd(termDuration),
        'termsPerYear': convertToJsonLd(termsPerYear),
        'timeOfDay': convertToJsonLd(timeOfDay),
        'timeToComplete': convertToJsonLd(timeToComplete),
        'trainingSalary': convertToJsonLd(trainingSalary),
        'typicalCreditsPerTerm': convertToJsonLd(typicalCreditsPerTerm,
            (v) => v is SchemaStructuredValue || v is int),
      });
}
