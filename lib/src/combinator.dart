part of parsec;

// TODO update when function generics will be implemented https://code.google.com/p/dart/issues/detail?id=254

/**
 * This parser only succeeds at the end of the input.
 */
EofParser eof = new EofParser('End of input');

/**
 * `many(p)` applies the parser `p` *zero* or more times. Returns a list of the returned values of `p`.
 */
Parser many(Parser parser) => new ManyParser(parser, requireFirst: false);

/**
 * `many1(p)` applies the parser `p` *one* or more times. Returns a list of the returned values of `p`.
 *
 *     word  = many1(letter)
 */
Parser many1(Parser parser) => new ManyParser(parser, requireFirst: true);

/**
 * `skipMany(p)` applies the parser `p` *zero* or more times, skipping its result.
 *
 *     spaces  = skipMany(space)
 */
Parser<Null> skipMany(Parser parser) => new SkipManyParser(parser, requireFirst: false);

/**
 * `skipMany1(p) applies the parser `p` *one* or more times, skipping its result.
 */
Parser<Null> skipMany1(Parser parser) => new SkipManyParser(parser, requireFirst: true);

Parser map(Parser parser, MapFunction map) => new MapParser(parser, map);
