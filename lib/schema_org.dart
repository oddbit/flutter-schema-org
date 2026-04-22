// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

/// JSON-LD Dart classes for the Schema.org vocabulary.
///
/// This library exposes [SchemaOrg] for emitting Schema.org data:
///
/// - [SchemaOrg.toJsonLdString] — serialize any schema value to a
///   pretty-printed JSON-LD string on any Flutter target.
/// - [SchemaOrg.writeJsonLd] — on Flutter web, append a
///   `<script type="application/ld+json">` element to the host
///   document; a no-op on mobile and desktop.
///
/// The vocabulary itself lives in `package:schema_org/schemas/*` and is
/// regenerated from the official Schema.org distribution by the
/// `schema_parser` tool in this repository.
library;

export 'src/exceptions.dart' show UnsupportedTypeException;
export 'src/html_writer.dart' show SchemaOrg;
export 'src/schema_serializable.dart' show SchemaSerializable;
