part of parsec;

// TODO update when function generics will be implemented https://code.google.com/p/dart/issues/detail?id=254

Parser<String> toString(Parser parser) => new MapParser(parser, (list) {
  if (list is Iterable) {
    return new String.fromCharCodes(list);
  } else {
    return new String.fromCharCode(list);
  }
});

/// Matches one any char
Parser<int> anyChar = satisfy((char) => true, 'any char');

Parser<int> digit = satisfy((char) => char >= 48 && char <= 57, 'digit'); // 0-9

// TODO binary search
Parser<int> oneOfList(List<int> chars) => satisfy((char) => chars.contains(char), "[${new String.fromCharCodes(chars)}]");
Parser<int> oneOf(String chars) => oneOfList(chars.codeUnits);

Parser<int> satisfy(bool predicate(String), String name) => new CharParser(predicate, name);
