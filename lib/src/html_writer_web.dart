// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'dart:convert';

import 'package:schema_org/src/schema_serializable.dart';
import 'package:web/web.dart' as web;

/// Web implementation of [SchemaOrg].
///
/// Uses `package:web` (the successor to the retired `dart:html`) and
/// `dart:js_interop` under the hood. Appends one
/// `<script type="application/ld+json">` element per call.
class SchemaOrg {
  SchemaOrg._();

  /// Serialize [schema] as a JSON-LD string with two-space pretty-printing.
  ///
  /// Platform-agnostic — this method is identical across web and non-web
  /// implementations so callers can rely on it on any target.
  static String toJsonLdString(SchemaSerializable schema) {
    return const JsonEncoder.withIndent('  ').convert(schema.toJsonLd());
  }

  /// Append [schema] to the host document as a
  /// `<script type="application/ld+json">` element.
  ///
  /// The script's content is set via the element's `text` property so the
  /// JSON is never interpreted as HTML — in particular, a property value
  /// that happens to contain `<` or `&` no longer has to be entity-encoded
  /// before serialization. Each call appends a new element; the caller is
  /// responsible for deduplicating when a widget tree rebuilds.
  static void writeJsonLd(SchemaSerializable schema) {
    final script = web.HTMLScriptElement()
      ..type = 'application/ld+json'
      ..text = toJsonLdString(schema);
    web.document.body?.appendChild(script);
  }
}
