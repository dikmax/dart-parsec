part of parsec;

abstract class Parser<T> {

  bool run(ParseContext ctxt) {
    //try {
      return apply(ctxt);
    //} catch (e) {
      //throw asParserException(e, ctxt);
      // TODO exception
      //return false;
    //}
  }

  Parser<T> operator ^ (String name) => null;

  T getReturn(ParseContext ctxt) {
    return ctxt.result as T;
  }

  T parse(String source, {String moduleName: null}) {
    ParseContext ctxt = new ParseContext(moduleName, source.codeUnits, 0);
    if (!run(ctxt)) {
      //throw new ParserException(ctxt.renderError(), ctxt.module, locator.locate(ctxt.errorIndex()));
    }
    return getReturn(ctxt);
  }

  bool apply(ParseContext ctxt);
}