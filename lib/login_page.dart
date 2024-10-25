import 'package:flutter/material.dart';
import 'package:flutter_register_login/auth.dart';
import 'package:flutter_register_login/profile_page.dart';
import 'package:flutter_register_login/user.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = //mengambil input email
      TextEditingController(); 
  final TextEditingController passwordController = //mengambil input password
      TextEditingController();
      
  final Auth autentikasi = Auth();

  void login(BuildContext context) {
    String email = emailController.text;
    String password = passwordController.text;

    if (autentikasi.login(email, password)) {
      User LoginUser = autentikasi.users.firstWhere((user) => user.email == email);
      //masuk ke halaman login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ProfilePage(user: LoginUser)), // navigasi ke profile
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login Berhasil"),
        ),
      );
    } else {
      // menampilkan login gagal
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email atau password salah'),
        ),
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.green),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: 'Email Anda', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: 'Password Anda', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () =>
                  login(context), // memanggil login saat ditekan
              child: Text('Login'),
              
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Belum punya akun ? Daftar'))
          ],
        ),
      ),
    );
  }
}
