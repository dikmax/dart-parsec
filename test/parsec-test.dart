library parsecTest;

import 'package:unittest/unittest.dart' as t;
import '../lib/parsec.dart';

void main() {
  t.group('Char parser', () {
    t.group('char', () {
      success("should accept codeUnit", char('a'.codeUnits[0]), 'a', 'a'.codeUnits[0]);
      success("should accept String", char('a'), 'a', 'a'.codeUnits[0]);
      exception("should fail on not accepted chars", char('a'), 'b');
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
      expected("should match one char", anyChar, '', ['any char']);
      expected("should match only one char", anyChar, 'aa', ['End of input']);
      success("should match one and only one char", anyChar, 'a', 'a'.codeUnits[0]);
    });

    t.group('digit', () {
      success("should match digit", digit, '0', '0'.codeUnits[0]);
      expected("shouldn't match letter", digit, 'a', ['digit']);
    });
    t.group('oneOf', () {
      CharParser parser = oneOf('abc');
      success("should match included char", parser, 'b', 'b'.codeUnits[0]);
      expected("shouldn't match excluded char", parser, 'd', ['[abc]']);
      success("should work with List<int>", oneOf(<int>[97, 98, 99]), 'c', 'c'.codeUnits[0]);
    });
    t.group('string', () {
      StringParser parser = string('string');
      success("should match same string", parser, 'string', 'string');
      expected("shouldn't match shorter string", parser, 'strin', ['string']);
      expected("shouldn't match longer string", parser, 'string!', ['End of input']);
    });
    t.group('toString', () {
      success("should transfrom int to String", toString(anyChar), 'a', 'a');
      success("should transfrom List<int> to String", toString(many(anyChar)), 'abcde', 'abcde');
    });
  });

  t.group('Parser combinator', () {
    t.group('many', () {
      Parser parser = many(anyChar);
      success('should match empty string', parser, '', []);
      success('should match string with one char', parser, 'a', [97]);
      success('should match any number of chars', parser, 'zyxwvut', [122, 121, 120, 119, 118, 117, 116]);
    });

    t.group('many1', () {
      Parser parser = many1(anyChar);
      expected("shouldn't match empty string", parser, "", ['any char{1,}']);
      success('should match string with one char', parser, 'a', [97]);
      success("should match any number of chars", parser, 'zyxwvut', [122, 121, 120, 119, 118, 117, 116]);
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
      success('should apply parsers sequentenly', parser, '1a', '1a'.codeUnits);
      expected('could fail on first parser', parser, 'aa', ['digit']);
      expected('could fail on second parser', parser, '1й', ['a']);
    });
  });
}

void success(String description, Parser parser, String data, result) {
  t.test(description, () {
    t.expect(parser.parse(data), t.equals(result));
  });
}
void exception(String description, Parser parser, String data) {
  t.test(description, () {
    t.expect(() => parser.parse(data), t.throws);
  });
}
void expected(String description, Parser parser, String data, List<String> expected) {
  t.test(description, () {
    Set<String> expectedSet = new Set<String>.from(expected);
    try {
      parser.parse(data);
    } on ExpectedException catch (e) {
      t.expect(e.expected, t.equals(expected));
    }
  });
}
