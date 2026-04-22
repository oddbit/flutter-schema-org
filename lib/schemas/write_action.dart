// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/create_action.dart';
import 'package:schema_org/schemas/language.dart';

/// The act of authoring written creative content.
/// See https://schema.org/WriteAction
class SchemaWriteAction extends SchemaCreateAction {
  /// //tools.ietf.org/html/bcp47). See also [SchemaavailableLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic inLanguage;

  /// A sub property of instrument. The language used on this action.
  @Deprecated('Use [inLanguage]. See https://schema.org/language')
  SchemaLanguage? language;

  /// Create a new instance of [SchemaWriteAction]
  SchemaWriteAction({
    super.actionProcess,
    super.actionStatus,
    super.additionalType,
    super.agent,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.endTime,
    super.error,
    super.identifier,
    super.image,
    super.instrument,
    super.location,
    super.mainEntityOfPage,
    super.name,
    super.object,
    super.owner,
    super.participant,
    super.potentialAction,
    super.provider,
    super.result,
    super.sameAs,
    super.startTime,
    super.subjectOf,
    super.target,
    super.url,
    this.inLanguage,
    this.language,
  });

  /// Serialize [SchemaWriteAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'WriteAction',
        'inLanguage': convertToJsonLd(inLanguage, [SchemaLanguage, String]),
        'language': convertToJsonLd(language, [SchemaLanguage]),
      });
}
