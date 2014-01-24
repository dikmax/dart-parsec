part of parsec;

class FollowedByParser<T, TF> extends Parser<T> {
  Parser<T> parser;
  Parser<TF> followingParser;

  FollowedByParser(this.parser, this.followingParser);

  bool apply(ParseContext ctxt) {
    var res1 = parser.apply(ctxt);

    if (!res1) {
      return false;
    }

    var res2 = followingParser.apply(new ParseContext.copy(ctxt));

    if (!res2) {
      return false;
    }

    return true;
  }


}