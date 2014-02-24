part of parsec;

class EndByParser<E, T extends Iterable<E>> extends Parser<T> {
  final Parser<E> parser;
  final Parser sepParser;
  final bool requireFirst;

  String name;

  EndByParser(this.parser, this.sepParser, {this.requireFirst: false, this.name: null});

  bool apply(ParseContext ctxt) {
    List<E> result = <E>[];

    ParseContext parseContext = new ParseContext.clean(ctxt);
    while(true) {
      // Add parser result
      bool res = parser.apply(parseContext);
      if (!res) {
        break;
      }
      var intermediateResult = parseContext.result;

      // Skip separator
      res = sepParser.apply(parseContext);
      if (!res) {
        break;
      }
      result.add(intermediateResult);
      ctxt.at = parseContext.at;
      ctxt.step = parseContext.step;
    }

    if (result.length > 0 || !requireFirst) {
      ctxt.result = result;
      return true;
    } else {
      ctxt.addExpected(this);
      return false;
    }
  }

  String toString() =>
    name == null ? '(${parser.toString()}${sepParser.toString()})' + (requireFirst ? '+' : '*') : name;
}