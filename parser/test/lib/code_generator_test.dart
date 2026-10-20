// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.

import 'package:schema_parser/code_generator.dart';
import 'package:schema_parser/schema_enum.dart';
import 'package:schema_parser/schema_property.dart';
import 'package:schema_parser/schema_type.dart';
import 'package:test/test.dart';

SchemaType _type(
  String name, {
  List<String> parents = const [],
  List<SchemaProperty> properties = const [],
  List<String> supersededBy = const [],
}) {
  final t = SchemaType(
    name: name,
    description: '$name description',
    parents: parents,
    supersededBy: supersededBy,
  );
  t.properties.addAll(properties);
  return t;
}

SchemaProperty _property(
  String name, {
  List<String> schemaTypes = const ['String'],
  List<String> supersededBy = const [],
}) =>
    SchemaProperty(
      name: name,
      description: '$name description',
      schemaTypes: schemaTypes,
      inClasses: const [],
      supersededBy: supersededBy,
    );

void main() {
  group('generateClassCode', () {
    test('root classes implement SchemaSerializable and declare all fields',
        () {
      final thing = _type('Thing', properties: [_property('name')]);
      final sb = StringBuffer();
      generateClassCode(sb, thing, [thing]);

      final code = sb.toString();
      expect(code, contains('class SchemaThing implements SchemaSerializable'));
      expect(code, contains('String? name;'));
      // Root writes `@context` explicitly because there is no parent to
      // spread from.
      expect(code, contains("'@context': 'https://schema.org',"));
      expect(code, contains("'@type': 'Thing',"));
    });

    test('guards only union fields, with subtype-friendly `is` checks', () {
      final thing = _type('Thing', properties: [
        _property('name'),
        _property('subjectOf', schemaTypes: ['Event', 'Thing']),
      ]);
      final sb = StringBuffer();
      generateClassCode(sb, thing, [thing]);

      final code = sb.toString();
      expect(code, contains("'name': convertToJsonLd(name),"));
      expect(
        code,
        contains("convertToJsonLd(subjectOf, (v) => v is SchemaEvent || "
            'v is SchemaThing)'),
      );
      // A recursive range must not make the file import itself.
      expect(code, contains("import 'package:schema_org/schemas/event.dart';"));
      expect(code.contains('schemas/thing.dart'), isFalse);
    });

    test('single-parent classes extend the parent and use super params', () {
      final thing = _type('Thing', properties: [_property('name')]);
      // `familyTree` is normally populated by the parser's graph walk;
      // set it by hand here so the code generator can resolve ancestry.
      final person = _type('Person', parents: [
        'Thing'
      ], properties: [
        _property('givenName'),
      ]);
      person.grandParents.addAll([]);

      final sb = StringBuffer();
      generateClassCode(sb, person, [thing, person]);

      final code = sb.toString();
      expect(code, contains('class SchemaPerson extends SchemaThing {'));
      // `name` is inherited via extends and should be forwarded, not
      // redeclared.
      expect(code, contains('super.name'));
      expect(code.contains('String? name;'), isFalse);
      expect(code, contains('this.givenName'));
      // toJsonLd merges super output with own fields and overrides @type.
      expect(code, contains('...super.toJsonLd()'));
      expect(code, contains("'@type': 'Person',"));
      expect(code.contains("'@context': 'https://schema.org',"), isFalse);
    });

    test(
        'multi-parent classes extend the first parent and implement the '
        'rest, pulling in fields the extends chain does not cover', () {
      final thing = _type('Thing', properties: [_property('name')]);
      final place = _type('Place', parents: [
        'Thing'
      ], properties: [
        _property('address'),
      ]);
      place.grandParents.addAll(['Thing']);
      final organization = _type('Organization', parents: [
        'Thing'
      ], properties: [
        _property('legalName'),
      ]);
      organization.grandParents.addAll(['Thing']);
      final localBusiness = _type(
        'LocalBusiness',
        parents: ['Place', 'Organization'],
        properties: [_property('priceRange')],
      );
      localBusiness.grandParents.addAll(['Thing']);

      final sb = StringBuffer();
      generateClassCode(
          sb, localBusiness, [thing, place, organization, localBusiness]);

      final code = sb.toString();
      expect(
        code,
        contains(
            'class SchemaLocalBusiness extends SchemaPlace implements SchemaOrganization'),
      );
      // `name` and `address` are inherited via extends (Place → Thing) so
      // they must be forwarded as super params, not redeclared.
      expect(code, contains('super.name'));
      expect(code, contains('super.address'));
      expect(code.contains('String? name;'), isFalse);
      expect(code.contains('String? address;'), isFalse);
      // `legalName` comes from the implements side — it must be declared
      // on this class so the `implements SchemaOrganization` contract is
      // actually satisfied.
      expect(code, contains('String? legalName;'));
      expect(code, contains('this.legalName'));
      // And the class's own declared property must be on it too.
      expect(code, contains('String? priceRange;'));
    });

    test(
        'emits @Deprecated on classes, properties and uses Schema-prefixed '
        'replacements', () {
      final thing = _type('Thing', properties: [_property('name')]);
      final legacy = _type(
        'LegacyType',
        parents: ['Thing'],
        supersededBy: ['Thing'],
        properties: [
          _property('oldField', supersededBy: ['name']),
        ],
      );
      legacy.grandParents.addAll(['Thing']);

      final sb = StringBuffer();
      generateClassCode(sb, legacy, [thing, legacy]);

      final code = sb.toString();
      // Class-level deprecation points at the replacement with a
      // `Schema`-prefixed reference so IDE navigation works.
      expect(
        code,
        contains(
            "@Deprecated('Use [SchemaThing]. See https://schema.org/LegacyType')"),
      );
      // Property-level deprecation references the replacement property by
      // its original (unprefixed) identifier since Schema.org property
      // names aren't Dart classes.
      expect(
        code,
        contains("@Deprecated('Use [name]. See https://schema.org/oldField')"),
      );
    });
  });

  group('generateEnumCode', () {
    test('emits @Deprecated on superseded enum values', () {
      final e = SchemaEnum(
        name: 'SampleEnum',
        description: 'sample enum',
        parents: ['Enumeration'],
      );
      e.values.addAll([
        SchemaEnumValue(
          id: 'ActiveValue',
          name: 'ActiveValue',
          description: 'active',
        ),
        SchemaEnumValue(
          id: 'LegacyValue',
          name: 'LegacyValue',
          description: 'legacy',
          supersededBy: ['ActiveValue'],
        ),
      ]);

      final sb = StringBuffer();
      generateEnumCode(sb, e);
      final code = sb.toString();

      // The deprecated value carries the annotation; the live one does
      // not.
      final legacyIdx = code.indexOf('legacyValue(');
      final activeIdx = code.indexOf('activeValue(');
      expect(legacyIdx, isPositive);
      expect(activeIdx, isPositive);
      expect(
        code,
        contains(
            "@Deprecated('Use [ActiveValue]. See https://schema.org/LegacyValue')"),
      );
      // Each member serializes to its own canonical URL, not the enum's.
      expect(code, contains("activeValue('https://schema.org/ActiveValue')"));
      // Ensure the annotation sits above the legacy value specifically.
      expect(
        code.substring(0, legacyIdx),
        contains('@Deprecated('),
      );
    });
  });
}
