abstract class LampadaState{
  void changeState(Lampada lampada);
}

class Lampada{
  LampadaState _state = DesligadaState();

  void changeState(){
    _state.changeState(this);
  }

  void setState(LampadaState state){
    _state = state;
  }

  @override
  String toString(){
    return _state.runtimeType.toString();
  }
}

class DesligadaState implements LampadaState{
  @override
  void changeState(Lampada lampada) {
    lampada.setState(LigadaState());
  }
}

class LigadaState implements LampadaState{
  @override
  void changeState(Lampada lampada) {
    lampada.setState(DesligadaState());
  }
}

void main(){
  Lampada lampada = Lampada();
  print(lampada);
  lampada.changeState();
  print(lampada);
  lampada.changeState();
  print(lampada);
}