import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class PaginaLogin extends StatelessWidget {
  PaginaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF630a05),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN COM GOOGLE',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () async {
                  signInWithGoogle(context);
                },
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.network('https://img.icons8.com/?size=512&id=17949&format=png'),
                ),
              ),
            ],
          ),
        )
    );
  }
  signInWithGoogle(BuildContext context) async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken
    );
    FirebaseAuth.instance.signInWithCredential(credential);
  }
}