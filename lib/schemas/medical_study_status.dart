// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// The status of a medical study. Enumerated type.
/// See https://schema.org/MedicalStudyStatus
enum SchemaMedicalStudyStatus implements SchemaMedicalEnumeration {
  /// Active, but not recruiting new participants.
  activeNotRecruiting('https://schema.org/ActiveNotRecruiting'),

  /// Completed.
  completed('https://schema.org/Completed'),

  /// Enrolling participants by invitation only.
  enrollingByInvitation('https://schema.org/EnrollingByInvitation'),

  /// Not yet recruiting.
  notYetRecruiting('https://schema.org/NotYetRecruiting'),

  /// Recruiting participants.
  recruiting('https://schema.org/Recruiting'),

  /// Results are available.
  resultsAvailable('https://schema.org/ResultsAvailable'),

  /// Results are not available.
  resultsNotAvailable('https://schema.org/ResultsNotAvailable'),

  /// Suspended.
  suspended('https://schema.org/Suspended'),

  /// Terminated.
  terminated('https://schema.org/Terminated'),

  /// Withdrawn.
  withdrawn('https://schema.org/Withdrawn');

  /// Constructor for [SchemaMedicalStudyStatus]
  const SchemaMedicalStudyStatus(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaMedicalStudyStatus] to JSON-LD
  @override
  String toJsonLd() => value;
}
