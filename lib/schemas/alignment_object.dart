// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';

/// An intangible item that describes an alignment between a learning
/// resource and a node in an educational framework. Should not be used where
/// the nature of the alignment can be described using a simple property, for
/// example to express that a resource [Schemateaches] or [Schemaassesses] a
/// competency.
/// See https://schema.org/AlignmentObject
class SchemaAlignmentObject extends SchemaIntangible {
  /// 'requires', 'textComplexity', 'readingLevel', and 'educationalSubject'.
  String? alignmentType;

  /// The framework to which the resource being described is aligned.
  String? educationalFramework;

  /// The description of a node in an established educational framework.
  String? targetDescription;

  /// The name of a node in an established educational framework.
  String? targetName;

  /// The URL of a node in an established educational framework.
  String? targetUrl;

  /// Create a new instance of [SchemaAlignmentObject]
  SchemaAlignmentObject({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.alignmentType,
    this.educationalFramework,
    this.targetDescription,
    this.targetName,
    this.targetUrl,
  });

  /// Serialize [SchemaAlignmentObject] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'AlignmentObject',
        'alignmentType': convertToJsonLd(alignmentType, [String]),
        'educationalFramework': convertToJsonLd(educationalFramework, [String]),
        'targetDescription': convertToJsonLd(targetDescription, [String]),
        'targetName': convertToJsonLd(targetName, [String]),
        'targetUrl': convertToJsonLd(targetUrl, [String]),
      });
}
