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
/// - `null` passes through as `null` (the caller strips nulls via
///   [removeEmpty]).
/// - Scalars (`String`, `num`, `bool`) are returned as-is.
/// - [SchemaSerializable] values recurse through `toJsonLd()`. Nested
///   objects drop their `@context` (it is inherited from the root node)
///   and collapse to `null` when they carry nothing but `@type`.
/// - Objects that only expose `toJson()` are accepted for interop with
///   hand-written types.
/// - Lists recurse element-by-element, drop `null` entries and collapse
///   to `null` when nothing is left.
///
/// When a property's Schema.org range allows more than one Dart type the
/// generated class declares the field as `dynamic` and passes an
/// [accepts] predicate (e.g. `(v) => v is SchemaPostalAddress || v is
/// String`). Values it rejects throw [UnsupportedTypeException]. The check
/// uses `is`, so subtypes are accepted just like Schema.org intends.
Object? convertToJsonLd(Object? val, [bool Function(Object)? accepts]) {
  return switch (val) {
    null => null,
    final List<Object?> list => _serializeList(list, accepts),
    final Object obj when accepts != null && !accepts(obj) =>
      throw UnsupportedTypeException(obj.runtimeType),
    String() || num() || bool() => val,
    final SchemaSerializable schema => _serializeNested(schema.toJsonLd()),
    // Fallback for hand-written classes that only expose `toJson`.
    final Object obj => (obj as dynamic).toJson(),
  };
}

Object? _serializeList(List<Object?> list, bool Function(Object)? accepts) {
  final out = list.map((e) => convertToJsonLd(e, accepts)).nonNulls.toList();
  return out.isEmpty ? null : out;
}

Object? _serializeNested(Object? json) {
  if (json is! Map<String, dynamic>) return json;
  final nested = {...json}..remove('@context');
  return nested.keys.any((k) => k != '@type') ? nested : null;
}

/// Drop `null` entries from a JSON-LD object so unset properties do not
/// leak into the output. Values have already been normalized by
/// [convertToJsonLd], which maps empty lists and empty nested objects to
/// `null`.
Map<String, dynamic> removeEmpty(Map<String, dynamic> json) =>
    json..removeWhere((_, value) => value == null);
