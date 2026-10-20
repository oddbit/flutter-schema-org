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
import 'package:schema_org/schemas/operating_system.dart';
import 'package:schema_org/schemas/runtime_platform.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/data_feed.dart';

/// A software application.
/// See https://schema.org/SoftwareApplication
class SchemaSoftwareApplication extends SchemaCreativeWork {
  /// Type of software application, e.g. 'Game, Multimedia'.
  String? applicationCategory;

  /// Subcategory of the application, e.g. 'Arcade Game'.
  String? applicationSubCategory;

  /// The name of the application suite to which the application belongs (e.g.
  /// Excel belongs to Office).
  String? applicationSuite;

  /// Device required to run the application. Used in cases where a specific
  /// make/model is required to run the application.
  String? availableOnDevice;

  /// Countries for which the application is not supported. You can also
  /// provide the two-letter ISO 3166-1 alpha-2 country code.
  String? countriesNotSupported;

  /// Countries for which the application is supported. You can also provide
  /// the two-letter ISO 3166-1 alpha-2 country code.
  String? countriesSupported;

  /// Device required to run the application. Used in cases where a specific
  /// make/model is required to run the application.
  @Deprecated('Use [availableOnDevice]. See https://schema.org/device')
  String? device;

  /// If the file can be downloaded, URL to download the binary.
  String? downloadUrl;

  /// Features or modules provided by this application (and possibly required
  /// by other applications).
  String? featureList;

  /// Size of the application / package (e.g. 18MB). In the absence of a unit
  /// (MB, KB etc.), KB will be assumed.
  String? fileSize;

  /// URL at which the app may be installed, if different from the URL of the
  /// item.
  String? installUrl;

  /// Minimum memory requirements.
  String? memoryRequirements;

  /// Operating systems supported (Windows 7, OS X 10.6, Android 1.6).
  ///
  /// Supported types: [SchemaOperatingSystem], [String]
  dynamic operatingSystem;

  /// Permission(s) required to run the app (for example, a mobile app may
  /// require full internet access or may run only on wifi).
  String? permissions;

  /// Processor architecture required to run the application (e.g. IA64).
  String? processorRequirements;

  /// Description of what changed in this version.
  String? releaseNotes;

  /// Component dependency requirements for application. This includes runtime
  /// environments and shared libraries that are not included in the
  /// application distribution package, but required to run the application
  /// (examples: DirectX, Java or .NET runtime).
  @Deprecated('Use [softwareRequirements]. See https://schema.org/requirements')
  String? requirements;

  /// Runtime platform or script interpreter dependencies (example: Java v1,
  /// Python 2.3, .NET Framework 3.0).
  ///
  /// Supported types: [SchemaRuntimePlatform], [String]
  dynamic runtimePlatform;

  /// A link to a screenshot image of the app.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic screenshot;

  /// Additional content for a software application.
  SchemaSoftwareApplication? softwareAddOn;

  /// Software application help.
  SchemaCreativeWork? softwareHelp;

  /// Component dependency requirements for application. This includes runtime
  /// environments and shared libraries that are not included in the
  /// application distribution package, but required to run the application
  /// (examples: DirectX, Java or .NET runtime).
  ///
  /// Supported types: [SchemaSoftwareApplication], [String]
  dynamic softwareRequirements;

  /// Version of the software instance.
  String? softwareVersion;

  /// Storage requirements (free space required).
  String? storageRequirements;

  /// Supporting data for a SoftwareApplication.
  SchemaDataFeed? supportingData;

  /// Create a new instance of [SchemaSoftwareApplication]
  SchemaSoftwareApplication({
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
    this.applicationCategory,
    this.applicationSubCategory,
    this.applicationSuite,
    this.availableOnDevice,
    this.countriesNotSupported,
    this.countriesSupported,
    this.device,
    this.downloadUrl,
    this.featureList,
    this.fileSize,
    this.installUrl,
    this.memoryRequirements,
    this.operatingSystem,
    this.permissions,
    this.processorRequirements,
    this.releaseNotes,
    this.requirements,
    this.runtimePlatform,
    this.screenshot,
    this.softwareAddOn,
    this.softwareHelp,
    this.softwareRequirements,
    this.softwareVersion,
    this.storageRequirements,
    this.supportingData,
  });

  /// Serialize [SchemaSoftwareApplication] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'SoftwareApplication',
        'applicationCategory': convertToJsonLd(applicationCategory),
        'applicationSubCategory': convertToJsonLd(applicationSubCategory),
        'applicationSuite': convertToJsonLd(applicationSuite),
        'availableOnDevice': convertToJsonLd(availableOnDevice),
        'countriesNotSupported': convertToJsonLd(countriesNotSupported),
        'countriesSupported': convertToJsonLd(countriesSupported),
        'device': convertToJsonLd(device),
        'downloadUrl': convertToJsonLd(downloadUrl),
        'featureList': convertToJsonLd(featureList),
        'fileSize': convertToJsonLd(fileSize),
        'installUrl': convertToJsonLd(installUrl),
        'memoryRequirements': convertToJsonLd(memoryRequirements),
        'operatingSystem': convertToJsonLd(
            operatingSystem, (v) => v is SchemaOperatingSystem || v is String),
        'permissions': convertToJsonLd(permissions),
        'processorRequirements': convertToJsonLd(processorRequirements),
        'releaseNotes': convertToJsonLd(releaseNotes),
        'requirements': convertToJsonLd(requirements),
        'runtimePlatform': convertToJsonLd(
            runtimePlatform, (v) => v is SchemaRuntimePlatform || v is String),
        'screenshot': convertToJsonLd(
            screenshot, (v) => v is SchemaImageObject || v is String),
        'softwareAddOn': convertToJsonLd(softwareAddOn),
        'softwareHelp': convertToJsonLd(softwareHelp),
        'softwareRequirements': convertToJsonLd(softwareRequirements,
            (v) => v is SchemaSoftwareApplication || v is String),
        'softwareVersion': convertToJsonLd(softwareVersion),
        'storageRequirements': convertToJsonLd(storageRequirements),
        'supportingData': convertToJsonLd(supportingData),
      });
}
