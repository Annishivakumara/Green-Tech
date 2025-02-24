import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Listview_Concept/homepage.dart';
import 'package:flutter_application_1/gdg/Homenavigate.dart';
import 'package:flutter_application_1/gdg/login_pages/sign_In_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return homepage1();
              } else {
                return SignIn();
              }
            }));
  }
}
