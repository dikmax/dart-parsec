part of parsec;

// TODO update when function generics will be implemented https://code.google.com/p/dart/issues/detail?id=254

Parser digit() => satisfy((char) => char >= '0' && char <= '9');

Parser satisfy(bool predicate(String)) {
  return null;
}