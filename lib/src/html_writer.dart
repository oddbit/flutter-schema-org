import 'dart:convert';

import 'package:schema_org/src/schema_serializable.dart';

import 'html_stub.dart' if (dart.library.html) 'dart:html' as html;

/// Helper class to write JSON-LD to HTML document
class SchemaOrg {
  /// Write a schema class to the HTML document as JSON-LD
  static void writeJsonLd(SchemaSerializable schemaClass) {
    final script = html.ScriptElement();
    script.type = 'application/ld+json';
    const encoder = JsonEncoder.withIndent('  ');
    script.innerHtml = encoder.convert(schemaClass.toJsonLd());
    html.document.body!.append(script);
  }
}
