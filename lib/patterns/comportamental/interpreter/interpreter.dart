abstract class Expression {
  bool interpret(String context);
}

class AndExpression implements Expression {
  final Expression _expr1;
  final Expression _expr2;

  AndExpression(this._expr1, this._expr2);

  @override
  bool interpret(String context) {
    return _expr1.interpret(context) && _expr2.interpret(context);
  }
}

class OrExpression implements Expression {
  final Expression _expr1;
  final Expression _expr2;

  OrExpression(this._expr1, this._expr2);

  @override
  bool interpret(String context) {
    return _expr1.interpret(context) || _expr2.interpret(context);
  }
}

class TerminalExpression implements Expression {
  final String _data;

  TerminalExpression(this._data);

  @override
  bool interpret(String context) {
    return context.contains(_data);
  }
}

void main() {
  final Expression person1 = TerminalExpression("John");
  final Expression person2 = TerminalExpression("Jane");
  final Expression person3 = TerminalExpression("Mary");

  final Expression orExpression = OrExpression(person1, person2);
  final Expression andExpression = AndExpression(orExpression, person3);

  print(andExpression.interpret("John and Mary")); // true
}
