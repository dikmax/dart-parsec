part of parsec;

class SepEndByParser<E, T extends Iterable<E>> extends Parser<T> {
  final Parser<E> parser;
  final Parser sepParser;
  final bool requireFirst;

  String name;

  SepEndByParser(this.parser, this.sepParser, {this.requireFirst: false, this.name: null});

  bool apply(ParseContext ctxt) {
    List<E> result = <E>[];

    while(true) {
      // Add parser result
      ParseContext parseContext = new ParseContext.clean(ctxt);
      bool res = parser.apply(parseContext);
      if (!res) {
        break;
      }
      ctxt.at = parseContext.at;
      ctxt.step = parseContext.step;
      result.add(parseContext.result);

      // Skip result
      parseContext = new ParseContext.clean(ctxt);
      res = sepParser.apply(parseContext);
      if (!res) {
        break;
      }
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
    name == null ? '(${parser.toString()}${sepParser.toString()}?)' + (requireFirst ? '+' : '*') : name;
}