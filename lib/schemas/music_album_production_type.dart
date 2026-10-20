// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Classification of the album by its type of content: soundtrack, live
/// album, studio album, etc.
/// See https://schema.org/MusicAlbumProductionType
enum SchemaMusicAlbumProductionType implements SchemaSerializable {
  /// CompilationAlbum.
  compilationAlbum('https://schema.org/CompilationAlbum'),

  /// DJMixAlbum.
  dJMixAlbum('https://schema.org/DJMixAlbum'),

  /// DemoAlbum.
  demoAlbum('https://schema.org/DemoAlbum'),

  /// LiveAlbum.
  liveAlbum('https://schema.org/LiveAlbum'),

  /// MixtapeAlbum.
  mixtapeAlbum('https://schema.org/MixtapeAlbum'),

  /// RemixAlbum.
  remixAlbum('https://schema.org/RemixAlbum'),

  /// SoundtrackAlbum.
  soundtrackAlbum('https://schema.org/SoundtrackAlbum'),

  /// SpokenWordAlbum.
  spokenWordAlbum('https://schema.org/SpokenWordAlbum'),

  /// StudioAlbum.
  studioAlbum('https://schema.org/StudioAlbum');

  /// Constructor for [SchemaMusicAlbumProductionType]
  const SchemaMusicAlbumProductionType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaMusicAlbumProductionType] to JSON-LD
  @override
  String toJsonLd() => value;
}
