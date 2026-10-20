// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/comment.dart';
import 'package:schema_org/schemas/answer.dart';
import 'package:schema_org/schemas/item_list.dart';

/// A specific question - e.g. from a user seeking answers online, or
/// collected in a Frequently Asked Questions (FAQ) document.
/// See https://schema.org/Question
class SchemaQuestion extends SchemaComment {
  /// The answer(s) that has been accepted as best, typically on a
  /// Question/Answer site. Sites vary in their selection mechanisms, e.g.
  /// drawing on community opinion and/or the view of the Question author.
  ///
  /// Supported types: [SchemaAnswer], [SchemaItemList]
  dynamic acceptedAnswer;

  /// The number of answers this question has received.
  int? answerCount;

  /// For questions that are part of learning resources (e.g. Quiz),
  /// eduQuestionType indicates the format of question being given. Example:
  /// "Multiple choice", "Open ended", "Flashcard".
  String? eduQuestionType;

  /// An answer (possibly one of several, possibly incorrect) to a Question,
  /// e.g. on a Question/Answer site.
  ///
  /// Supported types: [SchemaAnswer], [SchemaItemList]
  dynamic suggestedAnswer;

  /// Create a new instance of [SchemaQuestion]
  SchemaQuestion({
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
    super.downvoteCount,
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
    super.parentItem,
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
    super.sharedContent,
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
    super.upvoteCount,
    super.url,
    super.usageInfo,
    super.version,
    super.video,
    super.wordCount,
    super.workExample,
    super.workTranslation,
    this.acceptedAnswer,
    this.answerCount,
    this.eduQuestionType,
    this.suggestedAnswer,
  });

  /// Serialize [SchemaQuestion] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Question',
        'acceptedAnswer': convertToJsonLd(
            acceptedAnswer, (v) => v is SchemaAnswer || v is SchemaItemList),
        'answerCount': convertToJsonLd(answerCount),
        'eduQuestionType': convertToJsonLd(eduQuestionType),
        'suggestedAnswer': convertToJsonLd(
            suggestedAnswer, (v) => v is SchemaAnswer || v is SchemaItemList),
      });
}
