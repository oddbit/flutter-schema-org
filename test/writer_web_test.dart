// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

// DOM-backed tests for the web writer. These only run under
// `flutter test --platform chrome` — the `@TestOn` annotation excludes
// them from the default VM run so a plain `flutter test` on a
// non-browser platform does not try to import `package:web`.
@TestOn('browser')
library;

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/organization.dart';
import 'package:web/web.dart' as web;

void main() {
  group('SchemaOrg.writeJsonLd (web)', () {
    setUp(() {
      // Chrome keeps the same document across tests, so wipe any script
      // elements left by previous cases. Each test owns its own slice of
      // `document.body`. `querySelectorAll` returns a `NodeList`; only
      // `Element` carries `remove()`, so go through the parent node to
      // stay type-correct.
      final scripts = web.document
          .querySelectorAll('script[type="application/ld+json"]');
      for (var i = 0; i < scripts.length; i++) {
        final node = scripts.item(i);
        node?.parentNode?.removeChild(node);
      }
    });

    test('appends a <script type="application/ld+json"> to document.body',
        () {
      SchemaOrg.writeJsonLd(SchemaOrganization(
        name: 'Oddbit',
        url: 'https://oddbit.id',
      ));

      final script =
          web.document.querySelector('script[type="application/ld+json"]');
      expect(script, isNotNull);
      expect(script!.parentNode, same(web.document.body));

      final payload = jsonDecode(script.textContent!) as Map<String, dynamic>;
      expect(payload['@context'], 'https://schema.org');
      expect(payload['@type'], 'Organization');
      expect(payload['name'], 'Oddbit');
      expect(payload['url'], 'https://oddbit.id');
    });

    test('writes JSON as text so ampersands are not HTML-encoded', () {
      // Using the element's `.text` property instead of `.innerHtml`
      // means values containing `&` or `<` survive the trip through
      // the DOM unchanged — important for URLs with query strings and
      // for strings Schema.org validators round-trip.
      SchemaOrg.writeJsonLd(SchemaOrganization(
        name: 'Oddbit & Co',
        url: 'https://example.com?a=1&b=2',
      ));

      final script =
          web.document.querySelector('script[type="application/ld+json"]');
      expect(script, isNotNull);

      final raw = script!.textContent!;
      expect(raw, contains('& Co'));
      expect(raw, contains('&b=2'));
      // Round-trip via JSON parse to confirm the payload is still valid.
      final payload = jsonDecode(raw) as Map<String, dynamic>;
      expect(payload['name'], 'Oddbit & Co');
      expect(payload['url'], 'https://example.com?a=1&b=2');
    });

    test('appends a new element each call so updates can be layered', () {
      SchemaOrg.writeJsonLd(SchemaOrganization(name: 'First'));
      SchemaOrg.writeJsonLd(SchemaOrganization(name: 'Second'));

      final scripts = web.document
          .querySelectorAll('script[type="application/ld+json"]');
      expect(scripts.length, 2);
    });
  });
}
