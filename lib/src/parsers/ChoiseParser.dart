part of parsec;

class ChoiseParser<T> extends Parser<T> {
  Iterable<Parser<T>> parsers;

  ChoiseParser(this.parsers, [name]) : super(name);

  ChoiseParser<T> operator | (Parser<T> parser) {
    List<Parser<T>> p = new List<Parser<T>>.from(parsers);
    p.add(parser);
    parsers = p;
    return this;
  }

  bool apply(ParseContext ctxt) {
    for (Parser<T> parser in parsers) {
      ParseContext newContext = new ParseContext.clean(ctxt);
      var res = parser.apply(newContext);
      if (res) {
        ctxt.at = newContext.at;
        ctxt.step = newContext.step;
        ctxt.result = newContext.result;
        return true;
      }
    }

    ctxt.addAllExpected(parsers);
    return false;
  }
}