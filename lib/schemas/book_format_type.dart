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
  /// Book format: Audiobook. This is an enumerated value for use with the
  /// bookFormat property. There is also a type 'Audiobook' in the bib
  /// extension which includes Audiobook specific properties.
  audiobookFormat('https://schema.org/AudiobookFormat'),

  /// Book format: Ebook.
  eBook('https://schema.org/EBook'),

  /// This type is deprecated: GraphicNovel does not fit the BookFormatType
  /// enumeration, as it can appear in multiple formats (e.g., Hardcover,
  /// eBook). It is not mutually exclusive and therefore deprecated. Use
  /// standard BookFormatType values instead in combination with the
  /// SequentialArt.
  ///
  /// Book format: GraphicNovel. May represent a bound collection of
  /// ComicIssue instances.
  graphicNovel('https://schema.org/GraphicNovel'),

  /// A durable, archival-quality book featuring a rigid protective shell
  /// made of heavy board wrapped in cloth or paper, designed to withstand
  /// heavy use and preservation on a shelf.
  hardcover('https://schema.org/Hardcover'),

  /// A small, unbound or stapled booklet consisting of few pages with a
  /// flexible paper cover, designed for the economical distribution of
  /// focused information on a single subject.
  pamphlet('https://schema.org/Pamphlet'),

  /// A flexible, lightweight book bound with a thick paper or cardstock
  /// cover and glued spine, prioritizing portability and affordability
  /// over long-term durability.
  paperback('https://schema.org/Paperback');

  /// Constructor for [SchemaBookFormatType]
  const SchemaBookFormatType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaBookFormatType] to JSON-LD
  @override
  String toJsonLd() => value;
}
