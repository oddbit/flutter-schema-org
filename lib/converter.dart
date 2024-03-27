import 'package:schema_org/unsupported_type.dart';

dynamic convertToJson(dynamic val, [List<Type> types = const []]) {
  // If the value is null, return null
  if (val == null) {
    return null;
  }

  // Scalars are already JSON-serializable
  if (val is String || val is num || val is bool) {
    return val;
  }

  // If not explicitly expecting specific types, simply convert to JSON
  if (types.isEmpty) {
    return val.toJson();
  }

  // Some Schema attributes can be one of many types. The class that implements
  // it has defined it as dynamic so we need to check the runtime type of the
  // object is one of the expected types.
  for (Type type in types) {
    if (val.runtimeType == type) {
      return val.toJson();
    }
  }

  throw UnsupportedTypeException(val.runtimeType);
}
