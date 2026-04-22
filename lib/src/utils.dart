// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'package:schema_org/src/exceptions.dart';
import 'package:schema_org/src/schema_serializable.dart';

/// Convert a Schema.org property value into a JSON-LD-ready representation.
///
/// This is the single serialization entry point used by every generated
/// class in `package:schema_org/schemas/*`. The contract:
///
/// - `null` passes through as `null` (the caller strips nulls later via
///   [removeEmpty]).
/// - Scalars (`String`, `num`, `bool`) are returned as-is.
/// - [SchemaSerializable] values recurse through `toJsonLd()`.
/// - Objects that only expose `toJson()` are accepted for interop with
///   hand-written types.
/// - Lists recurse element-by-element and collapse to `null` when empty
///   so [removeEmpty] can drop the key entirely.
///
/// When a property's Schema.org range allows more than one Dart type the
/// generated class declares the field as `dynamic` and passes the set of
/// permitted types via [types]. This function enforces that contract at
/// runtime and throws [UnsupportedTypeException] for anything outside
/// the set.
Object? convertToJsonLd(Object? val, [List<Type> types = const []]) {
  return switch (val) {
    null => null,
    String() || num() || bool() => val,
    final List<Object?> list => _serializeList(list, types),
    final Object obj => _serializeObject(obj, types),
  };
}

Object? _serializeList(List<Object?> list, List<Type> types) {
  if (list.isEmpty) return null;
  return list.map((e) => convertToJsonLd(e, types)).toList();
}

Object _serializeObject(Object val, List<Type> types) {
  // Without a pinned type set we trust the value and delegate to its
  // own serializer.
  if (types.isEmpty) return _serializeOne(val);

  // Enforce the declared type union. `runtimeType` is used because
  // generated union-typed fields are declared `dynamic`, so `is T`
  // checks against a stored `Type` value cannot be expressed here.
  for (final type in types) {
    if (val.runtimeType == type) return _serializeOne(val);
  }

  throw UnsupportedTypeException(val.runtimeType);
}

Object _serializeOne(Object val) {
  if (val is SchemaSerializable) return val.toJsonLd() as Object;
  // Fallback for legacy hand-written classes that only expose `toJson`.
  return (val as dynamic).toJson() as Object;
}

/// Prune a JSON-LD map so empty values do not leak into the output.
///
/// A value is considered empty when it is `null`, an empty/all-null
/// list, or a nested object that only carries `@context` and `@type`
/// (meaning its owner never set any real data). Nested maps are
/// cleaned recursively.
Map<String, dynamic> removeEmpty(Map<String, dynamic> json) {
  final output = <String, dynamic>{};
  json.forEach((key, value) {
    switch (value) {
      case null:
        return;
      case Map<String, dynamic> m:
        final cleaned = removeEmpty(m);
        final hasRealData = cleaned.keys
            .toSet()
            .difference({'@context', '@type'}).isNotEmpty;
        if (hasRealData) output[key] = cleaned;
      case List l:
        final cleanedList = l.where((e) => e != null).toList();
        if (cleanedList.isNotEmpty) output[key] = cleanedList;
      default:
        output[key] = value;
    }
  });
  return output;
}
