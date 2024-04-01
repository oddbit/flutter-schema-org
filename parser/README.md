# Schema Parser CLI

Use the `schema_parser.dart` to parse and generate Schema.org class code from
the full JSON-LD schema definition that can be downloaded from
[Schema.org for Developers](https://schema.org/docs/developers.html).

## Usage

Make sure that you run the schema parser script from its source folder since
the source code is generated with a relative path from there.

```bash
dart schema_parser.dart ~/Downloads/schemaorg-currenthttps.jsonld
```
