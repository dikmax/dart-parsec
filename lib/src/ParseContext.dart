part of parsec;

class ParseContext<S extends Iterable> {
  final String module;
  final S source;

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

  int get end => _end;

  ParseContext.copy(ParseContext ctxt) : this.module = ctxt.module, this.source = ctxt.source {
    this.at = ctxt.at;
    this.step = ctxt.step;
    this._end = ctxt._end;
    this.result = ctxt.result;
    this._expected = ctxt._expected;
  }

  ParseContext.clean(ParseContext ctxt) : this.module = ctxt.module, this.source = ctxt.source, this.result = null {
    this.at = ctxt.at;
    this.step = ctxt.step;
    this._end = ctxt._end;
  }

  bool get eof => at == _end;

  int get current => source.elementAt(at);

  int lookForward(int index) {
    return source.elementAt(at + index);
  }

  void next([int n = 1]) {
    at += n;
    if (n > 0) {
      step++;
    }
  }

  void addExpected(dynamic name) {
    _expected.add(name);
  }

  void addAllExpected(Iterable names) {
    _expected.addAll(names);
  }

  ExpectedException get exception => new ExpectedException(this._expected);
}