part of parsec;

class ReturnParser<T> extends Parser<T> {
  T result;

  ReturnParser(this.result);

  bool apply(ParseContext ctxt) {
    ctxt.result = result;
    return true;
  }
}