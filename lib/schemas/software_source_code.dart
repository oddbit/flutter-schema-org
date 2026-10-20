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
import 'package:schema_org/schemas/computer_language.dart';
import 'package:schema_org/schemas/runtime_platform.dart';
import 'package:schema_org/schemas/software_application.dart';

/// Computer programming source code. Example: Full (compile ready)
/// solutions, code snippet samples, scripts, templates.
/// See https://schema.org/SoftwareSourceCode
class SchemaSoftwareSourceCode extends SchemaCreativeWork {
  /// Link to the repository where the un-compiled, human readable code and
  /// related code is located (SVN, GitHub, CodePlex).
  String? codeRepository;

  /// What type of code sample: full (compile ready) solution, code snippet,
  /// inline code, scripts, template.
  String? codeSampleType;

  /// The computer programming language.
  ///
  /// Supported types: [SchemaComputerLanguage], [String]
  dynamic programmingLanguage;

  /// Runtime platform or script interpreter dependencies (example: Java v1,
  /// Python 2.3, .NET Framework 3.0).
  @Deprecated('Use [runtimePlatform]. See https://schema.org/runtime')
  String? runtime;

  /// Runtime platform or script interpreter dependencies (example: Java v1,
  /// Python 2.3, .NET Framework 3.0).
  ///
  /// Supported types: [SchemaRuntimePlatform], [String]
  dynamic runtimePlatform;

  /// What type of code sample: full (compile ready) solution, code snippet,
  /// inline code, scripts, template.
  @Deprecated('Use [codeSampleType]. See https://schema.org/sampleType')
  String? sampleType;

  /// Target Operating System / Product to which the code applies. If applies
  /// to several versions, just the product name can be used.
  SchemaSoftwareApplication? targetProduct;

  /// Create a new instance of [SchemaSoftwareSourceCode]
  SchemaSoftwareSourceCode({
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
    this.codeRepository,
    this.codeSampleType,
    this.programmingLanguage,
    this.runtime,
    this.runtimePlatform,
    this.sampleType,
    this.targetProduct,
  });

  /// Serialize [SchemaSoftwareSourceCode] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SoftwareSourceCode',
        'codeRepository': convertToJsonLd(codeRepository),
        'codeSampleType': convertToJsonLd(codeSampleType),
        'programmingLanguage': convertToJsonLd(programmingLanguage,
            (v) => v is SchemaComputerLanguage || v is String),
        'runtime': convertToJsonLd(runtime),
        'runtimePlatform': convertToJsonLd(
            runtimePlatform, (v) => v is SchemaRuntimePlatform || v is String),
        'sampleType': convertToJsonLd(sampleType),
        'targetProduct': convertToJsonLd(targetProduct),
      });
}
