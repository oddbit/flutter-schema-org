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
import 'package:schema_org/schemas/category_code.dart';
import 'package:schema_org/schemas/physical_activity_category.dart';
import 'package:schema_org/schemas/thing.dart';
import 'package:schema_org/schemas/geo_shape.dart';
import 'package:schema_org/schemas/place.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/media_subscription.dart';

/// A set of requirements that must be fulfilled in order to perform an
/// Action.
/// See https://schema.org/ActionAccessSpecification
class SchemaActionAccessSpecification extends SchemaIntangible {
  /// The end of the availability of the product or service included in the
  /// offer.
  String? availabilityEnds;

  /// The beginning of the availability of the product or service included in
  /// the offer.
  String? availabilityStarts;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [SchemaThing]
  dynamic category;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
  /// GeoShape for the geo-political region(s) for which the offer or delivery
  /// charge specification is valid.\n\nSee also [SchemaineligibleRegion].
  ///
  /// Supported types: [SchemaGeoShape], [SchemaPlace], [String]
  dynamic eligibleRegion;

  /// An Offer which must be accepted before the user can perform the Action.
  /// For example, the user may need to buy a movie before being able to watch
  /// it.
  SchemaOffer? expectsAcceptanceOf;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
  /// GeoShape for the geo-political region(s) for which the offer or delivery
  /// charge specification is not valid, e.g. a region where the transaction is
  /// not allowed.\n\nSee also [SchemaeligibleRegion].
  ///
  /// Supported types: [SchemaGeoShape], [SchemaPlace], [String]
  dynamic ineligibleRegion;

  /// Indicates if use of the media require a subscription (either paid or
  /// free). Allowed values are ```true``` or ```false``` (note that an earlier
  /// version had 'yes', 'no').
  ///
  /// Supported types: [SchemaMediaSubscription], [bool]
  dynamic requiresSubscription;

  /// Create a new instance of [SchemaActionAccessSpecification]
  SchemaActionAccessSpecification({
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
    this.availabilityEnds,
    this.availabilityStarts,
    this.category,
    this.eligibleRegion,
    this.expectsAcceptanceOf,
    this.ineligibleRegion,
    this.requiresSubscription,
  });

  /// Serialize [SchemaActionAccessSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'ActionAccessSpecification',
        'availabilityEnds': convertToJsonLd(availabilityEnds, [String]),
        'availabilityStarts': convertToJsonLd(availabilityStarts, [String]),
        'category': convertToJsonLd(category, [
          SchemaCategoryCode,
          SchemaPhysicalActivityCategory,
          String,
          SchemaThing
        ]),
        'eligibleRegion': convertToJsonLd(
            eligibleRegion, [SchemaGeoShape, SchemaPlace, String]),
        'expectsAcceptanceOf':
            convertToJsonLd(expectsAcceptanceOf, [SchemaOffer]),
        'ineligibleRegion': convertToJsonLd(
            ineligibleRegion, [SchemaGeoShape, SchemaPlace, String]),
        'requiresSubscription': convertToJsonLd(
            requiresSubscription, [SchemaMediaSubscription, bool]),
      });
}
