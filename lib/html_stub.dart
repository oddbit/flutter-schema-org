final document = Document();

class HtmlElement {
  void append(ScriptElement script) {}
}

class Document {
  final HtmlElement? body = HtmlElement();
}

class ScriptElement {
  String type = '';
  String innerHtml = '';
}
