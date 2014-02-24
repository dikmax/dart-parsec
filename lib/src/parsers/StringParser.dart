part of parsec;

class StringParser extends Parser<String> {
  List<int> _string;
  int _length;

  StringParser(String string) : super(string) {
    this._string = new List<int>.from(string.runes);
    _length = this._string.length;
  }

  bool apply(ParseContext ctxt) {
    int i = 0;
    while (i < _length && !ctxt.eof) {
      if (ctxt.current != _string[i]) {
        break;
      }
      ctxt.next();
      ++i;
    }
    if (i < _length) {
      ctxt.addExpected(this);
      return false;
    }

    ctxt.result = new String.fromCharCodes(_string);
    return true;
  }
}