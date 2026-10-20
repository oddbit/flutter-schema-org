// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'dart:convert';

import 'package:schema_org/src/schema_serializable.dart';

// `dart.library.js_interop` is the condition recommended by the Dart team
// for `package:web` code: unlike `dart.library.html` it also holds when the
// app is compiled to WebAssembly, where `dart:html` does not exist.
import 'html_writer_stub.dart'
    if (dart.library.js_interop) 'html_writer_web.dart';

/// Entry point for emitting Schema.org data.
abstract final class SchemaOrg {
  /// Serialize [schema] as a JSON-LD string with two-space pretty-printing.
  ///
  /// Platform-agnostic. Use this when you need the payload itself, for
  /// example to embed into a server response, log it during a test, or
  /// feed it to a validator.
  static String toJsonLdString(SchemaSerializable schema) =>
      const JsonEncoder.withIndent('  ').convert(schema.toJsonLd());

  /// On Flutter web, append [schema] to the host document as a
  /// `<script type="application/ld+json">` element. A no-op on every other
  /// target, so cross-platform call-sites compile unchanged.
  ///
  /// Each call appends a new element; the caller is responsible for
  /// deduplicating when a widget tree rebuilds.
  static void writeJsonLd(SchemaSerializable schema) =>
      appendJsonLdScript(toJsonLdString(schema));
}
