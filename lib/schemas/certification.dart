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
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/rating.dart';
import 'package:schema_org/schemas/certification_status_enumeration.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/administrative_area.dart';

/// //www.gs1.org/voc/CertificationDetails) class in the GS1 Web Vocabulary.
/// See https://schema.org/Certification
class SchemaCertification extends SchemaCreativeWork {
  /// //www.gs1.org/voc/certificationAuditDate).
  String? auditDate;

  /// //www.gs1.org/voc/certificationIdentification).
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic certificationIdentification;

  /// //www.gs1.org/voc/certificationValue).
  SchemaRating? certificationRating;

  /// //www.gs1.org/voc/certificationStatus).
  SchemaCertificationStatusEnumeration? certificationStatus;

  /// A measurement of an item, For example, the inseam of pants, the wheel
  /// size of a bicycle, the gauge of a screw, or the carbon footprint measured
  /// for certification by an authority. Usually an exact measurement, but can
  /// also be a range of measurements for adjustable products, for example
  /// belts and ski bindings.
  SchemaQuantitativeValue? hasMeasurement;

  /// The organization issuing the item, for example a [SchemaPermit],
  /// [SchemaTicket], or [SchemaCertification].
  SchemaOrganization? issuedBy;

  /// An associated logo.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic logo;

  /// The date when the item becomes valid.
  String? validFrom;

  /// The geographic area where the item is valid. Applies for example to a
  /// [SchemaPermit], a [SchemaCertification], or an
  /// [SchemaEducationalOccupationalCredential].
  SchemaAdministrativeArea? validIn;

  /// Create a new instance of [SchemaCertification]
  SchemaCertification({
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
    this.auditDate,
    this.certificationIdentification,
    this.certificationRating,
    this.certificationStatus,
    this.hasMeasurement,
    this.issuedBy,
    this.logo,
    this.validFrom,
    this.validIn,
  });

  /// Serialize [SchemaCertification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Certification',
        'auditDate': convertToJsonLd(auditDate, [String]),
        'certificationIdentification': convertToJsonLd(
            certificationIdentification, [SchemaDefinedTerm, String]),
        'certificationRating':
            convertToJsonLd(certificationRating, [SchemaRating]),
        'certificationStatus': convertToJsonLd(
            certificationStatus, [SchemaCertificationStatusEnumeration]),
        'hasMeasurement':
            convertToJsonLd(hasMeasurement, [SchemaQuantitativeValue]),
        'issuedBy': convertToJsonLd(issuedBy, [SchemaOrganization]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
        'validFrom': convertToJsonLd(validFrom, [String]),
        'validIn': convertToJsonLd(validIn, [SchemaAdministrativeArea]),
      });
}
