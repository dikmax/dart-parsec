part of parsec;

class ParseContext {
  final String module;
  final List<int> source;

  int at;
  int step;
  int _end;
  dynamic result;

  List<dynamic> _expected = <dynamic>[];
  List<dynamic> get expected => _expected;

  ParseContext(this.module, this.source, this.at, {this.result: null}) {
    _end = source.length;
    step = 0;
  }

  bool get eof => at == _end;

  int get current => source[at];

  void next([int n = 1]) {
    at += n;
    if (n > 0) {
      step++;
    }
  }

  void addExpected(dynamic name) {
    _expected.add(name);
  }

  String get errorMessage {
    if (_expected.length > 1) {
      return 'Expected ' + _expected.getRange(0, _expected.length - 1).map((i) => i.toString()).join(", ") + ' or '
        + _expected.last.toString();
    } else if (_expected.length == 1) {
      return 'Expected ' + _expected.first.toString();
    } else {
      return 'No error';
    }
  }
}