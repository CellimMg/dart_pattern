abstract class Observer{
  void update(String mensagem);
}

class Usuario implements Observer{
  String nome;
  Usuario(this.nome);

  @override
  void update(String mensagem) {
    print('$nome recebeu a mensagem: $mensagem');
  }
}

abstract class Observable {
  void add(Observer observer);
  void remove(Observer observer);
  void notify();
}

class CaixaDeTexto implements Observable{

  List<Observer> _observers = [];

  @override
  void add(Observer observer) {
    _observers.add(observer);
  }

  @override
  void notify() {
    for (Observer observer in _observers) {
      observer.update('Olá, você recebeu uma mensagem!');
    }
  }

  @override
  void remove(Observer observer) {
    _observers.remove(observer);
  }
}

void main() {
  var caixaDeTexto = CaixaDeTexto();
  final usuario1 = Usuario('João');
  final usuario2 = Usuario('Maria');
  final usuario3 = Usuario('José');

  caixaDeTexto.add(usuario1);
  caixaDeTexto.add(usuario2);
  caixaDeTexto.add(usuario3);

  caixaDeTexto.notify();
}

