class User{
  static User? _instance;
  final String nome;

  factory User({required String nome}){
    _instance ??= User._internal(nome: nome);
    return _instance!;
  }

  User._internal({required this.nome});
}


void main(){
  User user = User(nome: "Pedro");
  User user2 = User(nome: "Bino");

  print(user.nome);
  print(user2.nome);
}