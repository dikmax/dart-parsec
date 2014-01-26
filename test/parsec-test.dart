library parsecTest;

import 'package:unittest/unittest.dart' as t;
import '../lib/parsec.dart';

void _testSuccess(String description, Parser parser, data, result) {
  t.test(description, () {
    t.expect(parser.parse(data), t.equals(result));
  });
}
void _testException(String description, Parser parser, data) {
  t.test(description, () {
    t.expect(() => parser.parse(data), t.throws);
  });
}

void main() {
  t.group('Char parser', () {
    t.group('char', () {
      _testSuccess("should accept codeUnit", char('a'.codeUnits[0]), 'a', 'a'.codeUnits[0]);
      _testSuccess("should accept String", char('a'), 'a', 'a'.codeUnits[0]);
      _testException("should fail on not accepted chars", char('a'), 'b');
      t.test("should fail on empty strings", () {
        t.expect(() => char(''), t.throws);
      });
      t.test("should fail on string with length > 1", () {
        t.expect(() => char('qq'), t.throws);
      });
      t.test("should fail on other types", () {
        t.expect(() => char(1.0), t.throws);
      });

    });
    t.group('anyChar', () {
      _testException("should match one char", anyChar, '');
      _testException("should match only one char", anyChar, 'aa');
      _testSuccess("should match one and only one char", anyChar, 'a', 'a'.codeUnits[0]);
    });
    t.group('digit', () {
      _testSuccess("should match digit", digit, '0', '0'.codeUnits[0]);
      _testException("shouldn't match letter", digit, 'a');
    });
    t.group('oneOf', () {
      CharParser parser = oneOf('abc');
      _testSuccess("should match included char", parser, 'b', 'b'.codeUnits[0]);
      _testException("shouldn't match excluded char", parser, 'd');
      _testSuccess("should work with List<int>", oneOf(<int>[97, 98, 99]), 'c', 'c'.codeUnits[0]);
    });
    t.group('string', () {
      StringParser parser = string('string');
      _testSuccess("should match same string", parser, 'string', 'string');
      _testException("shouldn't match shorter string", parser, 'strin');
      _testException("shouldn't match longer string", parser, 'string!');
    });
    t.group('toString', () {
      _testSuccess("should transfrom int to String", toString(anyChar), 'a', 'a');
      _testSuccess("should transfrom List<int> to String", toString(many(anyChar)), 'abcde', 'abcde');
    });
  });

  t.group('Parser combinator', () {
    t.group('many', () {
      Parser parser = many(anyChar);
      _testSuccess('should match empty string', parser, '', []);
      _testSuccess('should match string with one char', parser, 'a', [97]);
      _testSuccess('should match any number of chars', parser, 'zyxwvut', [122, 121, 120, 119, 118, 117, 116]);
    });

    t.group('many1', () {
      Parser parser = many1(anyChar);
      _testException("shouldn't match empty string", parser, "");
      _testSuccess('should match string with one char', parser, 'a', [97]);
      _testSuccess("should match any number of chars", parser, 'zyxwvut', [122, 121, 120, 119, 118, 117, 116]);
    });
  });

  t.group('Parser operator', () {
    t.group('^', () {
      Parser parser = many1(digit) ^ 'value';
      t.test('shold change parser name', () {
        t.expect(parser.name, t.equals('value'));
      });
    });

    t.group('&', () {
      Parser parser = digit & char('a');
      _testSuccess('should apply parsers sequentenly', parser, '1a', '1a'.codeUnits);
      _testException('could fail on first parser', parser, 'aa');
      _testException('could fail on second parser', parser, '1й');
    });
  });
}