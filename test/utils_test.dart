// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'package:flutter_test/flutter_test.dart';
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/corporation.dart';
import 'package:schema_org/schemas/item_availability.dart';
import 'package:schema_org/schemas/offer.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:schema_org/schemas/patient.dart';
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
        expect(json['founder'], {'@type': 'Person', 'name': 'Dennis'});
      });

      test('emits @context only on the root node', () {
        final json = SchemaOrganization(
          founder: SchemaPerson(name: 'Dennis'),
        ).toJsonLd();

        expect(json['@context'], 'https://schema.org');
        expect((json['founder'] as Map).containsKey('@context'), isFalse);
      });

      test('drops nested objects that carry nothing but @type', () {
        final json = SchemaOrganization(
          name: 'Oddbit',
          founder: SchemaPerson(),
          employee: SchemaPerson(),
        ).toJsonLd();

        expect(json.containsKey('founder'), isFalse);
        expect(json.containsKey('employee'), isFalse);
      });

      test('accepts subtypes wherever a Schema.org type is expected', () {
        // Schema.org ranges admit instances of subtypes: a Corporation is
        // an Organization and a Patient is a Person.
        final json = SchemaOrganization(
          founder: SchemaCorporation(name: 'Parent Co'),
          alumni: SchemaPatient(name: 'Jane'),
        ).toJsonLd();

        expect(json['founder'], {'@type': 'Corporation', 'name': 'Parent Co'});
        expect(json['alumni'], {'@type': 'Patient', 'name': 'Jane'});
      });

      test('serializes enum members to their own canonical URL', () {
        final json = SchemaOffer(
          availability: SchemaItemAvailability.inStock,
        ).toJsonLd();

        expect(json['availability'], 'https://schema.org/InStock');
      });

      test('falls back to toJson on non-schema objects', () {
        expect(
          convertToJsonLd(_LegacyJsonClass('Test')),
          {'name': 'Test'},
        );
      });

      test(
          'throws UnsupportedTypeException when a union-typed value is not '
          'accepted', () {
        expect(
          () => convertToJsonLd(_LegacyJsonClass('Test'), (v) => v is String),
          throwsA(isA<UnsupportedTypeException>()),
        );
        expect(
          () => SchemaOrganization(founder: 'Dennis').toJsonLd(),
          throwsA(isA<UnsupportedTypeException>()),
        );
      });

      test('serializes lists element-by-element', () {
        final result = convertToJsonLd(['a', 'b', 'c']);
        expect(result, ['a', 'b', 'c']);
      });

      test('returns null for an empty list so removeEmpty can drop it', () {
        expect(convertToJsonLd(<String>[]), isNull);
        expect(convertToJsonLd([null, null]), isNull);
      });

      test('drops null entries from lists', () {
        expect(
          convertToJsonLd(['https://oddbit.id', null, 'https://github.com']),
          ['https://oddbit.id', 'https://github.com'],
        );
      });
    });

    group('removeEmpty', () {
      test('strips null values from a JSON-LD object', () {
        final input = <String, dynamic>{
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'address': null,
          'name': 'Oddbit',
        };

        expect(removeEmpty(input), {
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'name': 'Oddbit',
        });
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
