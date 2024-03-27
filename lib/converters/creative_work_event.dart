import 'package:schema_org/exceptions/unsupported_type.dart';
import 'package:schema_org/schemas/creative_work.dart';

/// A converter class for serializing and deserializing [CreativeWork] objects
/// to and from Event or JSON.
class CreativeWorkEventConverter {
  /// Serialize the value to Event or a JSON Map<String, dynamic>.
  ///
  /// If the value is already a Event, it is returned as is.
  /// If the value is a [CreativeWork] object, its [toJson] method is called
  /// If the value is of any other type, an [UnsupportedTypeException] is thrown.
  static dynamic toJson(dynamic value) {
    switch (value) {
      case Null():
        return null;
      case CreativeWork():
        return value.toJson();
      default:
        throw UnsupportedTypeException(value.runtimeType);
    }
  }

  /// Deserialize from input Event or [json] map.
  ///
  /// If the input is already a Event, it is returned as is.
  /// If the input is a JSON map, it is converted to a [CreativeWork] object
  /// If the input is of any other type, an [UnsupportedTypeException] is thrown.
  static dynamic fromJson(dynamic json) {
    switch (json) {
      case Null():
        return null;
      case Map<String, dynamic>():
        return CreativeWork.fromJson(json);
      default:
        throw UnsupportedTypeException(json.runtimeType);
    }
  }
}
