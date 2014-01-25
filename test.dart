// For first version we need to make parser which will parse 2+3+6-7 expressions

import 'lib/parsec.dart';

abstract class Operand {
}

class Value extends Operand {
  int value;

  Value(this.value);

  String toString() => "Value(${value})";
}

class Operator {
  String operator;

  Operator(this.operator);

  String toString() => operator;
}

class Expression {
  Operand a;
  Operand b;
  Operator operator;

  Expression(this.operator, this.a, this.b);
}

Parser<Value> value = map(toString(many1(digit()) ^ "digits"), (str) => new Value(int.parse(str)));
Parser<Operator> op = map(toString(oneOf("+-*/")), (str) => new Operator(str));
void main() {
  print(value.parse("1234"));
  print(op.parse('+'));
}