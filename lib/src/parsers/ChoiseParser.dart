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
      var res = parser.apply(ctxt);
      if (res) {
        return true;
      }
    }

    ctxt.addAllExpected(parsers);
    return false;
  }
}