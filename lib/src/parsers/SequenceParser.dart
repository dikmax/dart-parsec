part of parsec;

class SequenceParser<T> extends Parser<T> {
  List<Parser> parsers;

  SequenceParser(this.parsers) : super("Sequence");

  SequenceParser operator & (Parser parser) {
    parsers.add(parser);
    return this;
  }

  bool apply(ParseContext ctxt) {
    List r = [];
    for (int i = 0; i < parsers.length; ++i) {
      Parser parser = parsers[i];
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