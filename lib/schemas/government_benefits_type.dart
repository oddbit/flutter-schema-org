// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// GovernmentBenefitsType enumerates several kinds of government benefits to
/// support the COVID-19 situation. Note that this structure may not capture
/// all benefits offered.
/// See https://schema.org/GovernmentBenefitsType
enum SchemaGovernmentBenefitsType implements SchemaSerializable {
  /// BasicIncome: this is a benefit for basic income.
  basicIncome('https://schema.org/BasicIncome'),

  /// BusinessSupport: this is a benefit for supporting businesses.
  businessSupport('https://schema.org/BusinessSupport'),

  /// DisabilitySupport: this is a benefit for disability support.
  disabilitySupport('https://schema.org/DisabilitySupport'),

  /// HealthCare: this is a benefit for health care.
  healthCare('https://schema.org/HealthCare'),

  /// OneTimePayments: this is a benefit for one-time payments for
  /// individuals.
  oneTimePayments('https://schema.org/OneTimePayments'),

  /// PaidLeave: this is a benefit for paid leave.
  paidLeave('https://schema.org/PaidLeave'),

  /// ParentalSupport: this is a benefit for parental support.
  parentalSupport('https://schema.org/ParentalSupport'),

  /// UnemploymentSupport: this is a benefit for unemployment support.
  unemploymentSupport('https://schema.org/UnemploymentSupport');

  /// Constructor for [SchemaGovernmentBenefitsType]
  const SchemaGovernmentBenefitsType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaGovernmentBenefitsType] to JSON-LD
  @override
  String toJsonLd() => value;
}
