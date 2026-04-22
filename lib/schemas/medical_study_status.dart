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
  activeNotRecruiting('https://schema.org/MedicalStudyStatus'),

  /// Completed.
  completed('https://schema.org/MedicalStudyStatus'),

  /// Enrolling participants by invitation only.
  enrollingByInvitation('https://schema.org/MedicalStudyStatus'),

  /// Not yet recruiting.
  notYetRecruiting('https://schema.org/MedicalStudyStatus'),

  /// Recruiting participants.
  recruiting('https://schema.org/MedicalStudyStatus'),

  /// Results are available.
  resultsAvailable('https://schema.org/MedicalStudyStatus'),

  /// Results are not available.
  resultsNotAvailable('https://schema.org/MedicalStudyStatus'),

  /// Suspended.
  suspended('https://schema.org/MedicalStudyStatus'),

  /// Terminated.
  terminated('https://schema.org/MedicalStudyStatus'),

  /// Withdrawn.
  withdrawn('https://schema.org/MedicalStudyStatus');

  /// Constructor for [SchemaMedicalStudyStatus]
  const SchemaMedicalStudyStatus(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalStudyStatus] to JSON-LD
  @override
  String toJsonLd() => value;
}
