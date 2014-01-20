part of parsec;

class ParseContext {
  final String module;
  final String source;

  int at;
  int step;
  dynamic result;

  ParseContext(this.module, this.source, this.at, {this.result: null});

}