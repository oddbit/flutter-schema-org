# Schema Parser CLI

Use the `schema_parser` to parse and generate Schema.org class code from
the full JSON-LD schema definition that can be downloaded from
[Schema.org for Developers](https://schema.org/docs/developers.html).

## Usage

Make sure that you run the schema parser script from its source folder since
the source code is generated with a relative path from there.

```bash
dart run schema_parser ~/Downloads/schemaorg-currenthttps.jsonld
```

The generated code will need some fixing due to poor formatting and sanity
checking of the code generation. Run the following

```
cd ../lib/schemas
dart format .
dart fix --apply
```
