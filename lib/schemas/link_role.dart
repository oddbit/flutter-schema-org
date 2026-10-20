// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/role.dart';
import 'package:schema_org/schemas/language.dart';

/// A Role that represents a Web link, e.g. as expressed via the 'url'
/// property. Its linkRelationship property can indicate URL-based and plain
/// textual link types, e.g. those in IANA link registry or others such as
/// 'amphtml'. This structure provides a placeholder where details from
/// HTML's link element can be represented outside of HTML, e.g. in JSON-LD
/// feeds.
/// See https://schema.org/LinkRole
class SchemaLinkRole extends SchemaRole {
  /// The language of the content or performance or used in an action. Please
  /// use one of the language codes from the [IETF BCP 47
  /// standard](http://tools.ietf.org/html/bcp47). See also
  /// [SchemaavailableLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic inLanguage;

  /// Indicates the relationship type of a Web link.
  String? linkRelationship;

  /// Create a new instance of [SchemaLinkRole]
  SchemaLinkRole({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endDate,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.namedPosition,
    super.owner,
    super.potentialAction,
    super.roleName,
    super.sameAs,
    super.startDate,
    super.subjectOf,
    super.url,
    this.inLanguage,
    this.linkRelationship,
  });

  /// Serialize [SchemaLinkRole] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'LinkRole',
        'inLanguage': convertToJsonLd(
            inLanguage, (v) => v is SchemaLanguage || v is String),
        'linkRelationship': convertToJsonLd(linkRelationship),
      });
}
