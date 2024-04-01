import 'package:flutter_test/flutter_test.dart';
import 'package:schema_org/utils.dart';

class _TestClass {
  String name;

  _TestClass(this.name);

  Map<String, dynamic> toJson() => {'name': name};
}

class UnsupportedTypeException implements Exception {
  final Type type;

  UnsupportedTypeException(this.type);

  @override
  String toString() => 'Unsupported type: $type';
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
    });
  });
}
