// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// The kind of release which this album is: single, EP or album.
/// See https://schema.org/MusicAlbumReleaseType
enum SchemaMusicAlbumReleaseType implements SchemaSerializable {
  /// AlbumRelease.
  albumRelease('https://schema.org/AlbumRelease'),

  /// BroadcastRelease.
  broadcastRelease('https://schema.org/BroadcastRelease'),

  /// EPRelease.
  ePRelease('https://schema.org/EPRelease'),

  /// SingleRelease.
  singleRelease('https://schema.org/SingleRelease');

  /// Constructor for [SchemaMusicAlbumReleaseType]
  const SchemaMusicAlbumReleaseType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaMusicAlbumReleaseType] to JSON-LD
  @override
  String toJsonLd() => value;
}
