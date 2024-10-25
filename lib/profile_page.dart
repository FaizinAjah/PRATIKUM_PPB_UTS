import 'package:flutter/material.dart';
import 'package:flutter_register_login/login_page.dart';
import 'package:flutter_register_login/logout.dart';
import 'package:flutter_register_login/user.dart';

class ProfilePage extends StatelessWidget {
  final User user;

  ProfilePage({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          color: Colors.white,
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,
                
              );
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.0,
            ),
           
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(user.images),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              
              alignment: Alignment.centerLeft,
              child: Text(
                'Username: ${user.username}',
                style: TextStyle(fontSize: 18),
              ),
              
            ),
            SizedBox(
              height: 10,
            ),
             Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,

            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email: ${user.email}',
                style: TextStyle(fontSize: 18),
              ),
            ),
             Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,

            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Telepon: ${user.telepon}',
                style: TextStyle(fontSize: 18),
              ),
            ),
             Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,

            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Alamat: ${user.alamat}',
                style: TextStyle(fontSize: 18),
              ),
            ),
             Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,

            ),
            SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () => Logout.logout(context),
              child: Text('Logout'),
            ),
            // diketik logout tidak melakukan logout
          ],
        ),
      ),
    );
  }
}
