import 'package:flutter/material.dart';
import 'package:flutter_register_login/login_page.dart';

class Logout {
  static void logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => false,
    );
  }
}
