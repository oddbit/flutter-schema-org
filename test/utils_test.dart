import 'package:flutter_test/flutter_test.dart';
import 'package:schema_org/exceptions.dart';
import 'package:schema_org/utils.dart';

class _TestClass {
  String name;

  _TestClass(this.name);

  Map<String, dynamic> toJson() => {'name': name};
}

void main() {
  group('Schema.org', () {
    group('Utils', () {
      test('should convert a dynamic value to JSON', () {
        expect(convertToJsonLd(null), null);
        expect(convertToJsonLd('Hello'), 'Hello');
        expect(convertToJsonLd(123), 123);
        expect(convertToJsonLd(true), true);
        expect(convertToJsonLd(_TestClass('Test')), {'name': 'Test'});
        expect(() => convertToJsonLd(_TestClass('Test'), [String]),
            throwsA(isA<UnsupportedTypeException>()));
      });

      test('removes null values from JSON-LD object', () {
        final Map<String, dynamic> input = {
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'actionableFeedbackPolicy': null,
          'address': null,
          'logo': 'https://avatars.githubusercontent.com/u/1946799?s=200&v=4',
          'name': 'Oddbit',
          'url': 'https://oddbit.com'
        };
        final Map<String, dynamic> expectedOutput = {
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'logo': 'https://avatars.githubusercontent.com/u/1946799?s=200&v=4',
          'name': 'Oddbit',
          'url': 'https://oddbit.com'
        };
        expect(removeEmpty(input), equals(expectedOutput));
      });

      test('should remove an empty JSON-LD object ', () {
        final Map<String, dynamic> input = {
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'logo': 'https://avatars.githubusercontent.com/u/1946799?s=200&v=4',
          'name': 'Oddbit',
          'url': 'https://oddbit.com',
          'test': {
            '@context': 'https://schema.org',
            '@type': 'Thing',
            'name': null,
          }
        };
        final Map<String, dynamic> expectedOutput = {
          '@context': 'https://schema.org',
          '@type': 'Organization',
          'logo': 'https://avatars.githubusercontent.com/u/1946799?s=200&v=4',
          'name': 'Oddbit',
          'url': 'https://oddbit.com'
        };
        expect(removeEmpty(input), equals(expectedOutput));
      });
    });
  });
}
