// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';
import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/text_object.dart';
import 'package:schema_org/schemas/property_value.dart';
import 'package:schema_org/schemas/image_object.dart';
import 'package:schema_org/schemas/creative_work.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/schemas/action.dart';
import 'package:schema_org/schemas/event.dart';

/// The most generic type of item.
/// See https://schema.org/Thing
class SchemaThing implements SchemaSerializable {
  /// An additional type for the item, typically used for adding more specific
  /// types from external vocabularies in microdata syntax. This is a
  /// relationship between something and a class that the thing is in.
  /// Typically the value is a URI-identified RDF class, and in this case
  /// corresponds to the use of rdf:type in RDF. Text values can be used
  /// sparingly, for cases where useful information can be added without their
  /// being an appropriate schema to reference. In the case of text values, the
  /// class label should follow the schema.org <a
  /// href="https://schema.org/docs/styleguide.html">style guide</a>.
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.
  ///
  /// Supported types: [String], [SchemaTextObject]
  dynamic description;

  /// A sub property of description. A short description of the item used to
  /// disambiguate from other, similar items. Information from other properties
  /// (in particular, name) may be necessary for the description to be useful
  /// for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for any kind of
  /// [SchemaThing], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides
  /// dedicated properties for representing many of these, either as textual
  /// strings or as URL (URI) links. See [background
  /// notes](/docs/datamodel.html#identifierBg) for more details.
  ///
  /// Supported types: [SchemaPropertyValue], [String]
  dynamic identifier;

  /// An image of the item. This can be a [SchemaURL] or a fully described
  /// [SchemaImageObject].
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is the main
  /// entity being described. See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// A person or organization who owns this Thing.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic owner;

  /// Indicates a potential Action, which describes an idealized action in
  /// which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the item's
  /// identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
  /// official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaEvent]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaThing]
  SchemaThing({
    this.additionalType,
    this.alternateName,
    this.description,
    this.disambiguatingDescription,
    this.identifier,
    this.image,
    this.mainEntityOfPage,
    this.name,
    this.owner,
    this.potentialAction,
    this.sameAs,
    this.subjectOf,
    this.url,
  });

  /// Serialize [SchemaThing] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Thing',
        'additionalType': convertToJsonLd(additionalType),
        'alternateName': convertToJsonLd(alternateName),
        'description': convertToJsonLd(
            description, (v) => v is String || v is SchemaTextObject),
        'disambiguatingDescription': convertToJsonLd(disambiguatingDescription),
        'identifier': convertToJsonLd(
            identifier, (v) => v is SchemaPropertyValue || v is String),
        'image': convertToJsonLd(
            image, (v) => v is SchemaImageObject || v is String),
        'mainEntityOfPage': convertToJsonLd(
            mainEntityOfPage, (v) => v is SchemaCreativeWork || v is String),
        'name': convertToJsonLd(name),
        'owner': convertToJsonLd(
            owner, (v) => v is SchemaOrganization || v is SchemaPerson),
        'potentialAction': convertToJsonLd(potentialAction),
        'sameAs': convertToJsonLd(sameAs),
        'subjectOf': convertToJsonLd(
            subjectOf, (v) => v is SchemaCreativeWork || v is SchemaEvent),
        'url': convertToJsonLd(url),
      });
}
