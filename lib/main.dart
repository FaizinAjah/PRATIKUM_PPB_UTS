import 'package:flutter/material.dart';
import 'package:flutter_register_login/login_page.dart';
import 'package:flutter_register_login/register_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        // '/profil' : (context)=> ProfilePage(),
      },
    );
  }
}