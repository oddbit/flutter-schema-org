// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// A type of permission which can be granted for accessing a digital
/// document.
/// See https://schema.org/DigitalDocumentPermissionType
enum SchemaDigitalDocumentPermissionType implements SchemaSerializable {
  /// Permission to add comments to the document.
  commentPermission('https://schema.org/DigitalDocumentPermissionType'),

  /// Permission to read or view the document.
  readPermission('https://schema.org/DigitalDocumentPermissionType'),

  /// Permission to write or edit the document.
  writePermission('https://schema.org/DigitalDocumentPermissionType');

  /// Constructor for [SchemaDigitalDocumentPermissionType]
  const SchemaDigitalDocumentPermissionType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDigitalDocumentPermissionType] to JSON-LD
  @override
  String toJsonLd() => value;
}
