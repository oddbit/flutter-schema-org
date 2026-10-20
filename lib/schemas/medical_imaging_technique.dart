// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Any medical imaging modality typically used for diagnostic purposes.
/// Enumerated type.
/// See https://schema.org/MedicalImagingTechnique
enum SchemaMedicalImagingTechnique implements SchemaMedicalEnumeration {
  /// X-ray computed tomography imaging.
  cT('https://schema.org/CT'),

  /// Magnetic resonance imaging.
  mRI('https://schema.org/MRI'),

  /// Positron emission tomography imaging.
  pET('https://schema.org/PET'),

  /// Ultrasound imaging.
  ultrasound('https://schema.org/Ultrasound'),

  /// X-ray imaging.
  xRay('https://schema.org/XRay');

  /// Constructor for [SchemaMedicalImagingTechnique]
  const SchemaMedicalImagingTechnique(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaMedicalImagingTechnique] to JSON-LD
  @override
  String toJsonLd() => value;
}
