# schema_org

JSON-LD Dart classes for the full [Schema.org](https://schema.org) vocabulary,
generated from the official distribution. Drop type-safe structured data into
a Flutter web app, or serialize to JSON-LD on any Flutter target.

Developed and maintained by [Oddbit](https://oddbit.id).

[![pub.dev](https://img.shields.io/pub/v/schema_org.svg)](https://pub.dev/packages/schema_org)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)

## Why

Structured data powers rich results in search, social previews, and LLM
grounding. Hand-writing JSON-LD is tedious and easy to typo; this package
exposes every Schema.org type as a strongly-typed Dart class so a missing or
misspelled property fails at compile time instead of silently breaking
validators later.

## Requirements

- Flutter `>=3.27.0`
- Dart `^3.6.0`

## Installation

```yaml
dependencies:
  schema_org: ^2.1.1
```

```bash
flutter pub add schema_org
```

## Usage

### Write to the host document (web)

On Flutter web (compiled to JavaScript or WebAssembly),
`SchemaOrg.writeJsonLd` appends a `<script type="application/ld+json">`
element to `document.body`:

```dart
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/organization.dart';

SchemaOrg.writeJsonLd(
  SchemaOrganization(
    name: 'Oddbit',
    url: 'https://oddbit.id',
    logo: 'https://avatars.githubusercontent.com/u/1946799?s=200&v=4',
  ),
);
```

![Oddbit Organization Screenshot](https://raw.githubusercontent.com/oddbit/flutter-schema-org/main/images/oddbit_organization_html.png)

On mobile and desktop targets `writeJsonLd` is a safe no-op — there is no
host document to append to.

### Serialize anywhere (web, mobile, desktop, tests)

Use `SchemaOrg.toJsonLdString` when you need the payload itself — for
server-side rendering, snapshot tests, logging, or any non-web target:

```dart
import 'package:schema_org/schema_org.dart';
import 'package:schema_org/schemas/organization.dart';

final ldJson = SchemaOrg.toJsonLdString(
  SchemaOrganization(name: 'Oddbit', url: 'https://oddbit.id'),
);
// {
//   "@context": "https://schema.org",
//   "@type": "Organization",
//   "name": "Oddbit",
//   "url": "https://oddbit.id"
// }
```

### Nesting schema objects

Every Schema.org type is a class named with the `Schema` prefix (so
[`Organization`](https://schema.org/Organization) is `SchemaOrganization`,
[`Person`](https://schema.org/Person) is `SchemaPerson`, and so on). Nested
objects work the way you'd expect, and any subtype is accepted where its
parent type is expected (a `SchemaCorporation` can be a `founder`). Only
the root node carries `@context`:

```dart
SchemaOrg.writeJsonLd(
  SchemaOrganization(
    name: 'Oddbit',
    founder: SchemaPerson(name: 'Dennis Alund'),
    address: SchemaPostalAddress(
      streetAddress: 'Jl. Example 1',
      addressLocality: 'Canggu',
      addressCountry: 'ID',
    ),
  ),
);
```

## Architecture

```
┌───────────────────────────┐
│ Schema.org JSON-LD dump   │  (downloaded from schema.org/docs/developers.html)
└──────────────┬────────────┘
               │
               ▼
┌───────────────────────────┐
│ parser/                   │  Dart CLI, `dart run schema_parser <input>`
│  - schema_class.dart      │  - Parses rdf:Class, rdf:Property, enumerations
│  - schema_property.dart   │  - Walks the inheritance graph
│  - code_generator.dart    │  - Emits one Dart file per class / enum
└──────────────┬────────────┘
               │
               ▼
┌───────────────────────────┐
│ lib/schemas/*.dart        │  ~920 generated classes & enums
│ lib/src/*.dart            │  Hand-written runtime helpers:
│                           │   • html_writer.dart (SchemaOrg)
│                           │   • html_writer_web.dart (package:web)
│                           │   • html_writer_stub.dart (non-web)
│                           │   • utils.dart (convertToJsonLd, removeEmpty)
│                           │   • schema_serializable.dart
└───────────────────────────┘
```

### Type mapping

Schema.org defines a small set of primitive data types that are mapped to
Dart scalars by the parser:

| Schema.org       | Dart     | Notes                                          |
|------------------|----------|------------------------------------------------|
| `Text`, `URL`    | `String` | URLs are strings, not `Uri`.                   |
| `Date`, `Time`, `DateTime` | `String` | ISO 8601 — no native `DateTime`.     |
| `Integer`        | `int`    |                                                |
| `Number`         | `num`    | Covers `Integer` and `Float` per Schema.org.   |
| `Float`          | `double` |                                                |
| `Boolean`        | `bool`   |                                                |

### Known compromises

- **Union types become `dynamic`.** Dart has no union types, so properties
  whose Schema.org range spans more than one Dart type (e.g.
  `Person.address` is `PostalAddress` *or* `String`) are declared as
  `dynamic`. The allowed set is documented on the field, and values are
  validated at serialization time with `is` checks (so subtypes pass) —
  anything else throws `UnsupportedTypeException`.
- **Inheritance uses real `extends` where possible.** Most classes now
  `extend` their primary Schema.org parent (`SchemaPerson extends
  SchemaThing`), so `is SchemaThing` and shared helpers work at compile
  time. Classes with multiple Schema.org parents extend the first
  concrete parent and `implements` the rest — the other parents still
  satisfy `is` checks but don't provide inherited behaviour beyond the
  interface.
- **Deprecated fields are flagged.** Properties, classes, and enum
  values that Schema.org has superseded carry a `@Deprecated('Use
  [SchemaX]. See https://schema.org/...')` annotation so the analyzer
  warns callers and editors offer the replacement in hover help.
- **`writeJsonLd` is web-only.** On non-web targets it is a no-op. Use
  `toJsonLdString` on mobile and desktop (or in unit tests) to obtain
  the payload without DOM side-effects.
- **Enumerations are Dart `enum`s.** Each member serializes to its own
  canonical URL (e.g. `SchemaItemAvailability.inStock` →
  `https://schema.org/InStock`), as Schema.org and Google's structured
  data guidelines expect. Dart enums cannot implement other enums, so a
  concrete enum whose Schema.org parent is itself an enum falls back to
  `implements SchemaSerializable`.

## Regenerating the schemas

The contents of `lib/schemas/` are fully generated. To update them against a
new Schema.org release, download the current JSON-LD dump from
[Schema.org for Developers](https://schema.org/docs/developers.html) and run:

```bash
cd parser
dart run schema_parser ~/Downloads/schemaorg-current-https.jsonld
# Optional: write into a scratch directory for review
# dart run schema_parser ~/Downloads/schemaorg-current-https.jsonld --out /tmp/schemas
cd ../lib/schemas
dart format .
dart fix --apply
```

Each regenerated file includes the same copyright header so attribution is
preserved. See [`parser/README.md`](parser/README.md) for parser internals.

## Contributing

Bug reports and pull requests are welcome at
<https://github.com/oddbit/flutter-schema-org/issues>. The most impactful
contributions are:

- Fixes to `parser/` — one improvement regenerates every class.
- New tests that pin down edge cases in Schema.org's vocabulary (circular
  ranges, abstract enumerations, mixed inheritance).
- Links to validator output or Schema.org discussions that clarify how a
  property should be interpreted.

## License and attribution

Copyright © [Oddbit](https://oddbit.id).

`schema_org` is licensed under the Apache License, Version 2.0 — see
[LICENSE](LICENSE).

The Dart class library in `lib/schemas/` is generated from the Schema.org
JSON-LD distribution published at <https://schema.org>. Schema.org
vocabulary terms, descriptions and structure are © Schema.org and used
under the terms posted at <https://schema.org/docs/terms.html>.

If you redistribute this package or derivative works, retain the
[NOTICE](NOTICE) file and any applicable copyright, license, and
attribution notices.
