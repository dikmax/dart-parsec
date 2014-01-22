part of parsec;

class ParseContext {
  final String module;
  final List<int> source;

  int at;
  int step;
  int _end;
  dynamic result;

  ParseContext(this.module, this.source, this.at, {this.result: null}) {
    _end = source.length;
    step = 0;
  }

  bool isEof() => at == _end;

  int get current => source[at];

  void next([int n = 1]) {
    at += n;
    if (n > 0) {
      step++;
    }
  }
}