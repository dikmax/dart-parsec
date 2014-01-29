part of parsec;

class SequenceParser<T> extends Parser<T> {
  Iterable<Parser> parsers;

  SequenceParser(this.parsers) : super("Sequence");

  SequenceParser operator & (Parser parser) {
    List<Parser> p = new List<Parser>.from(parsers);
    p.add(parser);
    parsers = p;
    return this;
  }

  bool apply(ParseContext ctxt) {
    List r = [];
    for (Parser parser in parsers) {
      bool result = parser.apply(ctxt);
      if (!result) {
        ctxt.result = r;
        return false;
      }
      r.add(ctxt.result);
    }

    ctxt.result = r;
    return true;
  }
}