part of parsec;

class StringParser extends Parser<String> {
  List<int> _string;
  int _length;

  StringParser(String string) : super(string) {
    this._string = new List<int>.from(string.runes);
    _length = this._string.length;
  }

  bool apply(ParseContext ctxt) {
    if (ctxt.at + _length > ctxt.end) {
      ctxt.addExpected(this);
      return false;
    }

    bool result = true;
    for (int i = 0; i < _length; ++i) {
      if (_string[i] != ctxt.lookForward(i)) {
        result = false;
        break;
      }
    }
    if (!result) {
      ctxt.addExpected(this);
      return false;
    }

    ctxt.next(_length);
    ctxt.result = new String.fromCharCodes(_string);
    return true;
  }
}