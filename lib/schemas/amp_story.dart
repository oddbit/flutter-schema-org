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
import 'package:schema_org/schemas/media_object.dart';
import 'package:schema_org/schemas/news_article.dart';
import 'package:schema_org/schemas/duration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/distance.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/media_subscription.dart';

/// A creative work with a visual storytelling format intended to be viewed
/// online, particularly on mobile devices.
/// See https://schema.org/AmpStory
class SchemaAmpStory extends SchemaCreativeWork implements SchemaMediaObject {
  /// A NewsArticle associated with the Media Object.
  @override
  SchemaNewsArticle? associatedArticle;

  /// The bitrate of the media object.
  @override
  String? bitrate;

  /// File size in (mega/kilo)bytes.
  @override
  String? contentSize;

  /// Actual bytes of the media object, for example the image file or video
  /// file.
  @override
  String? contentUrl;

  /// //en.wikipedia.org/wiki/ISO_8601).
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue]
  @override
  dynamic duration;

  /// A URL pointing to a player for a specific video. In general, this is the
  /// information in the ```src``` element of an ```embed``` tag and should not
  /// be the same as the content of the ```loc``` tag.
  @override
  String? embedUrl;

  /// The CreativeWork encoded by this media object.
  @override
  SchemaCreativeWork? encodesCreativeWork;

  /// The endTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to end. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from January to *December*. For media, including audio
  /// and video, it's the time offset of the end of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  @override
  String? endTime;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  @override
  dynamic height;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
  /// GeoShape for the geo-political region(s) for which the offer or delivery
  /// charge specification is not valid, e.g. a region where the transaction is
  /// not allowed.\n\nSee also [SchemaeligibleRegion].
  ///
  /// Supported types: [SchemaGeoShape], [SchemaPlace], [String]
  @override
  dynamic ineligibleRegion;

  /// Player type required&#x2014;for example, Flash or Silverlight.
  @override
  String? playerType;

  /// The production company or studio responsible for the item, e.g. series,
  /// video game, episode etc.
  @override
  SchemaOrganization? productionCompany;

  /// //en.wikipedia.org/wiki/ISO_3166).
  @override
  SchemaPlace? regionsAllowed;

  /// Indicates if use of the media require a subscription (either paid or
  /// free). Allowed values are ```true``` or ```false``` (note that an earlier
  /// version had 'yes', 'no').
  ///
  /// Supported types: [SchemaMediaSubscription], [bool]
  @override
  dynamic requiresSubscription;

  /// //en.wikipedia.org/wiki/SHA-2) SHA256 hash of the content of the item.
  /// For example, a zero-length input has value
  /// 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'.
  @override
  String? sha256;

  /// The startTime of something. For a reserved event or service (e.g.
  /// FoodEstablishmentReservation), the time that it is expected to start. For
  /// actions that span a period of time, when the action was performed. E.g.
  /// John wrote a book from *January* to December. For media, including audio
  /// and video, it's the time offset of the start of a clip within a larger
  /// file.\n\nNote that Event uses startDate/endDate instead of
  /// startTime/endTime, even when describing dates with times. This situation
  /// may be clarified in future revisions.
  @override
  String? startTime;

  /// Date (including time if available) when this media object was uploaded to
  /// this site.
  @override
  String? uploadDate;

  /// The width of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  @override
  dynamic width;

  /// Create a new instance of [SchemaAmpStory]
  SchemaAmpStory({
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
    this.associatedArticle,
    this.bitrate,
    this.contentSize,
    this.contentUrl,
    this.duration,
    this.embedUrl,
    this.encodesCreativeWork,
    this.endTime,
    this.height,
    this.ineligibleRegion,
    this.playerType,
    this.productionCompany,
    this.regionsAllowed,
    this.requiresSubscription,
    this.sha256,
    this.startTime,
    this.uploadDate,
    this.width,
  });

  /// Serialize [SchemaAmpStory] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'AmpStory',
        'associatedArticle':
            convertToJsonLd(associatedArticle, [SchemaNewsArticle]),
        'bitrate': convertToJsonLd(bitrate, [String]),
        'contentSize': convertToJsonLd(contentSize, [String]),
        'contentUrl': convertToJsonLd(contentUrl, [String]),
        'duration': convertToJsonLd(
            duration, [SchemaDuration, SchemaQuantitativeValue]),
        'embedUrl': convertToJsonLd(embedUrl, [String]),
        'encodesCreativeWork':
            convertToJsonLd(encodesCreativeWork, [SchemaCreativeWork]),
        'endTime': convertToJsonLd(endTime, [String]),
        'height':
            convertToJsonLd(height, [SchemaDistance, SchemaQuantitativeValue]),
        'ineligibleRegion': convertToJsonLd(
            ineligibleRegion, [SchemaGeoShape, SchemaPlace, String]),
        'playerType': convertToJsonLd(playerType, [String]),
        'productionCompany':
            convertToJsonLd(productionCompany, [SchemaOrganization]),
        'regionsAllowed': convertToJsonLd(regionsAllowed, [SchemaPlace]),
        'requiresSubscription': convertToJsonLd(
            requiresSubscription, [SchemaMediaSubscription, bool]),
        'sha256': convertToJsonLd(sha256, [String]),
        'startTime': convertToJsonLd(startTime, [String]),
        'uploadDate': convertToJsonLd(uploadDate, [String]),
        'width':
            convertToJsonLd(width, [SchemaDistance, SchemaQuantitativeValue]),
      });
}
