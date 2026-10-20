// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/medical_condition.dart';
import 'package:schema_org/schemas/infectious_agent_class.dart';

/// An infectious disease is a clinically evident human disease resulting
/// from the presence of pathogenic microbial agents, like pathogenic
/// viruses, pathogenic bacteria, fungi, protozoa, multicellular parasites,
/// and prions. To be considered an infectious disease, such pathogens are
/// known to be able to cause this disease.
/// See https://schema.org/InfectiousDisease
class SchemaInfectiousDisease extends SchemaMedicalCondition {
  /// The actual infectious agent, such as a specific bacterium.
  String? infectiousAgent;

  /// The class of infectious agent (bacteria, prion, etc.) that causes the
  /// disease.
  SchemaInfectiousAgentClass? infectiousAgentClass;

  /// How the disease spreads, either as a route or vector, for example 'direct
  /// contact', 'Aedes aegypti', etc.
  String? transmissionMethod;

  /// Create a new instance of [SchemaInfectiousDisease]
  SchemaInfectiousDisease({
    super.additionalType,
    super.alternateName,
    super.associatedAnatomy,
    super.cause,
    super.code,
    super.description,
    super.differentialDiagnosis,
    super.disambiguatingDescription,
    super.drug,
    super.epidemiology,
    super.expectedPrognosis,
    super.funding,
    super.guideline,
    super.identifier,
    super.image,
    super.legalStatus,
    super.mainEntityOfPage,
    super.medicineSystem,
    super.name,
    super.naturalProgression,
    super.owner,
    super.pathophysiology,
    super.possibleComplication,
    super.possibleTreatment,
    super.potentialAction,
    super.primaryPrevention,
    super.recognizingAuthority,
    super.relevantSpecialty,
    super.riskFactor,
    super.sameAs,
    super.secondaryPrevention,
    super.signOrSymptom,
    super.stage,
    super.status,
    super.study,
    super.subjectOf,
    super.typicalTest,
    super.url,
    this.infectiousAgent,
    this.infectiousAgentClass,
    this.transmissionMethod,
  });

  /// Serialize [SchemaInfectiousDisease] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'InfectiousDisease',
        'infectiousAgent': convertToJsonLd(infectiousAgent),
        'infectiousAgentClass': convertToJsonLd(infectiousAgentClass),
        'transmissionMethod': convertToJsonLd(transmissionMethod),
      });
}
