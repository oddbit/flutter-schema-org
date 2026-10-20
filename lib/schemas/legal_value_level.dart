// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// A list of possible levels for the legal validity of a legislation.
/// See https://schema.org/LegalValueLevel
enum SchemaLegalValueLevel implements SchemaSerializable {
  /// Indicates that the publisher gives some special status to the
  /// publication of the document. ("The Queens Printer" version of a UK
  /// Act of Parliament, or the PDF version of a Directive published by the
  /// EU Office of Publications). Something "Authoritative" is considered
  /// to be also [SchemaOfficialLegalValue]".
  authoritativeLegalValue('https://schema.org/AuthoritativeLegalValue'),

  /// Indicates a document for which the text is conclusively what the law
  /// says and is legally binding. (e.g. The digitally signed version of an
  /// Official Journal.) Something "Definitive" is considered to be also
  /// [SchemaAuthoritativeLegalValue].
  definitiveLegalValue('https://schema.org/DefinitiveLegalValue'),

  /// All the documents published by an official publisher should have at
  /// least the legal value level "OfficialLegalValue". This indicates that
  /// the document was published by an organisation with the public task of
  /// making it available (e.g. a consolidated version of a EU directive
  /// published by the EU Office of Publications).
  officialLegalValue('https://schema.org/OfficialLegalValue'),

  /// Indicates that a document has no particular or special standing (e.g.
  /// a republication of a law by a private publisher).
  unofficialLegalValue('https://schema.org/UnofficialLegalValue');

  /// Constructor for [SchemaLegalValueLevel]
  const SchemaLegalValueLevel(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaLegalValueLevel] to JSON-LD
  @override
  String toJsonLd() => value;
}
