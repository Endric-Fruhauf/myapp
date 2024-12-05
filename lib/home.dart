import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class PaginaHome extends StatelessWidget {
  final User user;
  PaginaHome({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF630a05),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Olá, ${user.displayName ?? 'Usuário'}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
                  onPressed: () async {
                    await GoogleSignIn().signOut();
                    FirebaseAuth.instance.signOut();
                  },
                  icon: Icon(Icons.logout, color: Colors.white, size: 20),
                ),
        ],
        toolbarHeight: 45,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFF632623)
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (user.photoURL != null)
              CircleAvatar(
                radius: 120,
                backgroundImage: NetworkImage(user.photoURL!),
              )
            else
              CircleAvatar(
                radius: 100,
                child: Icon(Icons.person, size: 50),
              ),
            SizedBox(height: 15),
            Container(
                alignment: Alignment.center,
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFE85951),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(user.email ?? 'Email',
                    style: TextStyle(
                      fontSize: 18,
                    ))
            ),
          ],
        ),
      ),
    );
  }
}