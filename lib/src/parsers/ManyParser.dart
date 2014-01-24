part of parsec;

class ManyParser<E, T extends Iterable<E>> extends Parser<T> {

  Parser<E> parser;
  bool requireFirst;
  String name;

  ManyParser(Parser<E> this.parser, {this.requireFirst: false, this.name: null});

  bool apply(ParseContext ctxt) {
    List<E> result = <E>[];
    while(true) {
      // TODO new context
      bool res = parser.apply(ctxt);
      if (!res) {
        break;
      }
      result.add(ctxt.result);
    }

    if (result.length > 0 || !requireFirst) {
      ctxt.result = result;
      return true;
    } else {
      ctxt.addExpected(this);
      return false;
    }
  }

  String toString() => name == null ? parser.toString() + '{1,}' : name;
}