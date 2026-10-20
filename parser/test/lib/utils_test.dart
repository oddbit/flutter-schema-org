// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

// ignore_for_file: avoid_relative_lib_imports

import 'package:test/test.dart';

import '../../lib/utils.dart';

void main() {
  group('Schema Parser CLI', () {
    group('Utils', () {
      test('should get text from an attribute that could be translated', () {
        expect(getPossiblyTranslatedText('Foobar'), 'Foobar');
        // Descriptions routinely contain colons and must not be truncated.
        expect(
          getPossiblyTranslatedText('For example: a store with a pharmacy.'),
          'For example: a store with a pharmacy.',
        );
        expect(
          getPossiblyTranslatedText({'@value': 'itemLocation'}),
          'itemLocation',
        );
        // Some upstream nodes ship without a description or label. A
        // missing value must not crash the whole generation.
        expect(getPossiblyTranslatedText(null), '');
        expect(getPossiblyTranslatedText(<String, dynamic>{}), '');
        expect(() => getPossiblyTranslatedText(123), throwsException);
      });

      test('should parse the relationship of a schema.org property', () {
        expect(parseRelationship(null), []);
        expect(parseRelationship({'@id': 'schema:MyClass'}), ['MyClass']);
        expect(
          parseRelationship([
            {'@id': 'schema:MyClass1'},
            {'@id': 'schema:MyClass2'},
            {'@id': 'schema:MyClass3'},
          ]),
          ['MyClass1', 'MyClass2', 'MyClass3'],
        );
      });

      test('should convert schema.org schema names to Dart type names', () {
        expect(toTypeName('Text'), 'String');
        expect(toTypeName('schema:Text'), 'String');
        expect(toTypeName('Integer'), 'int');
        // Schema.org `Number` is the union of Integer and Float, so it must
        // map to `num` (not `int`) to avoid truncating fractional values.
        expect(toTypeName('Number'), 'num');
        expect(toTypeName('Boolean'), 'bool');
        expect(toTypeName('Float'), 'double');
        expect(toTypeName('URL'), 'String');
        expect(toTypeName('Date'), 'String');
        expect(toTypeName('DateTime'), 'String');
        expect(toTypeName('Time'), 'String');
        expect(toTypeName('SomeOtherType'), 'SomeOtherType');
        expect(toTypeName('schema:SomeOtherType'), 'SomeOtherType');
      });

      test(
          'dedupes and sorts relationships that collapse to the same '
          'Dart type', () {
        // `Text` and `URL` both map to `String`; the parsed result must
        // dedupe them so generated doc comments don't read
        // "Supported types: [String], [String]".
        expect(
          parseRelationship([
            {'@id': 'schema:Text'},
            {'@id': 'schema:URL'},
          ]),
          ['String'],
        );

        expect(
          parseRelationship([
            {'@id': 'schema:Person'},
            {'@id': 'schema:Organization'},
            {'@id': 'schema:Person'},
          ]),
          ['Organization', 'Person'],
        );
      });

      test('should create proper file names from class name', () {
        expect(classToFileName('APICredentials'), 'api_credentials.dart');
        expect(classToFileName('FMRadioStation'), 'fm_radio_station.dart');
        expect(classToFileName('MyClass'), 'my_class.dart');
        expect(classToFileName('SomeOtherClass'), 'some_other_class.dart');
        expect(classToFileName('Foo'), 'foo.dart');
        expect(classToFileName('3DModel'), 'schema_3d_model.dart');
      });
    });
  });
}
