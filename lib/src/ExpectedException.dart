part of parsec;

class ExpectedException implements Exception {
  List _expected;

  ExpectedException(this._expected);

  String toString() {
    if (_expected.length > 1) {
      return 'Expected ' + _expected.getRange(0, _expected.length - 1).map((i) => i.toString()).join(", ") + ' or '
      + _expected.last.toString();
    } else if (_expected.length == 1) {
      return 'Expected ' + _expected.first.toString();
    } else {
      return '???';
    }
  }
}