// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/intangible.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/offer.dart';

/// A subscription which allows a user to access media including audio,
/// video, books, etc.
/// See https://schema.org/MediaSubscription
class SchemaMediaSubscription extends SchemaIntangible {
  /// The Organization responsible for authenticating the user's subscription.
  /// For example, many media apps require a cable/satellite provider to
  /// authenticate your subscription before playing media.
  SchemaOrganization? authenticator;

  /// An Offer which must be accepted before the user can perform the Action.
  /// For example, the user may need to buy a movie before being able to watch
  /// it.
  SchemaOffer? expectsAcceptanceOf;

  /// Create a new instance of [SchemaMediaSubscription]
  SchemaMediaSubscription({
    super.additionalType,
    super.alternateName,
    super.description,
    super.disambiguatingDescription,
    super.identifier,
    super.image,
    super.mainEntityOfPage,
    super.name,
    super.owner,
    super.potentialAction,
    super.sameAs,
    super.subjectOf,
    super.url,
    this.authenticator,
    this.expectsAcceptanceOf,
  });

  /// Serialize [SchemaMediaSubscription] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'MediaSubscription',
        'authenticator': convertToJsonLd(authenticator),
        'expectsAcceptanceOf': convertToJsonLd(expectsAcceptanceOf),
      });
}
