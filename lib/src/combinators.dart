part of parsec;

// TODO update when function generics will be implemented https://code.google.com/p/dart/issues/detail?id=254

Parser many1(Parser parser) => null;

Parser eof() => new EofParser('End of input');