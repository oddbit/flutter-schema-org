// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Enumerates several types of return labels for product returns.
/// See https://schema.org/ReturnLabelSourceEnumeration
enum SchemaReturnLabelSourceEnumeration implements SchemaSerializable {
  /// Indicated that creating a return label is the responsibility of the
  /// customer.
  returnLabelCustomerResponsibility(
      'https://schema.org/ReturnLabelCustomerResponsibility'),

  /// Indicated that a return label must be downloaded and printed by the
  /// customer.
  returnLabelDownloadAndPrint('https://schema.org/ReturnLabelDownloadAndPrint'),

  /// Specifies that a return label will be provided by the seller in the
  /// shipping box.
  returnLabelInBox('https://schema.org/ReturnLabelInBox');

  /// Constructor for [SchemaReturnLabelSourceEnumeration]
  const SchemaReturnLabelSourceEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaReturnLabelSourceEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
