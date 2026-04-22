// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/educational_occupational_program.dart';

/// A program with both an educational and employment component. Typically
/// based at a workplace and structured around work-based learning, with the
/// aim of instilling competencies related to an occupation. WorkBasedProgram
/// is used to distinguish programs such as apprenticeships from school,
/// college or other classroom based educational programs.
/// See https://schema.org/WorkBasedProgram
class SchemaWorkBasedProgram extends SchemaEducationalOccupationalProgram {
  /// Create a new instance of [SchemaWorkBasedProgram]
  SchemaWorkBasedProgram({
    super.additionalType,
    super.alternateName,
    super.applicationDeadline,
    super.applicationStartDate,
    super.dayOfWeek,
    super.description,
    super.disambiguatingDescription,
    super.educationalCredentialAwarded,
    super.educationalProgramMode,
    super.endDate,
    super.financialAidEligible,
    super.hasCourse,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.maximumEnrollment,
    super.name,
    super.numberOfCredits,
    super.occupationalCategory,
    super.occupationalCredentialAwarded,
    super.offers,
    super.owner,
    super.potentialAction,
    super.programPrerequisites,
    super.programType,
    super.provider,
    super.salaryUponCompletion,
    super.sameAs,
    super.startDate,
    super.subjectOf,
    super.termDuration,
    super.termsPerYear,
    super.timeOfDay,
    super.timeToComplete,
    super.trainingSalary,
    super.typicalCreditsPerTerm,
    super.url,
  });

  /// Serialize [SchemaWorkBasedProgram] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'WorkBasedProgram',
      });
}
