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
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/monetary_amount.dart';
import 'package:schema_org/schemas/price_specification.dart';
import 'package:schema_org/schemas/educational_occupational_credential.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/monetary_amount_distribution.dart';
import 'package:schema_org/schemas/occupational_experience_requirements.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/credential.dart';
import 'package:schema_org/schemas/occupation.dart';

/// A listing that describes a job opening in a certain organization.
/// See https://schema.org/JobPosting
class SchemaJobPosting extends SchemaIntangible {
  /// The location(s) applicants can apply from. This is usually used for
  /// telecommuting jobs where the applicant does not need to be in a physical
  /// office. Note: This should not be used for citizenship or work visa
  /// requirements.
  SchemaAdministrativeArea? applicantLocationRequirements;

  /// Contact details for further information relevant to this job posting.
  SchemaContactPoint? applicationContact;

  /// The base salary of the job or of an employee in an EmployeeRole.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification],
  /// [num]
  dynamic baseSalary;

  /// Description of benefits associated with the job.
  @Deprecated('Use [jobBenefits]. See https://schema.org/benefits')
  String? benefits;

  /// Publication date of an online listing.
  String? datePosted;

  /// Indicates whether an [Schemaurl] that is associated with a
  /// [SchemaJobPosting] enables direct application for the job, via the
  /// posting website. A job posting is considered to have directApply of
  /// [SchemaTrue] if an application process for the specified job can be
  /// directly initiated via the url(s) given (noting that e.g. multiple
  /// internet domains might nevertheless be involved at an implementation
  /// level). A value of [SchemaFalse] is appropriate if there is no clear path
  /// to applying directly online for the specified job, navigating directly
  /// from the JobPosting url(s) supplied.
  bool? directApply;

  /// Educational background needed for the position or Occupation.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic educationRequirements;

  /// The legal requirements such as citizenship, visa and other documentation
  /// required for an applicant to this job.
  String? eligibilityToWorkRequirement;

  /// A description of the employer, career opportunities and work environment
  /// for this position.
  String? employerOverview;

  /// Type of employment (e.g. full-time, part-time, contract, temporary,
  /// seasonal, internship).
  String? employmentType;

  /// Indicates the department, unit and/or facility where the employee reports
  /// and/or in which the job is to be performed.
  SchemaOrganization? employmentUnit;

  /// An estimated salary for a job posting or occupation, based on a variety
  /// of variables including, but not limited to industry, job title, and
  /// location. Estimated salaries are often computed by outside organizations
  /// rather than the hiring organization, who may not have committed to the
  /// estimated value.
  ///
  /// Supported types: [SchemaMonetaryAmount],
  /// [SchemaMonetaryAmountDistribution], [num]
  dynamic estimatedSalary;

  /// Indicates whether a [SchemaJobPosting] will accept experience (as
  /// indicated by [SchemaOccupationalExperienceRequirements]) in place of its
  /// formal educational qualifications (as indicated by
  /// [SchemaeducationRequirements]). If true, indicates that satisfying one of
  /// these requirements is sufficient.
  bool? experienceInPlaceOfEducation;

  /// Description of skills and experience needed for the position or
  /// Occupation.
  ///
  /// Supported types: [SchemaOccupationalExperienceRequirements], [String]
  dynamic experienceRequirements;

  /// Organization or Person offering the job position.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic hiringOrganization;

  /// Description of bonus and commission compensation aspects of the job.
  String? incentiveCompensation;

  /// Description of bonus and commission compensation aspects of the job.
  @Deprecated('Use [incentiveCompensation]. See https://schema.org/incentives')
  String? incentives;

  /// The industry associated with the job position.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic industry;

  /// Description of benefits associated with the job.
  String? jobBenefits;

  /// The expected duration of an employment offer as advertised by the
  /// employer. Relevant for job postings that have a clearly defined period in
  /// mind such as seasonal work, substitutes for maternal leave or any other
  /// temporary employment.
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  dynamic jobDuration;

  /// An indicator as to whether a position is available for an immediate
  /// start.
  bool? jobImmediateStart;

  /// A (typically single) geographic location associated with the job
  /// position.
  SchemaPlace? jobLocation;

  /// A description of the job location (e.g. TELECOMMUTE for telecommute
  /// jobs).
  String? jobLocationType;

  /// The date on which a successful applicant for this job would be expected
  /// to start work. Choose a specific date in the future or use the
  /// jobImmediateStart property to indicate the position is to be filled as
  /// soon as possible.
  String? jobStartDate;

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

  /// A description of the types of physical activity associated with the job.
  /// Defined terms such as those in O*net may be used, but note that there is
  /// no way to specify the level of ability as well as its nature when using a
  /// defined term.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic physicalRequirement;

  /// Specific qualifications required for this role or Occupation.
  ///
  /// Supported types: [SchemaCredential], [String]
  dynamic qualifications;

  /// The Occupation for the JobPosting.
  SchemaOccupation? relevantOccupation;

  /// Responsibilities associated with this role or Occupation.
  String? responsibilities;

  /// The currency (coded using [ISO
  /// 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary
  /// information in this job posting or for this employee.
  String? salaryCurrency;

  /// A description of any security clearance requirements of the job.
  String? securityClearanceRequirement;

  /// A description of any sensory requirements and levels necessary to
  /// function on the job, including hearing and vision. Defined terms such as
  /// those in O*net may be used, but note that there is no way to specify the
  /// level of ability as well as its nature when using a defined term.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic sensoryRequirement;

  /// A statement of knowledge, skill, ability, task or any other assertion
  /// expressing a competency that is either claimed by a person, an
  /// organization or desired or required to fulfill a role or to work in an
  /// occupation.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic skills;

  /// Any special commitments associated with this job posting. Valid entries
  /// include VeteranCommit, MilitarySpouseCommit, etc.
  String? specialCommitments;

  /// The title of the job.
  String? title;

  /// The number of positions open for this job posting. Use a positive
  /// integer. Do not use if the number of positions is unclear or not known.
  int? totalJobOpenings;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  String? validThrough;

  /// The typical working hours for this job (e.g. 1st shift, night shift,
  /// 8am-5pm).
  String? workHours;

  /// Create a new instance of [SchemaJobPosting]
  SchemaJobPosting({
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
    this.applicantLocationRequirements,
    this.applicationContact,
    this.baseSalary,
    this.benefits,
    this.datePosted,
    this.directApply,
    this.educationRequirements,
    this.eligibilityToWorkRequirement,
    this.employerOverview,
    this.employmentType,
    this.employmentUnit,
    this.estimatedSalary,
    this.experienceInPlaceOfEducation,
    this.experienceRequirements,
    this.hiringOrganization,
    this.incentiveCompensation,
    this.incentives,
    this.industry,
    this.jobBenefits,
    this.jobDuration,
    this.jobImmediateStart,
    this.jobLocation,
    this.jobLocationType,
    this.jobStartDate,
    this.occupationalCategory,
    this.physicalRequirement,
    this.qualifications,
    this.relevantOccupation,
    this.responsibilities,
    this.salaryCurrency,
    this.securityClearanceRequirement,
    this.sensoryRequirement,
    this.skills,
    this.specialCommitments,
    this.title,
    this.totalJobOpenings,
    this.validThrough,
    this.workHours,
  });

  /// Serialize [SchemaJobPosting] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'JobPosting',
        'applicantLocationRequirements':
            convertToJsonLd(applicantLocationRequirements),
        'applicationContact': convertToJsonLd(applicationContact),
        'baseSalary': convertToJsonLd(
            baseSalary,
            (v) =>
                v is SchemaMonetaryAmount ||
                v is SchemaPriceSpecification ||
                v is num),
        'benefits': convertToJsonLd(benefits),
        'datePosted': convertToJsonLd(datePosted),
        'directApply': convertToJsonLd(directApply),
        'educationRequirements': convertToJsonLd(educationRequirements,
            (v) => v is SchemaEducationalOccupationalCredential || v is String),
        'eligibilityToWorkRequirement':
            convertToJsonLd(eligibilityToWorkRequirement),
        'employerOverview': convertToJsonLd(employerOverview),
        'employmentType': convertToJsonLd(employmentType),
        'employmentUnit': convertToJsonLd(employmentUnit),
        'estimatedSalary': convertToJsonLd(
            estimatedSalary,
            (v) =>
                v is SchemaMonetaryAmount ||
                v is SchemaMonetaryAmountDistribution ||
                v is num),
        'experienceInPlaceOfEducation':
            convertToJsonLd(experienceInPlaceOfEducation),
        'experienceRequirements': convertToJsonLd(
            experienceRequirements,
            (v) =>
                v is SchemaOccupationalExperienceRequirements || v is String),
        'hiringOrganization': convertToJsonLd(hiringOrganization,
            (v) => v is SchemaOrganization || v is SchemaPerson),
        'incentiveCompensation': convertToJsonLd(incentiveCompensation),
        'incentives': convertToJsonLd(incentives),
        'industry': convertToJsonLd(
            industry, (v) => v is SchemaDefinedTerm || v is String),
        'jobBenefits': convertToJsonLd(jobBenefits),
        'jobDuration': convertToJsonLd(jobDuration,
            (v) => v is SchemaDuration || v is SchemaQuantitativeValue),
        'jobImmediateStart': convertToJsonLd(jobImmediateStart),
        'jobLocation': convertToJsonLd(jobLocation),
        'jobLocationType': convertToJsonLd(jobLocationType),
        'jobStartDate': convertToJsonLd(jobStartDate),
        'occupationalCategory': convertToJsonLd(occupationalCategory,
            (v) => v is SchemaCategoryCode || v is String),
        'physicalRequirement': convertToJsonLd(
            physicalRequirement, (v) => v is SchemaDefinedTerm || v is String),
        'qualifications': convertToJsonLd(
            qualifications, (v) => v is SchemaCredential || v is String),
        'relevantOccupation': convertToJsonLd(relevantOccupation),
        'responsibilities': convertToJsonLd(responsibilities),
        'salaryCurrency': convertToJsonLd(salaryCurrency),
        'securityClearanceRequirement':
            convertToJsonLd(securityClearanceRequirement),
        'sensoryRequirement': convertToJsonLd(
            sensoryRequirement, (v) => v is SchemaDefinedTerm || v is String),
        'skills': convertToJsonLd(
            skills, (v) => v is SchemaDefinedTerm || v is String),
        'specialCommitments': convertToJsonLd(specialCommitments),
        'title': convertToJsonLd(title),
        'totalJobOpenings': convertToJsonLd(totalJobOpenings),
        'validThrough': convertToJsonLd(validThrough),
        'workHours': convertToJsonLd(workHours),
      });
}
