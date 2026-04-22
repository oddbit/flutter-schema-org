// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/performing_group.dart';
import 'package:schema_org/schemas/music_album.dart';
import 'package:schema_org/schemas/defined_term.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/item_list.dart';
import 'package:schema_org/schemas/music_recording.dart';

/// A musical group, such as a band, an orchestra, or a choir. Can also be a
/// solo musician.
/// See https://schema.org/MusicGroup
class SchemaMusicGroup extends SchemaPerformingGroup {
  /// A music album.
  SchemaMusicAlbum? album;

  /// A collection of music albums.
  @Deprecated('Use [album]. See https://schema.org/albums')
  SchemaMusicAlbum? albums;

  /// Genre of the creative work, broadcast channel or group.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic genre;

  /// A member of a music group&#x2014;for example, John, Paul, George, or
  /// Ringo.
  @Deprecated('Use [member]. See https://schema.org/musicGroupMember')
  SchemaPerson? musicGroupMember;

  /// A music recording (track)&#x2014;usually a single song. If an ItemList is
  /// given, the list should contain items of type MusicRecording.
  ///
  /// Supported types: [SchemaItemList], [SchemaMusicRecording]
  dynamic track;

  /// A music recording (track)&#x2014;usually a single song.
  @Deprecated('Use [track]. See https://schema.org/tracks')
  SchemaMusicRecording? tracks;

  /// Create a new instance of [SchemaMusicGroup]
  SchemaMusicGroup({
    super.acceptedPaymentMethod,
    super.actionableFeedbackPolicy,
    super.additionalType,
    super.address,
    super.agentInteractionStatistic,
    super.aggregateRating,
    super.alternateName,
    super.alumni,
    super.areaServed,
    super.award,
    super.awards,
    super.brand,
    super.companyRegistration,
    super.contactPoint,
    super.contactPoints,
    super.correctionsPolicy,
    super.department,
    super.description,
    super.disambiguatingDescription,
    super.dissolutionDate,
    super.diversityPolicy,
    super.diversityStaffingReport,
    super.duns,
    super.email,
    super.employee,
    super.employees,
    super.ethicsPolicy,
    super.event,
    super.events,
    super.faxNumber,
    super.founder,
    super.founders,
    super.foundingDate,
    super.foundingLocation,
    super.funder,
    super.funding,
    super.globalLocationNumber,
    super.hasCertification,
    super.hasCredential,
    super.hasGS1DigitalLink,
    super.hasMemberProgram,
    super.hasMerchantReturnPolicy,
    super.hasOfferCatalog,
    super.hasPOS,
    super.hasShippingService,
    super.identifier,
    super.image,
    super.interactionStatistic,
    super.isicV4,
    super.iso6523Code,
    super.keywords,
    super.knowsAbout,
    super.knowsLanguage,
    super.legalAddress,
    super.legalName,
    super.legalRepresentative,
    super.leiCode,
    super.location,
    super.logo,
    super.mainEntityOfPage,
    super.makesOffer,
    super.member,
    super.memberOf,
    super.members,
    super.naics,
    super.name,
    super.nonprofitStatus,
    super.numberOfEmployees,
    super.owner,
    super.ownershipFundingInfo,
    super.owns,
    super.parentOrganization,
    super.potentialAction,
    super.publishingPrinciples,
    super.review,
    super.reviews,
    super.sameAs,
    super.seeks,
    super.serviceArea,
    super.skills,
    super.slogan,
    super.sponsor,
    super.subOrganization,
    super.subjectOf,
    super.taxID,
    super.telephone,
    super.unnamedSourcesPolicy,
    super.url,
    super.vatID,
    this.album,
    this.albums,
    this.genre,
    this.musicGroupMember,
    this.track,
    this.tracks,
  });

  /// Serialize [SchemaMusicGroup] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MusicGroup',
        'album': convertToJsonLd(album, [SchemaMusicAlbum]),
        'albums': convertToJsonLd(albums, [SchemaMusicAlbum]),
        'genre': convertToJsonLd(genre, [SchemaDefinedTerm, String]),
        'musicGroupMember': convertToJsonLd(musicGroupMember, [SchemaPerson]),
        'track': convertToJsonLd(track, [SchemaItemList, SchemaMusicRecording]),
        'tracks': convertToJsonLd(tracks, [SchemaMusicRecording]),
      });
}
