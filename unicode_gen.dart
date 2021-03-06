import 'dart:io';
import 'dart:async';
import 'dart:convert';

// To generate unicode.dart you should download http://www.unicode.org/Public/6.3.0/ucd/UnicodeData.txt

String toCondition(List<int> codes) {
  // TODO Overall condition optimization (too many data!!!)
  // TODO add support to interspace like (c >= a && c <= b && c & 1 == 0)
  List<String> result = <String>[];
  bool inRange = false;
  int rangeStart;
  for (int i = 0; i < codes.length - 1; ++i) {
    if (codes[i] + 1 == codes[i + 1]) {
      if (!inRange) {
        inRange = true;
        rangeStart = codes[i];
      }
    } else {
      if (inRange) {
        inRange = false;
        result.add('(c>=${rangeStart}&&c<=${codes[i]})');
      } else {
        result.add('c==${codes[i]}');
      }
    }
  }
  if (inRange) {
    result.add('(c>=${rangeStart} && c<=${codes.last})');
  } else {
    result.add('c==${codes.last}');
  }

  if (result.length == 0) {
    return 'false';
  } else {
    return result.join('||');
  }
}

void processFile(List<String> lines) {
  List<int> spaces = <int>[];
  List<int> lower = <int>[];
  List<int> upper = <int>[];
  List<int> alpha = <int>[];
  List<int> alphaNum = <int>[];
  List<int> numeric = <int>[];

  var testFile = new File('test/unicode-test.dart');

  IOSink ts = testFile.openWrite();
  ts.writeln("// This file is autogenerated. Do not edit.");
  ts.writeln();
  ts.writeln("import '../lib/parsec.dart';");
  ts.writeln();
  ts.writeln("void main() {");

  lines.forEach((String line) {
    List<String> data = line.split(';');
    int code = int.parse(data[0], radix: 16);
    String cls = data[2];

    List<String> params = <String>[code.toString()];

    switch (cls) {
    case 'Zs':
      spaces.add(code);
      params.add('s:true');
      break;

    case 'Ll':
      lower.add(code);
      alpha.add(code);
      alphaNum.add(code);
      params.addAll(['l:true', 'a:true', 'an:true']);
      break;

    case 'Lu':
    case 'Lt':
      upper.add(code);
      alpha.add(code);
      alphaNum.add(code);
      params.addAll(['u:true', 'a:true', 'an:true']);
      break;

    case 'Lm':
    case 'Lo':
      alpha.add(code);
      alphaNum.add(code);
      params.addAll(['a:true', 'an:true']);
      break;

    case 'Mc':
    case 'Me':
    case 'Mn':
      alphaNum.add(code);
      params.add('an:true');
      break;

    case 'Nd':
    case 'Nl':
    case 'No':
      alphaNum.add(code);
      numeric.add(code);
      params.addAll(['an:true', 'n: true']);
      break;
    }

    if (code == 9 || code == 10 || code == 11 || code == 13) {
      params.add('s:true');
    }

    ts.writeln('  testCode(${params.join(",")});');
  });

  ts.writeln('}');
  ts.writeln();
  ts.writeln(r'''
  void testCode(int code, {bool s: false, bool a: false, bool an: false, bool l: false, bool u: false, bool n: false}) {
    if (isSpace(code) != s) {
      print(s ? "${code} should be space" : "${code} should not be space");
    }
    if (isAlpha(code) != a) {
      print(a ? "${code} should be alpha" : "${code} should not be alpha");
    }
    if (isAlphaNum(code) != an) {
      print(an ? "${code} should be alphanum" : "${code} should not be alphanum");
    }
    if (isUpper(code) != u) {
      print(u ? "${code} should be upper" : "${code} should not be upper");
    }
    if (isLower(code) != l) {
      print(l ? "${code} should be lower" : "${code} should not be lower");
    }
    if (isNumeric(code) != n) {
      print(n ? "${code} should be numeric" : "${code} should not be numeric");
    }
  }
  ''');

  ts.close();

  var file = new File('lib/src/unicode.dart');
  // TODO wrap lines;
  IOSink sink = file.openWrite();
  sink.writeln("// This file is autogenerated. Do not edit.");
  sink.writeln();
  sink.writeln('part of parsec;');
  sink.writeln();


  sink.write(r"bool isSpace(int c) => c==9||c==10||c==11||c==13||");
  sink.write(toCondition(spaces));
  sink.writeln(';');

  sink.write(r"bool isLower(int c) => ");
  sink.write(toCondition(lower));
  sink.writeln(';');

  sink.write(r"bool isUpper(int c) => ");
  sink.write(toCondition(upper));
  sink.writeln(';');

  sink.write(r"bool isAlpha(int c) => ");
  sink.write(toCondition(alpha));
  sink.writeln(';');

  sink.write(r"bool isAlphaNum(int c) => ");
  sink.write(toCondition(alphaNum));
  sink.writeln(';');

  sink.write(r"bool isNumeric(int c) => ");
  sink.write(toCondition(numeric));
  sink.writeln(';');

  sink.close();
}

void main() {
  var file = new File('UnicodeData.txt');
  Future<List<String>> finishedReading = file.readAsLines(encoding: ASCII);
  finishedReading.then(processFile);
}
