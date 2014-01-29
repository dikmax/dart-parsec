part of parsec;

class SkipManyParser extends Parser<Null> {
  Parser parser;
  bool requireFirst;
  String name;

  SkipManyParser(Parser this.parser, {this.requireFirst: false, this.name: null});

  bool apply(ParseContext ctxt) {
    int count = 0;
    while(true) {
      var parseContext = new ParseContext.clean(ctxt);
      bool res = parser.apply(parseContext);
      if (!res) {
        break;
      }
      ++count;
      ctxt.at = parseContext.at;
      ctxt.step = parseContext.step;
    }

    if (count > 0 || !requireFirst) {
      ctxt.result = null;
      return true;
    } else {
      ctxt.addExpected(this);
      return false;
    }
  }

  String toString() => name == null ? parser.toString() + '{1,}' : name;
}