import 'package:flutter_register_login/user.dart';

class Auth {
List<User> users = [
  User(
    username: 'Muhammad Faizin', 
    email: 'faizinajah13@gmail.com', 
    password: '11223344', 
    telepon: '085792089376', 
    alamat: 'Singojuruh',
    images: '../assets/foto.jpg'
    )
];

//login
bool login(
    String email, 
    String password) {
  for (var user in users) {
    if (user.email == email && user.password == password) {
      return true;
    }
  }
  return false;
}

//registrasi
bool register(
    String username, 
    String email, 
    String password, 
    String telepon, 
    String alamat, 
    String images) {
  for (var user in users) {
    if (user.email == email) {
      return false;
    }
  }
  //menambahkan pengguna baru
  users.add  (User
  (username: username, 
    email: email, 
    password: password, 
    telepon: telepon, 
    alamat: alamat, 
    images: images));
  return true;
}
}