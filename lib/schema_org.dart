library schema_org;

import 'dart:convert';

import '../html_stub.dart' if (dart.library.html) 'dart:html' as html;

/// Base class for all Schema.org classes to implement
abstract class SchemaSerializable {
  /// Serialize a schema to JSON-LD
  dynamic toJsonLd();
}

class SchemaOrg {
  static void writeJsonLd(SchemaSerializable schemaClass) {
    final script = html.ScriptElement();
    script.type = 'application/ld+json';
    script.innerHtml = jsonEncode(schemaClass.toJsonLd());
    html.document.body!.append(script);
  }
}
