// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

// Platform switch for [SchemaOrg].
//
// On web targets the `dart.library.html` guard resolves to true, so the
// real implementation (backed by `package:web` + `dart:js_interop`) is
// loaded. Every other target gets the no-op stub, which still exposes
// `toJsonLdString` so callers can serialize JSON-LD on mobile/desktop
// without referencing any DOM type.
export 'html_writer_stub.dart'
    if (dart.library.html) 'html_writer_web.dart';
