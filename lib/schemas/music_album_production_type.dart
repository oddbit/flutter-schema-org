// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// soundtrack, live album, studio album, etc.
/// See https://schema.org/MusicAlbumProductionType
enum SchemaMusicAlbumProductionType implements SchemaSerializable {
  /// CompilationAlbum.
  compilationAlbum('https://schema.org/MusicAlbumProductionType'),

  /// DJMixAlbum.
  dJMixAlbum('https://schema.org/MusicAlbumProductionType'),

  /// DemoAlbum.
  demoAlbum('https://schema.org/MusicAlbumProductionType'),

  /// LiveAlbum.
  liveAlbum('https://schema.org/MusicAlbumProductionType'),

  /// MixtapeAlbum.
  mixtapeAlbum('https://schema.org/MusicAlbumProductionType'),

  /// RemixAlbum.
  remixAlbum('https://schema.org/MusicAlbumProductionType'),

  /// SoundtrackAlbum.
  soundtrackAlbum('https://schema.org/MusicAlbumProductionType'),

  /// SpokenWordAlbum.
  spokenWordAlbum('https://schema.org/MusicAlbumProductionType'),

  /// StudioAlbum.
  studioAlbum('https://schema.org/MusicAlbumProductionType');

  /// Constructor for [SchemaMusicAlbumProductionType]
  const SchemaMusicAlbumProductionType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMusicAlbumProductionType] to JSON-LD
  @override
  String toJsonLd() => value;
}
