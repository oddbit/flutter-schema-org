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

      test('should use type int for Number', () {
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

        expect(schemaProperty.declaredType, 'int');
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
