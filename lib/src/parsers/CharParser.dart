part of parsec;

typedef bool CharPredicate(int);

class CharParser extends Parser<int> {
  CharPredicate predicate;

  CharParser(this.predicate, [String name]) : super(name) ;

  bool apply(ParseContext ctxt) {
    if (ctxt.eof) {
      // TODO add unexpected eof message
      return false;
    }
    if (predicate(ctxt.current)) {
      ctxt.result = ctxt.current;
      ctxt.next();
      return true;
    } else {
      ctxt.addExpected(this);
      return false;
    }
  }
}