class CarrosIterator implements Iterator{
  final _carros = ["Toyota", "Fiat", "Ford", "Chevrolet", "Honda"];
  int _index = 0;

  @override
  bool moveNext() => _index < _carros.length;

  @override
  String get current => _carros[_index++];
}

void main() {
  final carros = CarrosIterator();
  while(carros.moveNext()){
    print(carros.current);
  }
}
