part of parsec;

typedef R MapFunction<T, R>(T);

class MapParser<T, R> extends Parser<R> {
  Parser<T> innerParser;
  MapFunction<T, R> map;

  MapParser(this.innerParser, this.map, [String name]) : super(name);

  bool apply(ParseContext ctxt) {
    bool result = innerParser.apply(ctxt);

    if (result) {
      ctxt.result = map(ctxt.result);
    }

    return result;
  }


}