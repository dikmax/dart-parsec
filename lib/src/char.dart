part of parsec;

// TODO update when function generics will be implemented https://code.google.com/p/dart/issues/detail?id=254

Parser<int> digit() => satisfy((char) => char >= 48 && char <= 57, 'digit'); // 0-9

Parser<int> satisfy(bool predicate(String), String name) => new CharParser(predicate, name);
