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

/// Matches one any char
Parser<int> anyChar = satisfy((char) => true, 'any char');

Parser<int> char(c) {
  if (c is String) {
    if (c.length != 1) {
      throw new ArgumentError("char accepts only String with length = 1");
    }
    c = c.codeUnits[0];
  }
  if (c is int) {
    return satisfy((char) => char == c, new String.fromCharCode(c));
  }
  throw new ArgumentError("char accepts only int or String");
}
Parser<int> digit = satisfy((char) => char >= 48 && char <= 57, 'digit'); // 0-9

Parser<int> oneOf(chars) {
  if (chars is String) {
    chars = new List<int>.from(chars.codeUnits);
  }
  if (!(chars is List<int>)) {
    throw new ArgumentError("char accepts only List<int> or String");
  }
  chars.sort();
  return satisfy((char) => binarySearch(chars, char) != -1, "[${new String.fromCharCodes(chars)}]");
}

Parser<int> satisfy(CharPredicate predicate, String name) => new CharParser(predicate, name);
