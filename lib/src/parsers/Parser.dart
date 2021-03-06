part of parsec;

abstract class Parser<T> {

  String name;

  Parser([this.name]);

  Parser<T> followedBy(Parser parser) => new FollowedByParser<T, dynamic>(this, parser);

  bool run(ParseContext ctxt) {
    //try {
      return apply(ctxt);
    //} catch (e) {
      //throw asParserException(e, ctxt);
      // TODO exception
      //return false;
    //}
  }

  Parser<T> operator ^ (String name) {
    this.name = name;
    return this;
  }

  /// Alias for `^` operator
  Parser<T> label (String name) => this ^ name;

  SequenceParser operator & (Parser parser) => new SequenceParser([this, parser]);

  ChoiseParser operator | (Parser parser) => new ChoiseParser([this, parser]);

  /// Alias for `&` operator
  SequenceParser and (Parser parser) => this & parser;

  T getReturn(ParseContext ctxt) {
    return ctxt.result as T;
  }

  T parse(String source, {String moduleName: null}) {
    ParseContext ctxt = new ParseContext<Runes>(moduleName, source.runes, 0);
    if (!followedBy(eof).run(ctxt)) {
      throw ctxt.exception;
      //throw new ParserException(ctxt.renderError(), ctxt.module, locator.locate(ctxt.errorIndex()));
    }
    return getReturn(ctxt);
  }

  bool apply(ParseContext ctxt);

  String toString() => name;
}