// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// single, EP or album.
/// See https://schema.org/MusicAlbumReleaseType
enum SchemaMusicAlbumReleaseType implements SchemaSerializable {
  /// AlbumRelease.
  albumRelease('https://schema.org/MusicAlbumReleaseType'),

  /// BroadcastRelease.
  broadcastRelease('https://schema.org/MusicAlbumReleaseType'),

  /// EPRelease.
  ePRelease('https://schema.org/MusicAlbumReleaseType'),

  /// SingleRelease.
  singleRelease('https://schema.org/MusicAlbumReleaseType');

  /// Constructor for [SchemaMusicAlbumReleaseType]
  const SchemaMusicAlbumReleaseType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMusicAlbumReleaseType] to JSON-LD
  @override
  String toJsonLd() => value;
}
