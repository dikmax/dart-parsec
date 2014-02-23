part of parsec;

class SepByParser<E, T extends Iterable<E>> extends Parser<T> {
  final Parser<E> parser;
  final Parser sepParser;
  final bool requireFirst;

  String name;

  SepByParser(this.parser, this.sepParser, {this.requireFirst: false, this.name: null});

  bool apply(ParseContext ctxt) {
    List<E> result = <E>[];

    // Add parser result
    ParseContext parseContext = new ParseContext.clean(ctxt);
    bool res = parser.apply(parseContext);
    if (!res) {
      if (!requireFirst) {
        ctxt.result = result;
        return true;
      } else {
        ctxt.addExpected(this);
        return false;
      }
    }
    ctxt.at = parseContext.at;
    ctxt.step = parseContext.step;
    result.add(parseContext.result);


    while(true) {
      // Skip separator
      ParseContext parseContext = new ParseContext.clean(ctxt);
      bool res = sepParser.apply(parseContext);
      if (!res) {
        break;
      }

      // Add parser result
      res = parser.apply(parseContext);
      if (!res) {
        break;
      }
      result.add(parseContext.result);
      ctxt.at = parseContext.at;
      ctxt.step = parseContext.step;
    }

    ctxt.result = result;
    return true;
  }

  String toString() =>
    name == null ? '${parser.toString()}${requireFirst ? '' : '?'}(${sepParser.toString()}${parser.toString()})*' : name;
}