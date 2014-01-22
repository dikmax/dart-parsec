part of parsec;

typedef bool CharPredicate(int);

class CharParser extends Parser<int> {
  CharPredicate predicate;

  String name;

  CharParser(this.predicate, this.name);

  bool apply(ParseContext ctxt) {
    if (predicate(ctxt.current)) {
      ctxt.result = ctxt.current;
      ctxt.next();
      return true;
    } else {
      return false;
    }
  }

  String toString() => this.name;
}