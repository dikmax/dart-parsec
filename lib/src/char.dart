part of parsec;

// TODO update when function generics will be implemented https://code.google.com/p/dart/issues/detail?id=254

// TODO implement unicode classification: http://www.unicode.org/Public/6.3.0/ucd/UnicodeData.txt

Parser<String> toString(Parser parser) => new MapParser(parser, (list) {
  if (list is Iterable) {
    return new String.fromCharCodes(list);
  } else {
    return new String.fromCharCode(list);
  }
});

/**
 * This parser succeeds for any character. Returns the parsed character.
 */
Parser<int> anyChar = satisfy((char) => true, 'any char');

/**
 * `char(c)` parses a single character `c`. Returns the parsed character (i.e. `c`).
 *
 *     var semiColon = char(';')
 */
Parser<int> char(c) {
  if (c is String) {
    if (c.length != 1) {
      throw new ArgumentError("char accepts only String with length = 1");
    }
    c = c.runes.elementAt(0);
  }
  if (c is int) {
    return satisfy((char) => char == c, new String.fromCharCode(c));
  }
  throw new ArgumentError("char accepts only int or String");
}

/**
 * Parses a white space character (any character which satisfies 'isSpace')
 * Returns the parsed character.
 */
Parser<int> space = satisfy(isSpace, 'space');

// TODO spaces = skipMany space

/**
 * Parses a newline character (\n). Returns a newline character.
 */
Parser<int> newline = satisfy((char) => char == 10, 'new-line');

/**
 * Parses a tab character (\t). Returns a tab character.
 */
Parser<int> tab = satisfy((char) => char == 9, 'tab');

/**
 * Parses an upper case letter (a character between 'A' and 'Z').
 * Returns the parsed character.
 */
Parser<int> upper = satisfy(isUpper, 'uppercase letter');

/**
 * Parses an lower case letter (a character between 'a' and 'z').
 * Returns the parsed character.
 */
Parser<int> lower = satisfy(isLower, 'lowercase letter');

/**
 * Parses a letter or digit (a character between '0' and '9'). Returns the parsed character.
 */
Parser<int> alphaNum = satisfy(isAlphaNum, 'letter or digit');

/**
 * Parses a letter (an upper case or lower case character). Returns the parsed character.
 */
Parser<int> letter = satisfy(isAlpha, 'letter');

/**
 * Parses a digit. Returns the parsed character.
 */
Parser<int> digit = satisfy((char) => char >= 48 && char <= 57, 'digit'); // 0-9

/**
 * Parses a numeric character. Returns the parsed character.
 */
Parser<int> numeric = satisfy(isNumeric, 'numeric character');

/**
 * Parses a hexadecimal digit (a digit or a letter between 'a' and 'f' or 'A' and 'F'). Returns the parsed character.
 */
Parser<int> hexDigit = satisfy((char) => char >= 48 && char <= 57 ||
    char >= 65 && char <= 70 || char >= 97 && char <= 102, 'hexadecimal digit');

/**
 * `oneOf(chars)` succeeds if the current character is in the supplied list of characters `chars`.
 * Returns the parsed character.
 *
 *     var vowel = oneOf("aeiou")
 */
Parser<int> oneOf(chars) {
  if (chars is String) {
    chars = new List<int>.from(chars.runes);
  }
  if (!(chars is List<int>)) {
    throw new ArgumentError("char accepts only List<int> or String");
  }
  chars.sort();
  return satisfy((char) => binarySearch(chars, char) != -1, "[${new String.fromCharCodes(chars)}]");
}

/**
 * As the dual of [oneOf], `noneOf(chars)` succeeds if the current character *not* in the supplied list of characters
 * `chars`. Returns the parsed character.
 *
 *     var consonant = noneOf("aeiou")
 */
Parser<int> noneOf(chars) {
  if (chars is String) {
    chars = new List<int>.from(chars.runes);
  }
  if (!(chars is List<int>)) {
    throw new ArgumentError("char accepts only List<int> or String");
  }
  chars.sort();
  return satisfy((char) => binarySearch(chars, char) == -1, "[^${new String.fromCharCodes(chars)}]");
}

/**
 * The parser `satisfy` succeeds for any character for which the supplied function `predicate` returns `true`.
 * Predicate should check code units. Returns the character that is actually parsed.
 *
 *     var digit = satisfy((char) => char >= 48 && char <= 57);
 */
Parser<int> satisfy(CharPredicate predicate, [String name]) => new CharParser(predicate, name);

/**
 * `string(s)` parses a sequence of characters given by `s`. Returns the parsed string (i.e. `s`).
 *
 *     var divOrMod = string("div") | string("mod")
 */
StringParser string(String s) => new StringParser(s);
