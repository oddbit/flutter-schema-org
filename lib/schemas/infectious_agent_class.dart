// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/medical_enumeration.dart';

/// Classes of agents or pathogens that transmit infectious diseases.
/// Enumerated type.
/// See https://schema.org/InfectiousAgentClass
enum SchemaInfectiousAgentClass implements SchemaMedicalEnumeration {
  /// Pathogenic bacteria that cause bacterial infection.
  bacteria('https://schema.org/Bacteria'),

  /// Pathogenic fungus.
  fungus('https://schema.org/Fungus'),

  /// Multicellular parasite that causes an infection.
  multicellularParasite('https://schema.org/MulticellularParasite'),

  /// A prion is an infectious agent composed of protein in a misfolded
  /// form.
  prion('https://schema.org/Prion'),

  /// Single-celled organism that causes an infection.
  protozoa('https://schema.org/Protozoa'),

  /// Pathogenic virus that causes viral infection.
  virus('https://schema.org/Virus');

  /// Constructor for [SchemaInfectiousAgentClass]
  const SchemaInfectiousAgentClass(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaInfectiousAgentClass] to JSON-LD
  @override
  String toJsonLd() => value;
}
