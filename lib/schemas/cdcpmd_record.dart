// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/structured_value.dart';

/// A CDCPMDRecord is a data structure representing a record in a CDC tabular
/// data format used for hospital data reporting. See
/// [documentation](/docs/cdc-covid.html) for details, and the linked CDC
/// materials for authoritative definitions used as the source here.
/// See https://schema.org/CDCPMDRecord
class SchemaCDCPMDRecord extends SchemaStructuredValue {
  /// collectiondate - Date for which patient counts are reported.
  String? cvdCollectionDate;

  /// Name of the County of the NHSN facility that this data record applies to.
  /// Use [SchemacvdFacilityId] to identify the facility. To provide other
  /// details, [SchemahealthcareReportingData] can be used on a
  /// [SchemaHospital] entry.
  String? cvdFacilityCounty;

  /// Identifier of the NHSN facility that this data record applies to. Use
  /// [SchemacvdFacilityCounty] to indicate the county. To provide other
  /// details, [SchemahealthcareReportingData] can be used on a
  /// [SchemaHospital] entry.
  String? cvdFacilityId;

  /// Inpatient beds, including all staffed, licensed, and overflow (surge)
  /// beds used for inpatients.
  num? cvdNumBeds;

  /// Total number of staffed inpatient beds that are occupied.
  num? cvdNumBedsOcc;

  /// Patients with suspected or confirmed COVID-19 who died in the hospital,
  /// ED, or any overflow location.
  num? cvdNumC19Died;

  /// Patients hospitalized in an NHSN inpatient care location with onset of
  /// suspected or confirmed COVID-19 14 or more days after hospitalization.
  num? cvdNumC19HOPats;

  /// Patients currently hospitalized in an inpatient care location who have
  /// suspected or confirmed COVID-19.
  num? cvdNumC19HospPats;

  /// Patients hospitalized in an NHSN inpatient care location who have
  /// suspected or confirmed COVID-19 and are on a mechanical ventilator.
  num? cvdNumC19MechVentPats;

  /// Patients with suspected or confirmed COVID-19 who are in the ED or any
  /// overflow location awaiting an inpatient bed and on a mechanical
  /// ventilator.
  num? cvdNumC19OFMechVentPats;

  /// Patients with suspected or confirmed COVID-19 who are in the ED or any
  /// overflow location awaiting an inpatient bed.
  num? cvdNumC19OverflowPats;

  /// Total number of staffed inpatient intensive care unit (ICU) beds.
  num? cvdNumICUBeds;

  /// Total number of staffed inpatient ICU beds that are occupied.
  num? cvdNumICUBedsOcc;

  /// Total number of all inpatient and outpatient beds, including all staffed,
  /// ICU, licensed, and overflow (surge) beds used for inpatients or
  /// outpatients.
  num? cvdNumTotBeds;

  /// Total number of ventilators available.
  num? cvdNumVent;

  /// Total number of ventilators in use.
  num? cvdNumVentUse;

  /// Publication date of an online listing.
  String? datePosted;

  /// Create a new instance of [SchemaCDCPMDRecord]
  SchemaCDCPMDRecord({
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
    this.cvdCollectionDate,
    this.cvdFacilityCounty,
    this.cvdFacilityId,
    this.cvdNumBeds,
    this.cvdNumBedsOcc,
    this.cvdNumC19Died,
    this.cvdNumC19HOPats,
    this.cvdNumC19HospPats,
    this.cvdNumC19MechVentPats,
    this.cvdNumC19OFMechVentPats,
    this.cvdNumC19OverflowPats,
    this.cvdNumICUBeds,
    this.cvdNumICUBedsOcc,
    this.cvdNumTotBeds,
    this.cvdNumVent,
    this.cvdNumVentUse,
    this.datePosted,
  });

  /// Serialize [SchemaCDCPMDRecord] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CDCPMDRecord',
        'cvdCollectionDate': convertToJsonLd(cvdCollectionDate, [String]),
        'cvdFacilityCounty': convertToJsonLd(cvdFacilityCounty, [String]),
        'cvdFacilityId': convertToJsonLd(cvdFacilityId, [String]),
        'cvdNumBeds': convertToJsonLd(cvdNumBeds, [num]),
        'cvdNumBedsOcc': convertToJsonLd(cvdNumBedsOcc, [num]),
        'cvdNumC19Died': convertToJsonLd(cvdNumC19Died, [num]),
        'cvdNumC19HOPats': convertToJsonLd(cvdNumC19HOPats, [num]),
        'cvdNumC19HospPats': convertToJsonLd(cvdNumC19HospPats, [num]),
        'cvdNumC19MechVentPats': convertToJsonLd(cvdNumC19MechVentPats, [num]),
        'cvdNumC19OFMechVentPats':
            convertToJsonLd(cvdNumC19OFMechVentPats, [num]),
        'cvdNumC19OverflowPats': convertToJsonLd(cvdNumC19OverflowPats, [num]),
        'cvdNumICUBeds': convertToJsonLd(cvdNumICUBeds, [num]),
        'cvdNumICUBedsOcc': convertToJsonLd(cvdNumICUBedsOcc, [num]),
        'cvdNumTotBeds': convertToJsonLd(cvdNumTotBeds, [num]),
        'cvdNumVent': convertToJsonLd(cvdNumVent, [num]),
        'cvdNumVentUse': convertToJsonLd(cvdNumVentUse, [num]),
        'datePosted': convertToJsonLd(datePosted, [String]),
      });
}
