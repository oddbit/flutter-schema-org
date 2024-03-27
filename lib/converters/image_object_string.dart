import 'package:schema_org/exceptions/unsupported_type.dart';

/// A converter class for serializing and deserializing [ImageObject] objects
/// to and from String or JSON.
class ImageObjectStringConverter {
  /// Serialize the value to String or a JSON Map<String, dynamic>.
  ///
  /// If the value is already a String, it is returned as is.
  /// If the value is a [ImageObject] object, its [toJson] method is called
  /// If the value is of any other type, an [UnsupportedTypeException] is thrown.
  static dynamic toJson(dynamic value) {
    switch (value) {
      case Null():
        return null;
      case String():
        return value;
      // TODO: Implement this
      // case ImageObject():
      //   return value.toJson();
      default:
        throw UnsupportedTypeException(value.runtimeType);
    }
  }

  /// Deserialize from input String or [json] map.
  ///
  /// If the input is already a String, it is returned as is.
  /// If the input is a JSON map, it is converted to a [ImageObject] object
  /// If the input is of any other type, an [UnsupportedTypeException] is thrown.
  static dynamic fromJson(dynamic json) {
    switch (json) {
      case Null():
        return null;
      case String():
        return json;
      // TODO: Implement this
      // case Map<String, dynamic>():
      //   return ImageObject.fromJson(json);
      default:
        throw UnsupportedTypeException(json.runtimeType);
    }
  }
}
