abstract class Veiculo{
  String get nome;
  int get rodas;
  int get portas;

  void buzinar();
}

class Caminhao implements Veiculo{
  @override
  void buzinar() {
    print("FonFon");
  }

  @override
  String get nome => "Caminhao do Pedro e do Bino";

  @override
  int get portas => 2;

  @override
  int get rodas => 4;
}

class Moto implements Veiculo{
  @override
  void buzinar(){
    print("BiBi");
  }

  @override
  String get nome => "Moto do XRacing";

  @override
  int get portas => 0;

  @override
  int get rodas => 2;
}

class VeiculoFactory{
  static Veiculo? getVeiculo(String veiculoString){
    switch(veiculoString){
      case "caminhao":
        return Caminhao();
      case "moto":
        return Moto();
      default:
        return null;
    }
  }
}

void main(){
  Veiculo? veiculo = VeiculoFactory.getVeiculo("caminhao");
  Veiculo? veiculo2 = VeiculoFactory.getVeiculo("moto");

  veiculo?.buzinar();
  veiculo2?.buzinar();
}