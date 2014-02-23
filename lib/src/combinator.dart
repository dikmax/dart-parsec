part of parsec;

// TODO update when function generics will be implemented https://code.google.com/p/dart/issues/detail?id=254

/**
 * `choice(ps)` tries to apply the parsers in the list `ps` in order, until one of them succeeds.
 * Returns the value of the succeeding parser.
 */
ChoiseParser choise(Iterable<Parser> parsers) => new ChoiseParser(parsers);

/**
 * `option(x,p)` tries to apply parser `p`. If `p` fails without consuming input, it returns the value `x`,
 * otherwise the value returned by `p`.
*/
ChoiseParser option(dynamic res, Parser parser) => parser | new ReturnParser(res);

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

/**
 * `sepBy(p, sep)` parses *zero* or more occurrences of `p`, separated by `sep`. Returns a list of values returned
 * by `p`.
 *
 *     commaSep(p) => sepBy(p, char(","))
 */
Parser sepBy(Parser p, Parser sep) => new SepByParser(p, sep, requireFirst: false);

/**
 * `sepBy1(p, sep)` parses *one* or more occurrences of `p`, separated by `sep`. Returns a list of values returned
 * by `p`.
 */
Parser sepBy1(Parser p, Parser sep) => new SepByParser(p, sep, requireFirst: true);

/**
 * `sepEndBy(p, sep)` parses *zero* or more occurrences of `p`, separated and optionally ended by `sep`, ie. haskell
 * style statements. Returns a list of values returned by `p`.
 *
 *     haskellStatements = sepEndBy(haskellStatement, semi)
 */
Parser sepEndBy(Parser p, Parser sep) => new SepEndByParser(p, sep, requireFirst: false);

/**
 * `sepEndBy1(p, sep)` parses *one* or more occurrences of `p`, separated and optionally ended by `sep`. Returns a list
 * of values returned by `p`.
 */
Parser sepEndBy1(Parser p, Parser sep) => new SepEndByParser(p, sep, requireFirst: true);

/**
 * `endBy(p, sep)` parses *zero* or more occurrences of `p`, separated and ended by `sep`. Returns a list of values
 * returned by `p`.
 *
 *     cStatements  = endBy(cStatement, semi)
 */
Parser endBy(Parser p, Parser sep) => new EndByParser(p, sep, requireFirst: false);

/**
 * `endBy1(p, sep)` parses *one* or more occurrences of `p`, separated and ended by `sep`. Returns a list of values
 * returned by `p`.
 */
Parser endBy1(Parser p, Parser sep) => new EndByParser(p, sep, requireFirst: true);

Parser map(Parser parser, MapFunction map) => new MapParser(parser, map);
