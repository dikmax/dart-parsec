part of parsec;

class LabeledParser<T> extends Parser<T> {
  String label;
  Parser<T> parser;

  LabeledParser(this.parser, this.label);

  bool apply(ParseContext ctxt) => parser.apply(ctxt);

  String toString() {
    return label;
  }
}