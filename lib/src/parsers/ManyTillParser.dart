part of parsec;

class ManyTillParser<E, T extends Iterable<E>> extends Parser<T> {

  Parser<E> parser;
  Parser endParser;
  String name;

  ManyTillParser(this.parser, this.endParser, {this.name: null});

  bool apply(ParseContext ctxt) {
    List<E> result = <E>[];

    while(true) {
      bool res = endParser.apply(ctxt);
      if (res) {
        break;
      }

      res = parser.apply(ctxt);
      if (!res) {
        ctxt.addExpected(this);
        return false;
      }
      result.add(ctxt.result);
    }

    ctxt.result = result;
    return true;
  }

  String toString() => name == null ? "${parser.toString()}*${endParser.toString()}" : name;
}
