part of parsec;

class EofParser extends Parser {
  String name;

  EofParser(this.name);

  bool apply(ParseContext ctxt) {
    if (!ctxt.eof) {
      ctxt.addExpected(this);
    }
    return ctxt.eof;
  }

  String toString() => name;
}
