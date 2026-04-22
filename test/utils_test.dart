// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'package:flutter_test/flutter_test.dart';
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/person.dart';
import 'package:schema_org/src/utils.dart';

/// A plain class that is not a `SchemaSerializable`. Used to verify that
/// `convertToJsonLd` still honours the historical `toJson()` convention
/// for callers who hand-roll their own types.
class _LegacyJsonClass {
  _LegacyJsonClass(this.name);
  final String name;
  Map<String, dynamic> toJson() => {'name': name};
}

void main() {
  group('Schema.org', () {
    group('convertToJsonLd', () {
      test('passes nulls, strings, numbers and bools through unchanged', () {
        expect(convertToJsonLd(null), isNull);
        expect(convertToJsonLd('Hello'), 'Hello');
        expect(convertToJsonLd(123), 123);
        expect(convertToJsonLd(1.5), 1.5);
        expect(convertToJsonLd(true), isTrue);
      });

      test('serializes SchemaSerializable values via toJsonLd', () {
        // Regression test: previously `convertToJsonLd` called `toJson()`
        // on nested values, but generated Schema.org classes only expose
        // `toJsonLd()`. Nesting a schema object inside another therefore
        // threw at runtime. The fix is to prefer `toJsonLd()` on any
        // `SchemaSerializable`, so nested schema instances round-trip.
        final org = SchemaOrganization(
          name: 'Oddbit',
          founder: SchemaPerson(name: 'Dennis'),
        );

        final json = org.toJsonLd();

        expect(json['@type'], 'Organization');
        expect(json['name'], 'Oddbit');
        expect(json['founder'], isA<Map<String, dynamic>>());
        expect(json['founder']['@type'], 'Person');
        expect(json['founder']['name'], 'Dennis');
      });

      test('falls back to toJson on non-schema objects', () {
        expect(
          convertToJsonLd(_LegacyJsonClass('Test')),
          {'name': 'Test'},
        );
      });

      test(
          'throws UnsupportedTypeException when the runtime type is not '
          'in the allowed set', () {
        expect(
          () => convertToJsonLd(_LegacyJsonClass('Test'), [String]),
          throwsA(isA<UnsupportedTypeException>()),
        );
      });

      test('serializes lists element-by-element', () {
        final result = convertToJsonLd(['a', 'b', 'c']);
        expect(result, ['a', 'b', 'c']);
      });

      test('returns null for an empty list so removeEmpty can drop it', () {
        expect(convertToJsonLd(<String>[]), isNull);
      });
    });

    group('removeEmpty', () {
      test('strips null values from a JSON-LD object', () {
        final input = <String, dynamic>{
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'actionableFeedbackPolicy': null,
          'address': null,
          'logo': 'https://avatars.githubusercontent.com/u/1946799?s=200&v=4',
          'name': 'Oddbit',
          'url': 'https://oddbit.com',
        };

        expect(removeEmpty(input), {
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'logo': 'https://avatars.githubusercontent.com/u/1946799?s=200&v=4',
          'name': 'Oddbit',
          'url': 'https://oddbit.com',
        });
      });

      test('drops a nested object that only carries @context and @type', () {
        final input = <String, dynamic>{
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'name': 'Oddbit',
          'test': <String, dynamic>{
            '@context': 'https://schema.org',
            '@type': 'Thing',
            'name': null,
          },
        };

        expect(removeEmpty(input), {
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'name': 'Oddbit',
        });
      });

      test('drops a list once all its entries are null', () {
        final input = <String, dynamic>{
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'name': 'Oddbit',
          'sameAs': [null, null],
        };

        expect(removeEmpty(input), {
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'name': 'Oddbit',
        });
      });

      test('keeps a list that still has non-null entries', () {
        final input = <String, dynamic>{
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'sameAs': ['https://oddbit.id', null, 'https://github.com/oddbit'],
        };

        expect(removeEmpty(input)['sameAs'],
            ['https://oddbit.id', 'https://github.com/oddbit']);
      });
    });

    group('SchemaOrg.toJsonLdString', () {
      test('pretty-prints to a two-space-indented JSON-LD string', () {
        final json = SchemaOrg.toJsonLdString(
          SchemaOrganization(name: 'Oddbit', url: 'https://oddbit.id'),
        );

        // Spot-check the envelope and ensure pretty-printing is on so the
        // output remains readable in page source for SEO debugging tools.
        expect(json, contains('"@context": "https://schema.org"'));
        expect(json, contains('"@type": "Organization"'));
        expect(json, contains('"name": "Oddbit"'));
        expect(json.contains('\n  '), isTrue,
            reason: 'Expected two-space indent');
      });
    });

    group('SchemaOrganization.toJsonLd', () {
      test('emits the minimal JSON-LD envelope for a simple organization', () {
        final json = SchemaOrganization(
          name: 'Oddbit',
          url: 'https://oddbit.id',
          logo: 'https://avatars.githubusercontent.com/u/1946799?s=200&v=4',
        ).toJsonLd();

        expect(json['@context'], 'https://schema.org');
        expect(json['@type'], 'Organization');
        expect(json['name'], 'Oddbit');
        expect(json['url'], 'https://oddbit.id');
        expect(json['logo'],
            'https://avatars.githubusercontent.com/u/1946799?s=200&v=4');
        // Unset fields must not leak into the output so rich-result tools
        // don't see a wall of empty properties.
        expect(json.containsKey('founder'), isFalse);
        expect(json.containsKey('address'), isFalse);
      });
    });
  });
}
