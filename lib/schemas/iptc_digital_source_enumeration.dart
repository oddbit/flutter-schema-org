// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/media_enumeration.dart';

/// <a href="https://www.iptc.org/">IPTC</a> "Digital Source" codes for use
/// with the [SchemadigitalSourceType] property, providing information about
/// the source for a digital media object. In general these codes are not
/// declared here to be mutually exclusive, although some combinations would
/// be contradictory if applied simultaneously, or might be considered
/// mutually incompatible by upstream maintainers of the definitions. See the
/// IPTC <a
/// href="https://www.iptc.org/std/photometadata/documentation/userguide/">documentation</a>
/// for <a href="https://cv.iptc.org/newscodes/digitalsourcetype/">detailed
/// definitions</a> of all terms.
/// See https://schema.org/IPTCDigitalSourceEnumeration
enum SchemaIPTCDigitalSourceEnumeration implements SchemaMediaEnumeration {
  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/algorithmicMedia">algorithmic
  /// media</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  algorithmicMediaDigitalSource(
      'https://schema.org/AlgorithmicMediaDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/algorithmicallyEnhanced">algorithmically
  /// enhanced</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  algorithmicallyEnhancedDigitalSource(
      'https://schema.org/AlgorithmicallyEnhancedDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/compositeCapture">composite
  /// capture</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  compositeCaptureDigitalSource(
      'https://schema.org/CompositeCaptureDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/algorithmicMedia">algorithmic
  /// media</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  compositeDigitalSource('https://schema.org/CompositeDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/compositeSynthetic">composite
  /// synthetic</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  compositeSyntheticDigitalSource(
      'https://schema.org/CompositeSyntheticDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/compositeWithTrainedAlgorithmicMedia">composite
  /// with trained algorithmic media</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  compositeWithTrainedAlgorithmicMediaDigitalSource(
      'https://schema.org/CompositeWithTrainedAlgorithmicMediaDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/dataDrivenMedia">data
  /// driven media</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  dataDrivenMediaDigitalSource(
      'https://schema.org/DataDrivenMediaDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/digitalArt">digital
  /// art</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  digitalArtDigitalSource('https://schema.org/DigitalArtDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/digitalCapture">digital
  /// capture</a></a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  digitalCaptureDigitalSource('https://schema.org/DigitalCaptureDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/minorHumanEdits">minor
  /// human edits</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  minorHumanEditsDigitalSource(
      'https://schema.org/MinorHumanEditsDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/algorithmicMedia">algorithmic
  /// media</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  multiFrameComputationalCaptureDigitalSource(
      'https://schema.org/MultiFrameComputationalCaptureDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/negativeFilm">negative
  /// film</a></a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  negativeFilmDigitalSource('https://schema.org/NegativeFilmDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/positiveFilm">positive
  /// film</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  positiveFilmDigitalSource('https://schema.org/PositiveFilmDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/print">print</a>'
  /// using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  printDigitalSource('https://schema.org/PrintDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/algorithmicMedia">algorithmic
  /// media</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  screenCaptureDigitalSource('https://schema.org/ScreenCaptureDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/trainedAlgorithmicMedia">trained
  /// algorithmic media</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  trainedAlgorithmicMediaDigitalSource(
      'https://schema.org/TrainedAlgorithmicMediaDigitalSource'),

  /// Content coded as '<a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/virtualRecording">virtual
  /// recording</a>' using the IPTC <a
  /// href="https://cv.iptc.org/newscodes/digitalsourcetype/">digital
  /// source type</a> vocabulary.
  virtualRecordingDigitalSource(
      'https://schema.org/VirtualRecordingDigitalSource');

  /// Constructor for [SchemaIPTCDigitalSourceEnumeration]
  const SchemaIPTCDigitalSourceEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaIPTCDigitalSourceEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
