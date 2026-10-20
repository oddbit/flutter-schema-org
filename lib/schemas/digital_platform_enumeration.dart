// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates some common technology platforms, for use with properties such
/// as [SchemaactionPlatform]. It is not supposed to be comprehensive - when
/// a suitable code is not enumerated here, textual or URL values can be used
/// instead. These codes are at a fairly high level and do not deal with
/// versioning and other nuance. Additional codes can be suggested [in
/// github](https://github.com/schemaorg/schemaorg/issues/3057).
/// See https://schema.org/DigitalPlatformEnumeration
enum SchemaDigitalPlatformEnumeration implements SchemaSerializable {
  /// Represents the broad notion of Android-based operating systems.
  androidPlatform('https://schema.org/AndroidPlatform'),

  /// Represents the broad notion of 'desktop' browsers as a Web Platform.
  desktopWebPlatform('https://schema.org/DesktopWebPlatform'),

  /// Represents the generic notion of the Web Platform. More specific
  /// codes include [SchemaMobileWebPlatform] and
  /// [SchemaDesktopWebPlatform], as an incomplete list.
  genericWebPlatform('https://schema.org/GenericWebPlatform'),

  /// Represents the broad notion of iOS-based operating systems.
  iOSPlatform('https://schema.org/IOSPlatform'),

  /// Represents the broad notion of 'mobile' browsers as a Web Platform.
  mobileWebPlatform('https://schema.org/MobileWebPlatform');

  /// Constructor for [SchemaDigitalPlatformEnumeration]
  const SchemaDigitalPlatformEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaDigitalPlatformEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
