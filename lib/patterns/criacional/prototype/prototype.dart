class User{
  final String nome;
  final String email;

  User(this.nome, this.email);

  User copyWith({String? nome, String? email}){
    return User(
      nome ?? this.nome,
      email ?? this.email
    );
  }
}


void main(){
  User user = User("Marcos", "teste@email");
  print(user.nome);
  print(user.email);

  User user2 = user.copyWith(nome: "Marcelo");
  print(user2.nome);
  print(user2.email);
}