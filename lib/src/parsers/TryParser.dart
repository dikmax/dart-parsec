part of parsec;

class TryParser<T> extends Parser<T> {
  Parser<T> parser;

  TryParser(this.parser, [String name]) : super(name);

  bool apply(ParseContext ctxt) {
    ParseContext newCtxt = new ParseContext.clean(ctxt);

    bool result = parser.apply(newCtxt);

    if (result) {
      ctxt.at = newCtxt.at;
      ctxt.step = newCtxt.step;
      ctxt.result = newCtxt.result;
      return true;
    } else {
      return false;
    }
  }
}