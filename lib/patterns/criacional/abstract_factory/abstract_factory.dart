abstract class ServidorFactory{
  ServidorFederal criarServidorFederal();
  ServidorEstadual criarServidorEstadual();
}

abstract class ServidorFederal{
  void exibirDados();
}

abstract class ServidorEstadual{
  String get uf;
  void exibirDados();
}

class ProfessorFactory implements ServidorFactory{
  @override
  ServidorEstadual criarServidorEstadual() {
    return ProfessorEstadual();
  }

  @override
  ServidorFederal criarServidorFederal() {
    return ProfessorFederal();
  }
}

class DiretorFactory implements ServidorFactory{
  @override
  ServidorEstadual criarServidorEstadual() {
    return DiretorEstadual();
  }

  @override
  ServidorFederal criarServidorFederal() {
    return DiretorFederal();
  }
}

class ProfessorFederal implements ServidorFederal{
  @override
  void exibirDados() {
    print("Professor Federal");
  }
}

class ProfessorEstadual implements ServidorEstadual{
  @override
  String get uf => "MG";

  @override
  void exibirDados() {
    print("Professor Estadual - UF: $uf");
  }
}

class DiretorFederal implements ServidorFederal{
  @override
  void exibirDados() {
    print("Diretor Federal");
  }
}

class DiretorEstadual implements ServidorEstadual{
  @override
  String get uf => "MG";

  @override
  void exibirDados() {
    print("Diretor Estadual - UF: $uf");
  }
}

void main(){
  ServidorFactory factory = ProfessorFactory();
  ServidorFactory factory2 = DiretorFactory();

  ServidorFederal professorFederal = factory.criarServidorFederal();//professor
  ServidorEstadual professorEstadual = factory.criarServidorEstadual();//professor

  ServidorFederal diretorFederal = factory2.criarServidorFederal();//diretor
  ServidorEstadual diretorEstadual = factory2.criarServidorEstadual();//diretor

  professorFederal.exibirDados();
  professorEstadual.exibirDados();

  diretorFederal.exibirDados();
  diretorEstadual.exibirDados();
}
