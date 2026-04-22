// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

/// Contract implemented by every generated Schema.org class and enum.
///
/// `toJsonLd()` returns a JSON-LD-ready representation of the instance.
/// Generated classes return a `Map<String, dynamic>` with `@context` and
/// `@type` populated. Generated enums return the enum's URL as a [String].
/// The return type is declared as `dynamic` so both shapes are valid, which
/// lets the helpers in `src/utils.dart` serialize any schema value
/// uniformly.
abstract class SchemaSerializable {
  /// Serialize this value to a JSON-LD-compatible structure.
  dynamic toJsonLd();
}
