// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/people_audience.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/gender_type.dart';

/// Target audiences for medical web pages.
/// See https://schema.org/MedicalAudience
class SchemaMedicalAudience extends SchemaAudience
    implements SchemaPeopleAudience {
  /// Specifying the health condition(s) of a patient, medical study, or other
  /// target audience.
  @override
  SchemaMedicalCondition? healthCondition;

  /// Audiences defined by a person's gender.
  @override
  String? requiredGender;

  /// Audiences defined by a person's maximum age.
  @override
  int? requiredMaxAge;

  /// Audiences defined by a person's minimum age.
  @override
  int? requiredMinAge;

  /// The age or age range for the intended audience or person, for example
  /// 3-12 months for infants, 1-5 years for toddlers.
  @override
  SchemaQuantitativeValue? suggestedAge;

  /// The suggested gender of the intended person or audience, for example
  /// "male", "female", or "unisex".
  ///
  /// Supported types: [SchemaGenderType], [String]
  @override
  dynamic suggestedGender;

  /// Maximum recommended age in years for the audience or user.
  @override
  num? suggestedMaxAge;

  /// A suggested range of body measurements for the intended audience or
  /// person, for example inseam between 32 and 34 inches or height between 170
  /// and 190 cm. Typically found on a size chart for wearable products.
  @override
  SchemaQuantitativeValue? suggestedMeasurement;

  /// Minimum recommended age in years for the audience or user.
  @override
  num? suggestedMinAge;

  /// Create a new instance of [SchemaMedicalAudience]
  SchemaMedicalAudience({
    super.additionalType,
    super.alternateName,
    super.audienceType,
    super.description,
    super.disambiguatingDescription,
    super.geographicArea,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.healthCondition,
    this.requiredGender,
    this.requiredMaxAge,
    this.requiredMinAge,
    this.suggestedAge,
    this.suggestedGender,
    this.suggestedMaxAge,
    this.suggestedMeasurement,
    this.suggestedMinAge,
  });

  /// Serialize [SchemaMedicalAudience] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MedicalAudience',
        'healthCondition':
            convertToJsonLd(healthCondition, [SchemaMedicalCondition]),
        'requiredGender': convertToJsonLd(requiredGender, [String]),
        'requiredMaxAge': convertToJsonLd(requiredMaxAge, [int]),
        'requiredMinAge': convertToJsonLd(requiredMinAge, [int]),
        'suggestedAge':
            convertToJsonLd(suggestedAge, [SchemaQuantitativeValue]),
        'suggestedGender':
            convertToJsonLd(suggestedGender, [SchemaGenderType, String]),
        'suggestedMaxAge': convertToJsonLd(suggestedMaxAge, [num]),
        'suggestedMeasurement':
            convertToJsonLd(suggestedMeasurement, [SchemaQuantitativeValue]),
        'suggestedMinAge': convertToJsonLd(suggestedMinAge, [num]),
      });
}
