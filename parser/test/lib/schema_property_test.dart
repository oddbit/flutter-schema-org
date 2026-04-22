// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

// ignore_for_file: avoid_relative_lib_imports

import 'package:test/test.dart';

import '../../lib/schema_property.dart';

void main() {
  group('Schema Parser CLI', () {
    group('Schema Property', () {
      test('should be able to make schema property from JSON', () {
        final schemaProperty = SchemaProperty.fromJson(
          {
            '@id': 'schema:author',
            '@type': 'rdf:Property',
            'rdfs:comment':
                'The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.',
            'rdfs:label': 'author',
            'schema:domainIncludes': [
              {'@id': 'schema:Rating'},
              {'@id': 'schema:CreativeWork'}
            ],
            'schema:rangeIncludes': [
              {'@id': 'schema:Person'},
              {'@id': 'schema:Organization'}
            ]
          },
        );

        expect(schemaProperty.name, 'author');
        expect(schemaProperty.description,
            'The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.');
        expect(schemaProperty.declaredType, 'dynamic');
        expect(
          schemaProperty.schemaTypes,
          List<String>.from(['Person', 'Organization']..sort()),
          reason: 'Should have a sorted array of these items',
        );
        expect(
          schemaProperty.inClasses,
          List<String>.from(['Rating', 'CreativeWork']..sort()),
          reason: 'Should have a sorted array of these items',
        );
      });

      test('should use type String for Text', () {
        final schemaProperty = SchemaProperty.fromJson(
          {
            '@id': 'schema:foo',
            '@type': 'rdf:Property',
            'rdfs:comment': 'baz',
            'rdfs:label': 'foo',
            'schema:domainIncludes': [],
            'schema:rangeIncludes': [
              {'@id': 'schema:Text'},
            ]
          },
        );

        expect(schemaProperty.declaredType, 'String');
      });

      test('should use type int for Integer', () {
        final schemaProperty = SchemaProperty.fromJson(
          {
            '@id': 'schema:foo',
            '@type': 'rdf:Property',
            'rdfs:comment': 'baz',
            'rdfs:label': 'foo',
            'schema:domainIncludes': [],
            'schema:rangeIncludes': [
              {'@id': 'schema:Integer'},
            ]
          },
        );

        expect(schemaProperty.declaredType, 'int');
      });

      test('should use type num for Number', () {
        // Schema.org `Number` is the union of Integer and Float, so it
        // maps to `num` in Dart. Historically this was mis-mapped to `int`
        // and truncated fractional values on serialization.
        final schemaProperty = SchemaProperty.fromJson(
          {
            '@id': 'schema:foo',
            '@type': 'rdf:Property',
            'rdfs:comment': 'baz',
            'rdfs:label': 'foo',
            'schema:domainIncludes': [],
            'schema:rangeIncludes': [
              {'@id': 'schema:Number'},
            ]
          },
        );

        expect(schemaProperty.declaredType, 'num');
      });

      test('collapses Text and URL into a single String declared type', () {
        // `Text` and `URL` both map to `String` in Dart. The property
        // should be declared as a plain `String`, not `dynamic`, and the
        // supported-types list should not contain the same type twice.
        final schemaProperty = SchemaProperty.fromJson(
          {
            '@id': 'schema:additionalType',
            '@type': 'rdf:Property',
            'rdfs:comment': 'additional type',
            'rdfs:label': 'additionalType',
            'schema:domainIncludes': [],
            'schema:rangeIncludes': [
              {'@id': 'schema:Text'},
              {'@id': 'schema:URL'},
            ]
          },
        );

        expect(schemaProperty.schemaTypes, ['String']);
        expect(schemaProperty.declaredType, 'String');
        expect(schemaProperty.isNullable, isTrue);
      });

      test('should use type bool for Boolean', () {
        final schemaProperty = SchemaProperty.fromJson(
          {
            '@id': 'schema:foo',
            '@type': 'rdf:Property',
            'rdfs:comment': 'baz',
            'rdfs:label': 'foo',
            'schema:domainIncludes': [],
            'schema:rangeIncludes': [
              {'@id': 'schema:Boolean'},
            ]
          },
        );

        expect(schemaProperty.declaredType, 'bool');
      });

      test('captures schema:supersededBy as deprecation metadata', () {
        final schemaProperty = SchemaProperty.fromJson(
          {
            '@id': 'schema:serverIssuesFor',
            '@type': 'rdf:Property',
            'rdfs:comment': 'Legacy property',
            'rdfs:label': 'serverIssuesFor',
            'schema:domainIncludes': [],
            'schema:rangeIncludes': [
              {'@id': 'schema:Text'},
            ],
            'schema:supersededBy': {'@id': 'schema:replacementProperty'},
          },
        );

        expect(schemaProperty.isDeprecated, isTrue);
        expect(schemaProperty.supersededBy, ['replacementProperty']);
      });

      test('should use type original schema name for other types', () {
        final schemaProperty = SchemaProperty.fromJson(
          {
            '@id': 'schema:foo',
            '@type': 'rdf:Property',
            'rdfs:comment': 'baz',
            'rdfs:label': 'foo',
            'schema:domainIncludes': [],
            'schema:rangeIncludes': [
              {'@id': 'schema:OtherType'},
            ]
          },
        );

        expect(schemaProperty.declaredType, 'OtherType');
      });
    });
  });
}
