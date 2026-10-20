// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'package:web/web.dart' as web;

/// Append [jsonLd] to `document.body` as a
/// `<script type="application/ld+json">` element.
///
/// The content is set via the element's `text` property so the JSON is
/// never interpreted as HTML and values containing `<` or `&` need no
/// escaping.
void appendJsonLdScript(String jsonLd) {
  final script = web.HTMLScriptElement()
    ..type = 'application/ld+json'
    ..text = jsonLd;
  web.document.body?.appendChild(script);
}
