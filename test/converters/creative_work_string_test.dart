import 'package:flutter_test/flutter_test.dart';
import 'package:schema_org/converters/creative_work_string.dart';
import 'package:schema_org/exceptions/unsupported_type.dart';
import 'package:schema_org/schemas/creative_work.dart';

void main() {
  group('CreativeWorkStringConverter', () {
    test('toJson() should return the input string as is', () {
      const input = 'Hello, World!';
      final result = CreativeWorkStringConverter.toJson(input);
      expect(result, input);
    });

    test('toJson() should call toJson() method of CreativeWork object', () {
      final creativeWork = CreativeWork(name: 'foo');
      final result = CreativeWorkStringConverter.toJson(creativeWork);
      expect(result, creativeWork.toJson());
    });

    test('toJson() should throw UnsupportedTypeException for unsupported type',
        () {
      const input = 42;
      expect(() => CreativeWorkStringConverter.toJson(input),
          throwsA(isA<UnsupportedTypeException>()));
    });

    test('fromJson() should return the input string as is', () {
      const input = 'Hello, World!';
      final result = CreativeWorkStringConverter.fromJson(input);
      expect(result, input);
    });

    test('fromJson() should convert JSON map to CreativeWork object', () {
      final json = {
        'name': 'My Creative Work',
        'description': 'This is a test creative work',
      };
      final expected = CreativeWork.fromJson(json);
      final actual = CreativeWorkStringConverter.fromJson(json) as CreativeWork;

      expect(actual.toJson(), expected.toJson());
    });

    test(
        'fromJson() should throw UnsupportedTypeException for unsupported type',
        () {
      const input = 42;
      expect(() => CreativeWorkStringConverter.fromJson(input),
          throwsA(isA<UnsupportedTypeException>()));
    });
  });
}
