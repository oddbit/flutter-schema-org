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
import 'package:schema_org/schemas/class.dart';
import 'package:schema_org/schemas/enumeration.dart';

/// A property, used to indicate attributes and relationships of some Thing;
/// equivalent to rdf:Property.
/// See https://schema.org/Property
class SchemaProperty extends SchemaIntangible {
  /// Relates a property to a class that is (one of) the type(s) the property
  /// is expected to be used on.
  SchemaClass? domainIncludes;

  /// Relates a property to a property that is its inverse. Inverse properties
  /// relate the same pairs of items to each other, but in reversed direction.
  /// For example, the 'alumni' and 'alumniOf' properties are inverseOf each
  /// other. Some properties don't have explicit inverses; in these situations
  /// RDFa and JSON-LD syntax for reverse properties can be used.
  SchemaProperty? inverseOf;

  /// Relates a property to a class that constitutes (one of) the expected
  /// type(s) for values of the property.
  SchemaClass? rangeIncludes;

  /// Relates a term (i.e. a property, class or enumeration) to one that
  /// supersedes it.
  ///
  /// Supported types: [SchemaClass], [SchemaEnumeration], [SchemaProperty]
  dynamic supersededBy;

  /// Create a new instance of [SchemaProperty]
  SchemaProperty({
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
    this.domainIncludes,
    this.inverseOf,
    this.rangeIncludes,
    this.supersededBy,
  });

  /// Serialize [SchemaProperty] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Property',
        'domainIncludes': convertToJsonLd(domainIncludes),
        'inverseOf': convertToJsonLd(inverseOf),
        'rangeIncludes': convertToJsonLd(rangeIncludes),
        'supersededBy': convertToJsonLd(
            supersededBy,
            (v) =>
                v is SchemaClass ||
                v is SchemaEnumeration ||
                v is SchemaProperty),
      });
}
