class User{
  final String name;
  final String address;
  final String phone;

  User(this.name, this.address, this.phone);
}

class UserBuilder{
  String? name;
  String? address;
  String? phone;

  UserBuilder setName(String name){
    this.name = name;
    return this;
  }

  UserBuilder setAddress(String address){
    this.address = address;
    return this;
  }

  UserBuilder setPhone(String phone){
    this.phone = phone;
    return this;
  }

  User build(){
    return User(name ?? "", address ?? "", phone ?? "");
  }
}

void main(){
  User user = UserBuilder()
    .setName("John Doe")
    .setAddress("123 Street")
    .setPhone("123-456-7890")
    .build();
  print(user.name);
  print(user.address);
  print(user.phone);
}