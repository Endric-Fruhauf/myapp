import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/login.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }
          if(snapshot.connectionState==ConnectionState.active){
            if(snapshot.data==null){
              return PaginaLogin();
            } else {
              return PaginaHome(user: snapshot.data!);
            }
          }
          return Center(child: CircularProgressIndicator());
        }
    ),
  ));
}