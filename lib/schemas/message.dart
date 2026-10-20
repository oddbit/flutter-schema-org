// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/contact_point.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/audience.dart';

/// A single message from a sender to one or more organizations or people.
/// See https://schema.org/Message
class SchemaMessage extends SchemaCreativeWork {
  /// A sub property of recipient. The recipient blind copied on a message.
  ///
  /// Supported types: [SchemaContactPoint], [SchemaOrganization],
  /// [SchemaPerson]
  dynamic bccRecipient;

  /// A sub property of recipient. The recipient copied on a message.
  ///
  /// Supported types: [SchemaContactPoint], [SchemaOrganization],
  /// [SchemaPerson]
  dynamic ccRecipient;

  /// The date/time at which the message has been read by the recipient if a
  /// single recipient exists.
  String? dateRead;

  /// The date/time the message was received if a single recipient exists.
  String? dateReceived;

  /// The date/time at which the message was sent.
  String? dateSent;

  /// A CreativeWork attached to the message.
  SchemaCreativeWork? messageAttachment;

  /// A sub property of participant. The participant who is at the receiving
  /// end of the action.
  ///
  /// Supported types: [SchemaAudience], [SchemaContactPoint],
  /// [SchemaOrganization], [SchemaPerson]
  dynamic recipient;

  /// A sub property of participant. The participant who is at the sending end
  /// of the action.
  ///
  /// Supported types: [SchemaAudience], [SchemaOrganization], [SchemaPerson]
  dynamic sender;

  /// A sub property of recipient. The recipient who was directly sent the
  /// message.
  ///
  /// Supported types: [SchemaAudience], [SchemaContactPoint],
  /// [SchemaOrganization], [SchemaPerson]
  dynamic toRecipient;

  /// Create a new instance of [SchemaMessage]
  SchemaMessage({
    super.about,
    super.abstract,
    super.accessMode,
    super.accessModeSufficient,
    super.accessibilityAPI,
    super.accessibilityControl,
    super.accessibilityFeature,
    super.accessibilityHazard,
    super.accessibilitySummary,
    super.accountablePerson,
    super.acquireLicensePage,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.alternativeHeadline,
    super.archivedAt,
    super.assesses,
    super.associatedMedia,
    super.audience,
    super.audio,
    super.author,
    super.award,
    super.awards,
    super.character,
    super.citation,
    super.comment,
    super.commentCount,
    super.conditionsOfAccess,
    super.contentLocation,
    super.contentRating,
    super.contentReferenceTime,
    super.contributor,
    super.copyrightHolder,
    super.copyrightNotice,
    super.copyrightYear,
    super.correction,
    super.countryOfOrigin,
    super.creativeWorkStatus,
    super.creator,
    super.creditText,
    super.dateCreated,
    super.dateModified,
    super.datePublished,
    super.description,
    super.digitalSourceType,
    super.disambiguatingDescription,
    super.discussionUrl,
    super.displayLocation,
    super.editEIDR,
    super.editor,
    super.educationalAlignment,
    super.educationalLevel,
    super.educationalUse,
    super.encoding,
    super.encodingFormat,
    super.encodings,
    super.exampleOfWork,
    super.expires,
    super.fileFormat,
    super.funder,
    super.funding,
    super.genre,
    super.hasPart,
    super.headline,
    super.identifier,
    super.image,
    super.inLanguage,
    super.interactionStatistic,
    super.interactivityType,
    super.interpretedAsClaim,
    super.isAccessibleForFree,
    super.isBasedOn,
    super.isBasedOnUrl,
    super.isFamilyFriendly,
    super.isPartOf,
    super.keywords,
    super.learningResourceType,
    super.license,
    super.locationCreated,
    super.mainEntity,
    super.mainEntityOfPage,
    super.maintainer,
    super.material,
    super.materialExtent,
    super.mentions,
    super.name,
    super.offers,
    super.owner,
    super.pattern,
    super.position,
    super.potentialAction,
    super.producer,
    super.provider,
    super.publication,
    super.publisher,
    super.publisherImprint,
    super.publishingPrinciples,
    super.recordedAt,
    super.releasedEvent,
    super.review,
    super.reviews,
    super.sameAs,
    super.schemaVersion,
    super.sdDatePublished,
    super.sdLicense,
    super.sdPublisher,
    super.size,
    super.sourceOrganization,
    super.spatial,
    super.spatialCoverage,
    super.sponsor,
    super.subjectOf,
    super.teaches,
    super.temporal,
    super.temporalCoverage,
    super.text,
    super.thumbnail,
    super.thumbnailUrl,
    super.timeRequired,
    super.translationOfWork,
    super.translator,
    super.typicalAgeRange,
    super.url,
    super.usageInfo,
    super.version,
    super.video,
    super.wordCount,
    super.workExample,
    super.workTranslation,
    this.bccRecipient,
    this.ccRecipient,
    this.dateRead,
    this.dateReceived,
    this.dateSent,
    this.messageAttachment,
    this.recipient,
    this.sender,
    this.toRecipient,
  });

  /// Serialize [SchemaMessage] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Message',
        'bccRecipient': convertToJsonLd(
            bccRecipient,
            (v) =>
                v is SchemaContactPoint ||
                v is SchemaOrganization ||
                v is SchemaPerson),
        'ccRecipient': convertToJsonLd(
            ccRecipient,
            (v) =>
                v is SchemaContactPoint ||
                v is SchemaOrganization ||
                v is SchemaPerson),
        'dateRead': convertToJsonLd(dateRead),
        'dateReceived': convertToJsonLd(dateReceived),
        'dateSent': convertToJsonLd(dateSent),
        'messageAttachment': convertToJsonLd(messageAttachment),
        'recipient': convertToJsonLd(
            recipient,
            (v) =>
                v is SchemaAudience ||
                v is SchemaContactPoint ||
                v is SchemaOrganization ||
                v is SchemaPerson),
        'sender': convertToJsonLd(
            sender,
            (v) =>
                v is SchemaAudience ||
                v is SchemaOrganization ||
                v is SchemaPerson),
        'toRecipient': convertToJsonLd(
            toRecipient,
            (v) =>
                v is SchemaAudience ||
                v is SchemaContactPoint ||
                v is SchemaOrganization ||
                v is SchemaPerson),
      });
}
