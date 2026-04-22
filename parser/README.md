# Schema Parser CLI

Code generator that turns the Schema.org JSON-LD distribution into the Dart
class library published as `package:schema_org`.

Developed and maintained by [Oddbit](https://oddbit.id).

The generator is a plain Dart CLI — it reads the upstream JSON-LD dump,
walks the class / property / enumeration graph, and writes one Dart source
file per concrete type into `../lib/schemas/`. Each emitted file carries
the Oddbit copyright header and a "generated code" banner so downstream
users know not to hand-edit them.

## Running

Download the current distribution from
[Schema.org for Developers](https://schema.org/docs/developers.html), then:

```bash
dart run schema_parser <input.jsonld> [--out <dir>]
```

- `--out` / `-o` (optional): output directory for generated files. Defaults
  to `../lib/schemas` so running the tool from this directory refreshes the
  package in place.
- `--help` / `-h`: show usage.

The generated code benefits from a post-processing pass because Schema.org
descriptions contain long, irregularly-wrapped prose:

```bash
cd ../lib/schemas
dart format .
dart fix --apply
```

## Compromises

Schema.org's vocabulary expresses shapes Dart cannot represent directly.
The parser makes the following trade-offs:

- **Union types → `dynamic`.** Properties with multiple Dart-compatible
  ranges (e.g. `PostalAddress | String`) are declared as `dynamic`. The
  full set of accepted types is preserved in the property doc comment and
  passed to `convertToJsonLd` so values are validated at runtime.
- **Single-parent `extends`, multi-parent `implements`.** Classes with one
  Schema.org parent use real Dart inheritance (`SchemaPerson extends
  SchemaThing`). Classes with multiple parents extend the first concrete
  parent and `implements` the rest — the other parents satisfy `is`
  checks but don't contribute inherited behaviour beyond the interface
  contract.
- **Concrete enum → concrete enum is not extendable.** Dart enums cannot
  implement other enums. When a Schema.org enum's parent is itself a
  concrete enum (e.g. `WearableSizeSystemEnumeration` vs.
  `SizeSystemEnumeration`), the child falls back to `implements
  SchemaSerializable` so the parent relationship is semantic only.
- **Mixed `Enumeration` inheritance.** A node whose parents all descend
  from `Enumeration` is emitted as an enum even when the graph has
  multiple paths to `Thing`. Nodes with any non-enum ancestor stay
  classes. See
  [issue #1](https://github.com/oddbit/flutter-schema-org/issues/1) for
  the original case that motivated the classifier.
- **`Number` → `num`.** Schema.org's `Number` is the supertype of
  `Integer` and `Float`, so it maps to Dart's `num`. Earlier versions
  mis-mapped this to `int` and truncated fractional values on
  serialization.
- **Foreign namespaces dropped.** `rdfs:subClassOf` targets in namespaces
  other than `schema:` (e.g. `fibo-fnd-agr-ctr:`, `cmns-dt:`) are filtered
  out so generated classes never reference a type we didn't generate.
- **Deprecation via `@Deprecated`.** Classes, properties and enum values
  annotated with `schema:supersededBy` become Dart `@Deprecated('Use [X].
  See https://schema.org/Y')` so the analyzer warns callers and editors
  surface the replacement in hover help.
- **File names starting with a digit.** Dart library files cannot begin
  with a digit, so `3DModel` becomes `schema_3d_model.dart` (see
  [linter issue 3009](https://github.com/dart-lang/linter/issues/3009)).

## Testing

```bash
dart test
```

The suite exercises the graph walker, property type mapping, enum
inheritance classification, and code-generator shape (extends, multi-
parent, `@Deprecated`) with small synthetic fixtures so regressions
surface without depending on the full Schema.org dump.

## License and attribution

Copyright © [Oddbit](https://oddbit.id).

Apache License 2.0 — see the repository root [LICENSE](../LICENSE) and
[NOTICE](../NOTICE). If you redistribute this tool or derivative works,
retain the NOTICE file.
