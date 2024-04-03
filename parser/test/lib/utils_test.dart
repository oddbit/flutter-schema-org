// ignore_for_file: avoid_relative_lib_imports

import 'package:test/test.dart';

import '../../lib/utils.dart';

void main() {
  group('Schema Parser CLI', () {
    group('Utils', () {
      test('should get text from an attribute that could be translated', () {
        expect(getPossiblyTranslatedText('schema:Text'), 'Text');
        expect(getPossiblyTranslatedText('rdfs:label'), 'label');
        expect(getPossiblyTranslatedText('Foobar'), 'Foobar');
        expect(
          getPossiblyTranslatedText({'@value': 'itemLocation'}),
          'itemLocation',
        );
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
        expect(toTypeName('Number'), 'int');
        expect(toTypeName('Boolean'), 'bool');
        expect(toTypeName('Float'), 'double');
        expect(toTypeName('URL'), 'String');
        expect(toTypeName('Date'), 'String');
        expect(toTypeName('DateTime'), 'String');
        expect(toTypeName('Time'), 'String');
        expect(toTypeName('SomeOtherType'), 'SomeOtherType');
        expect(toTypeName('schema:SomeOtherType'), 'SomeOtherType');
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
