// For first version we need to make parser which will parse 2+3+6-7 expressions

import 'lib/parsec.dart';

abstract class Operand {
}

class Value extends Operand {
  int value;

  Value(this.value);
}

class Operator {
  String operator;

  Operator(this.operator);
}

class Expression {
  Operand a;
  Operand b;
  Operator operator;

  Expression(this.operator, this.a, this.b);
}

Parser parser = many1(digit()) ^ "digits";

void main() {
  print(parser.parse("1234"));
}