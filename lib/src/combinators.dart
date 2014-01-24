part of parsec;

// TODO update when function generics will be implemented https://code.google.com/p/dart/issues/detail?id=254

Parser many(Parser parser) => new ManyParser(parser, requireFirst: false);
Parser many1(Parser parser) => new ManyParser(parser, requireFirst: true);

Parser eof() => new EofParser('End of input');