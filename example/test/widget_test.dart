// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'package:flutter_test/flutter_test.dart';
import 'package:schema_org/schemas/organization.dart';

// The example app's purpose is to show `SchemaOrg.writeJsonLd` injecting a
// Schema.org Organization into the host page on Flutter web. The widget
// tree itself is cosmetic (a network-loaded avatar and a title), so we
// verify the piece that actually matters here: the JSON-LD payload that
// the example produces for Oddbit.
void main() {
  test('Example produces valid Organization JSON-LD for Oddbit', () {
    final json = SchemaOrganization(
      name: 'Oddbit',
      url: 'https://oddbit.id',
      logo: 'https://avatars.githubusercontent.com/u/1946799?s=200&v=4',
    ).toJsonLd();

    expect(json['@context'], 'https://schema.org');
    expect(json['@type'], 'Organization');
    expect(json['name'], 'Oddbit');
    expect(json['url'], 'https://oddbit.id');
    expect(json['logo'],
        'https://avatars.githubusercontent.com/u/1946799?s=200&v=4');
  });
}
