// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'dart:convert';

import 'package:schema_org/src/schema_serializable.dart';

/// Non-web implementation of [SchemaOrg].
///
/// Mobile and desktop Flutter targets have no host document to append a
/// `<script>` element to, so [writeJsonLd] is a safe no-op. Callers that
/// need the payload on those targets (for logging, tests, server-side
/// rendering) should use [toJsonLdString] directly — it has no platform
/// dependencies.
class SchemaOrg {
  SchemaOrg._();

  /// Serialize [schema] as a JSON-LD string with two-space pretty-printing.
  ///
  /// Platform-agnostic. Use this when you need the payload itself, for
  /// example to embed into a server response, log it during a test, or
  /// feed it to a validator.
  static String toJsonLdString(SchemaSerializable schema) {
    return const JsonEncoder.withIndent('  ').convert(schema.toJsonLd());
  }

  /// No-op on non-web targets.
  ///
  /// Kept so cross-platform call-sites compile unchanged; the web
  /// implementation does the real work.
  static void writeJsonLd(SchemaSerializable schema) {
    // Intentionally empty — see [toJsonLdString] for the payload.
  }
}
