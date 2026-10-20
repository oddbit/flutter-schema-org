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
import 'package:schema_org/schemas/administrative_area.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/legal_force_status.dart';
import 'package:schema_org/schemas/category_code.dart';

/// A legal document such as an act, decree, bill, etc. (enforceable or not)
/// or a component of a legal act (like an article).
/// See https://schema.org/Legislation
class SchemaLegislation extends SchemaCreativeWork {
  /// Indicates a legal jurisdiction, e.g. of some legislation, or where some
  /// government service is based.
  ///
  /// Supported types: [SchemaAdministrativeArea], [String]
  dynamic jurisdiction;

  /// Another legislation that this legislation amends, introducing legal
  /// changes.
  SchemaLegislation? legislationAmends;

  /// Indicates that this legislation (or part of a legislation) somehow
  /// transfers another legislation in a different legislative context. This is
  /// an informative link, and it has no legal value. For legally-binding links
  /// of transposition, use the <a
  /// href="/legislationTransposes">legislationTransposes</a> property. For
  /// example an informative consolidated law of a European Union's member
  /// state "applies" the consolidated version of the European Directive
  /// implemented in it.
  SchemaLegislation? legislationApplies;

  /// Another legislation that this legislation changes. This encompasses the
  /// notions of amendment, replacement, correction, repeal, or other types of
  /// change. This may be a direct change (textual or non-textual amendment) or
  /// a consequential or indirect change. The property is to be used to express
  /// the existence of a change relationship between two acts rather than the
  /// existence of a consolidated version of the text that shows the result of
  /// the change. For consolidation relationships, use the <a
  /// href="/legislationConsolidates">legislationConsolidates</a> property.
  SchemaLegislation? legislationChanges;

  /// Another legislation that this one sets into force.
  SchemaLegislation? legislationCommences;

  /// Indicates another legislation taken into account in this consolidated
  /// legislation (which is usually the product of an editorial process that
  /// revises the legislation). This property should be used multiple times to
  /// refer to both the original version or the previous consolidated version,
  /// and to the legislations making the change.
  SchemaLegislation? legislationConsolidates;

  /// Another legislation in which this one introduces textual changes, like
  /// correction of spelling mistakes, with no legal impact (for modifications
  /// that have legal impact, use <a
  /// href="/legislationAmends">legislationAmends</a>).
  SchemaLegislation? legislationCorrects;

  /// The person or organization that countersigned the legislation. Depending
  /// on the legal context, a countersignature can indicate that the signed
  /// authority undertakes to assume responsibility for texts emanating from a
  /// person who is inviolable and irresponsible, (for example a King, Grand
  /// Duc or President), or that the authority is in charge of the
  /// implementation of the text.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic legislationCountersignedBy;

  /// The date of adoption or signature of the legislation. This is the date at
  /// which the text is officially aknowledged to be a legislation, even though
  /// it might not even be published or in force.
  String? legislationDate;

  /// The date at which the Legislation becomes applicable. This can sometimes
  /// be distinct from the date of entry into force : a text may come in force
  /// today, and state it will become applicable in 3 months.
  String? legislationDateOfApplicability;

  /// The point-in-time at which the provided description of the legislation is
  /// valid (e.g.: when looking at the law on the 2016-04-07 (= dateVersion), I
  /// get the consolidation of 2015-04-12 of the "National Insurance
  /// Contributions Act 2015")
  String? legislationDateVersion;

  /// Indicates that this Legislation ensures the implementation of another
  /// Legislation, for example by modifying national legislations so that they
  /// do not contradict to an EU regulation or decision. This implies a legal
  /// meaning. Transpositions of EU Directive should be captured with <a
  /// href="/legislationTransposes">legislationTransposes</a>.
  SchemaLegislation? legislationEnsuresImplementationOf;

  /// An identifier for the legislation. This can be either a string-based
  /// identifier, like the CELEX at EU level or the NOR in France, or a
  /// web-based, URL/URI identifier, like an ELI (European Legislation
  /// Identifier) or an URN-Lex.
  String? legislationIdentifier;

  /// The jurisdiction from which the legislation originates.
  ///
  /// Supported types: [SchemaAdministrativeArea], [String]
  dynamic legislationJurisdiction;

  /// Whether the legislation is currently in force, not in force, or partially
  /// in force.
  SchemaLegalForceStatus? legislationLegalForce;

  /// The person or organization that originally passed or made the law:
  /// typically parliament (for primary legislation) or government (for
  /// secondary legislation). This indicates the "legal author" of the law, as
  /// opposed to its physical author.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic legislationPassedBy;

  /// Another legislation that this legislation repeals (cancels, abrogates).
  SchemaLegislation? legislationRepeals;

  /// An individual or organization that has some kind of responsibility for
  /// the legislation. Typically the ministry who is/was in charge of
  /// elaborating the legislation, or the adressee for potential questions
  /// about the legislation once it is published.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic legislationResponsible;

  /// Indicates that this legislation (or part of legislation) fulfills the
  /// objectives set by another legislation, by passing appropriate
  /// implementation measures. Typically, some legislations of European Union's
  /// member states or regions transpose European Directives. This indicates a
  /// legally binding link between the 2 legislations.
  SchemaLegislation? legislationTransposes;

  /// The type of the legislation. Examples of values are "law", "act",
  /// "directive", "decree", "regulation", "statutory instrument", "loi
  /// organique", "règlement grand-ducal", etc., depending on the country.
  ///
  /// Supported types: [SchemaCategoryCode], [String]
  dynamic legislationType;

  /// Create a new instance of [SchemaLegislation]
  SchemaLegislation({
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
    this.jurisdiction,
    this.legislationAmends,
    this.legislationApplies,
    this.legislationChanges,
    this.legislationCommences,
    this.legislationConsolidates,
    this.legislationCorrects,
    this.legislationCountersignedBy,
    this.legislationDate,
    this.legislationDateOfApplicability,
    this.legislationDateVersion,
    this.legislationEnsuresImplementationOf,
    this.legislationIdentifier,
    this.legislationJurisdiction,
    this.legislationLegalForce,
    this.legislationPassedBy,
    this.legislationRepeals,
    this.legislationResponsible,
    this.legislationTransposes,
    this.legislationType,
  });

  /// Serialize [SchemaLegislation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Legislation',
        'jurisdiction': convertToJsonLd(
            jurisdiction, (v) => v is SchemaAdministrativeArea || v is String),
        'legislationAmends': convertToJsonLd(legislationAmends),
        'legislationApplies': convertToJsonLd(legislationApplies),
        'legislationChanges': convertToJsonLd(legislationChanges),
        'legislationCommences': convertToJsonLd(legislationCommences),
        'legislationConsolidates': convertToJsonLd(legislationConsolidates),
        'legislationCorrects': convertToJsonLd(legislationCorrects),
        'legislationCountersignedBy': convertToJsonLd(
            legislationCountersignedBy,
            (v) => v is SchemaOrganization || v is SchemaPerson),
        'legislationDate': convertToJsonLd(legislationDate),
        'legislationDateOfApplicability':
            convertToJsonLd(legislationDateOfApplicability),
        'legislationDateVersion': convertToJsonLd(legislationDateVersion),
        'legislationEnsuresImplementationOf':
            convertToJsonLd(legislationEnsuresImplementationOf),
        'legislationIdentifier': convertToJsonLd(legislationIdentifier),
        'legislationJurisdiction': convertToJsonLd(legislationJurisdiction,
            (v) => v is SchemaAdministrativeArea || v is String),
        'legislationLegalForce': convertToJsonLd(legislationLegalForce),
        'legislationPassedBy': convertToJsonLd(legislationPassedBy,
            (v) => v is SchemaOrganization || v is SchemaPerson),
        'legislationRepeals': convertToJsonLd(legislationRepeals),
        'legislationResponsible': convertToJsonLd(legislationResponsible,
            (v) => v is SchemaOrganization || v is SchemaPerson),
        'legislationTransposes': convertToJsonLd(legislationTransposes),
        'legislationType': convertToJsonLd(
            legislationType, (v) => v is SchemaCategoryCode || v is String),
      });
}
