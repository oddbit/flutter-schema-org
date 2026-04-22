// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// The publication format of the book.
/// See https://schema.org/BookFormatType
enum SchemaBookFormatType implements SchemaSerializable {
  /// Audiobook. This is an enumerated value for use with the bookFormat
  /// property. There is also a type 'Audiobook' in the bib extension which
  /// includes Audiobook specific properties.
  audiobookFormat('https://schema.org/BookFormatType'),

  /// Ebook.
  eBook('https://schema.org/BookFormatType'),

  /// GraphicNovel. May represent a bound collection of ComicIssue
  /// instances.
  graphicNovel('https://schema.org/BookFormatType'),

  /// A durable, archival-quality book featuring a rigid protective shell
  /// made of heavy board wrapped in cloth or paper, designed to withstand
  /// heavy use and preservation on a shelf.
  hardcover('https://schema.org/BookFormatType'),

  /// A small, unbound or stapled booklet consisting of few pages with a
  /// flexible paper cover, designed for the economical distribution of
  /// focused information on a single subject.
  pamphlet('https://schema.org/BookFormatType'),

  /// A flexible, lightweight book bound with a thick paper or cardstock
  /// cover and glued spine, prioritizing portability and affordability
  /// over long-term durability.
  paperback('https://schema.org/BookFormatType');

  /// Constructor for [SchemaBookFormatType]
  const SchemaBookFormatType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaBookFormatType] to JSON-LD
  @override
  String toJsonLd() => value;
}
