// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/interact_action.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/language.dart';
import 'package:schema_org/schemas/audience.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';

/// The act of conveying information to another person via a communication
/// medium (instrument) such as speech, email, or telephone conversation.
/// See https://schema.org/CommunicateAction
class SchemaCommunicateAction extends SchemaInteractAction {
  /// The subject matter of an object.
  SchemaThing? about;

  /// The language of the content or performance or used in an action. Please
  /// use one of the language codes from the [IETF BCP 47
  /// standard](http://tools.ietf.org/html/bcp47). See also
  /// [SchemaavailableLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic inLanguage;

  /// A sub property of instrument. The language used on this action.
  @Deprecated('Use [inLanguage]. See https://schema.org/language')
  SchemaLanguage? language;

  /// A sub property of participant. The participant who is at the receiving
  /// end of the action.
  ///
  /// Supported types: [SchemaAudience], [SchemaContactPoint],
  /// [SchemaOrganization], [SchemaPerson]
  dynamic recipient;

  /// Create a new instance of [SchemaCommunicateAction]
  SchemaCommunicateAction({
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
    this.about,
    this.inLanguage,
    this.language,
    this.recipient,
  });

  /// Serialize [SchemaCommunicateAction] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'CommunicateAction',
        'about': convertToJsonLd(about),
        'inLanguage': convertToJsonLd(
            inLanguage, (v) => v is SchemaLanguage || v is String),
        'language': convertToJsonLd(language),
        'recipient': convertToJsonLd(
            recipient,
            (v) =>
                v is SchemaAudience ||
                v is SchemaContactPoint ||
                v is SchemaOrganization ||
                v is SchemaPerson),
      });
}
