// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/media_enumeration.dart';

/// //cv.iptc.org/newscodes/digitalsourcetype/">detailed definitions</a> of
/// all terms.
/// See https://schema.org/IPTCDigitalSourceEnumeration
enum SchemaIPTCDigitalSourceEnumeration implements SchemaMediaEnumeration {
  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  algorithmicMediaDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  algorithmicallyEnhancedDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  compositeCaptureDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  compositeDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  compositeSyntheticDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  compositeWithTrainedAlgorithmicMediaDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  dataDrivenMediaDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  digitalArtDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  digitalCaptureDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  minorHumanEditsDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  multiFrameComputationalCaptureDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  negativeFilmDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  positiveFilmDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  printDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  screenCaptureDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  trainedAlgorithmicMediaDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  virtualRecordingDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration');

  /// Constructor for [SchemaIPTCDigitalSourceEnumeration]
  const SchemaIPTCDigitalSourceEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaIPTCDigitalSourceEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
