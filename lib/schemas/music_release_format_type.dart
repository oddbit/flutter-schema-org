// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Format of this release (the type of recording media used, i.e. compact
/// disc, digital media, LP, etc.).
/// See https://schema.org/MusicReleaseFormatType
enum SchemaMusicReleaseFormatType implements SchemaSerializable {
  /// CDFormat.
  cDFormat('https://schema.org/CDFormat'),

  /// CassetteFormat.
  cassetteFormat('https://schema.org/CassetteFormat'),

  /// DVDFormat.
  dVDFormat('https://schema.org/DVDFormat'),

  /// DigitalAudioTapeFormat.
  digitalAudioTapeFormat('https://schema.org/DigitalAudioTapeFormat'),

  /// DigitalFormat.
  digitalFormat('https://schema.org/DigitalFormat'),

  /// LaserDiscFormat.
  laserDiscFormat('https://schema.org/LaserDiscFormat'),

  /// VinylFormat.
  vinylFormat('https://schema.org/VinylFormat');

  /// Constructor for [SchemaMusicReleaseFormatType]
  const SchemaMusicReleaseFormatType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaMusicReleaseFormatType] to JSON-LD
  @override
  String toJsonLd() => value;
}
