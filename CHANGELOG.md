## 2.0.0

**Breaking release.** The web writer has been rebuilt on top of modern
Flutter web interop (`package:web` + `dart:js_interop`), the generated
class hierarchy now uses real Dart inheritance, and the Schema.org type
mapping has been corrected. Callers of the original 1.x API need to
adapt — see the "Migrating" notes below.

### New

- **`SchemaOrg.toJsonLdString(schema)`** — a platform-agnostic helper
  that returns the pretty-printed JSON-LD string for any schema value.
  Works on web, mobile, and desktop; use it when you need the payload
  rather than DOM side-effects (SSR, logging, snapshot tests).
- **`package:web`-backed writer.** `SchemaOrg.writeJsonLd` now uses
  `package:web` and writes via the script element's `.text` property so
  property values containing `<` or `&` no longer need to be HTML-escaped
  before serialization.
- **Real inheritance in generated classes.** `SchemaPerson extends
  SchemaThing`, `SchemaOrganization extends SchemaThing`, and 824 of 829
  generated classes gain a proper `extends` chain. `is SchemaThing`
  checks finally return `true` for subclasses. Multi-parent classes
  `extends` the first concrete parent and `implements` the rest.
- **`@Deprecated` annotations on superseded fields, classes, and enum
  values.** 82 generated files now carry annotations sourced from
  Schema.org's `schema:supersededBy` metadata and the analyzer surfaces
  warnings when a deprecated member is used.
- **Public re-exports** from `package:schema_org/schema_org.dart`:
  `SchemaSerializable` and `UnsupportedTypeException` are now part of
  the top-level library surface.

### Breaking changes

- **Minimum Flutter/Dart.** Requires Flutter `>=3.27.0` and Dart
  `^3.6.0`. Older versions are no longer supported.
- **`dart:html` is gone.** If you depended on any `dart:html` types
  leaking through from this package's exports, switch to `package:web`.
- **Type mapping: `Number` → `num`** (was `int`). Fields whose
  Schema.org range is `Number` or `Float` are now `num?`, preserving
  fractional values. `int x = schema.someNumberField` needs to become
  `num x = schema.someNumberField` (or a cast).
- **Abstract enumeration classes now `implements SchemaSerializable`.**
  Third-party types implementing an abstract enumeration interface
  (e.g. `SchemaStatusEnumeration`) must provide a `toJsonLd()` method.
- **Generated classes use `extends`.** Generated fields on a subclass
  are now inherited from the extends chain rather than redeclared, so
  reflection over "own" fields returns fewer entries. Field access via
  the public API is unchanged.
- **Enum parents that are themselves concrete enums** fall back to
  `implements SchemaSerializable` rather than `implements
  SchemaParentEnum`. Dart enums cannot implement other enums, so the
  parent relationship is semantic only (e.g.
  `WearableSizeSystemEnumeration` vs. `SizeSystemEnumeration`).
- **Generated classes classified differently.** Nodes whose parents all
  descend from `Enumeration` (e.g. `MedicalSpecialty`) are now emitted
  as enums; previously a handful leaked through as classes. If you
  were constructing one of these directly, switch to the enum value.

### Fixes

- **Nested schema serialization no longer throws.** `convertToJsonLd`
  now calls `toJsonLd()` on `SchemaSerializable` values, fixing a
  runtime crash when a schema object was passed as another schema's
  property (e.g. `SchemaOrganization(founder: SchemaPerson(...))`).
- **Duplicate supported-type hints removed.** Ranges that collapse to
  the same Dart type (`Text | URL` → `String`) no longer produce
  `Supported types: [String], [String]` comments or redundant runtime
  type checks.
- **Foreign-namespace parents are dropped.** `rdfs:subClassOf` targets
  from namespaces other than `schema:` (e.g. `fibo-fnd-agr-ctr:`,
  `cmns-dt:`) are filtered out so `WarrantyPromise` and friends no
  longer try to extend non-existent Dart classes.
- **Multi-typed JSON-LD nodes are picked up.** Nodes declared as both
  `DataType` and `rdfs:Class` (e.g. `Quantity`) no longer fall off the
  generation pipeline.
- **`removeEmpty` handles lists.** Lists with all-null entries collapse
  out of the output; lists with real entries are preserved.
- **Parser tolerates missing descriptions.** The parser no longer
  crashes when a Schema.org node ships without an `rdfs:comment` /
  `rdfs:label` — a common situation with newer pending terms.

### Parser + tooling

- `schema_parser` CLI accepts `--out` to redirect generated files into
  a scratch directory for review.
- Generator emits a stable copyright + "GENERATED CODE" header on
  every file, including a file-level
  `ignore_for_file: deprecated_member_use_from_same_package` so
  internal super-forwarding of deprecated parent fields doesn't drown
  the analyzer output.
- Dropped unused `build_runner` dependency and the orphan `build.yaml`.

### Docs + hygiene

- Added `NOTICE` attributing Oddbit and the Schema.org vocabulary, with
  redistribution terms matching `flutter_facebook_app_events`.
- Apache-2.0 copyright header on every hand-written and generated
  source file.
- Rewritten `README.md` with usage, the architecture diagram, the type
  mapping table, and known compromises.
- Expanded tests: 11 tests in the main package (nested serialization
  regression, list handling, `toJsonLdString` envelope, and more) and
  22 tests in the parser (code-generator shape tests for extends,
  multi-parent, deprecation; classifier edge cases).

### Migrating from 1.x

Most call-sites stay identical:

```dart
SchemaOrg.writeJsonLd(SchemaOrganization(name: 'Oddbit'));
```

New paths that were not available in 1.x:

```dart
// Works on every target, not just web.
final ldJson = SchemaOrg.toJsonLdString(SchemaOrganization(name: 'Oddbit'));
```

If your code grabbed an `int` from a Schema.org `Number` field:

```dart
// Before (1.x)
int duration = movie.duration;
// After (2.x)
final num duration = movie.duration;
// or, if you know the value is an int
final int duration = movie.duration.toInt();
```

If you implemented a Schema.org abstract enumeration interface yourself
(rare), add a `toJsonLd()` method returning the string you want the
value to serialize to.

## 1.0.3

- Pretty printing JSON objects
- Correcting class references in documentation

## 1.0.2

- Fixing dart package analysis feedback

## 1.0.1

- Fixing image in README
- Renaming `3d_model.dart` -> `three_d_model.dart`
- Fixing flutter analyze feedback

## 1.0.0

- Initial release.
