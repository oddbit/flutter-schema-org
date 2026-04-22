// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'package:schema_parser/utils.dart';

/// Represents a Schema.org property.
///
/// A property is any `rdf:Property` node in the Schema.org graph. It carries
/// a human-readable [description], the Dart-mapped [schemaTypes] it can hold
/// (its `schema:rangeIncludes`), and the classes it attaches to (its
/// `schema:domainIncludes`, exposed as [inClasses]).
///
/// Dart does not have union types, so properties whose range spans more than
/// one Dart type are declared as `dynamic` and validated at serialization
/// time by `convertToJsonLd`. See [declaredType] for the rules.
class SchemaProperty {
  /// Creates a new instance of [SchemaProperty].
  SchemaProperty({
    required this.name,
    required this.description,
    required this.schemaTypes,
    required this.inClasses,
    this.supersededBy = const [],
  });

  /// Creates a new instance of [SchemaProperty] from a JSON object.
  factory SchemaProperty.fromJson(Map<String, dynamic> json) {
    return SchemaProperty(
      name: getPossiblyTranslatedText(json['rdfs:label']),
      description: getPossiblyTranslatedText(json['rdfs:comment']),
      schemaTypes: parseRelationship(json['schema:rangeIncludes']),
      inClasses: parseRelationship(json['schema:domainIncludes']),
      supersededBy: parseRelationship(json['schema:supersededBy']),
    );
  }

  /// The property name as declared in generated code.
  final String name;

  /// The human-readable description. Used as a doc comment on the property.
  final String description;

  /// The Dart types accepted by this property, deduplicated and sorted.
  ///
  /// Populated from `schema:rangeIncludes` after mapping to Dart types, so
  /// e.g. a range of `[Text, URL]` becomes `['String']`, not
  /// `['String', 'String']`. The list is used to drive:
  ///
  /// - the `Supported types:` hint in the generated doc comment,
  /// - the runtime type list passed to `convertToJsonLd`.
  final List<String> schemaTypes;

  /// The classes that declare this property (from `schema:domainIncludes`).
  final List<String> inClasses;

  /// Replacements declared via `schema:supersededBy`. When non-empty the
  /// generator annotates the emitted field with `@Deprecated` and points
  /// callers at the replacement property (or properties).
  final List<String> supersededBy;

  /// Whether Schema.org has marked this property as deprecated.
  bool get isDeprecated => supersededBy.isNotEmpty;

  /// The Dart type declared on the generated field.
  ///
  /// - If the property accepts exactly one Dart type, that type is used.
  /// - If it accepts more than one, the field is declared as `dynamic`
  ///   because Dart has no union types. The true set is preserved in
  ///   [schemaTypes] and checked at runtime during serialization.
  String get declaredType =>
      schemaTypes.length > 1 ? 'dynamic' : schemaTypes.first;

  /// Whether the generated field should be declared nullable.
  ///
  /// Schema.org does not formally express which properties are required, so
  /// every concrete-typed field is treated as optional (`T?`). Fields typed
  /// as `dynamic` are implicitly nullable and the `?` suffix would be
  /// redundant, so this returns `false` for them.
  bool get isNullable => declaredType != 'dynamic';
}
