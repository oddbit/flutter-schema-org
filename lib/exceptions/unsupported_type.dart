// Custom exception for unsupported types
class UnsupportedTypeException implements Exception {
  final Type type;
  UnsupportedTypeException(this.type);

  @override
  String toString() => 'UnsupportedTypeException: $type';
}
