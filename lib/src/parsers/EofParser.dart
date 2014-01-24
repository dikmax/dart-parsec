part of parsec;

class EofParser extends Parser {
  String name;

  EofParser(this.name);

  bool apply(ParseContext ctxt) => ctxt.eof;

  String toString() => name;
}
