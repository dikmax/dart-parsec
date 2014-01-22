part of parsec;

class EofParser extends Parser {
  String name;

  EofParser(this.name);

  bool apply(ParseContext ctxt) => ctxt.isEof();

  String toString() => name;
}
