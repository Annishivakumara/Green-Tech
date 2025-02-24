import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gdg/Homenavigate.dart';

import 'package:flutter_application_1/appbar_concepts/AppBar.dart';
import 'package:flutter_application_1/appbar_concepts/automateicly.dart';
import 'package:flutter_application_1/body_concepts/body.dart';
import 'package:flutter_application_1/Listview_Concept/homepage.dart';
import 'package:flutter_application_1/gdg/login_pages/sign_In_page.dart';
import 'package:flutter_application_1/gdg/login_pages/signup.dart';
import 'package:flutter_application_1/gdg/pages/settings/seetingpages/logout.dart';
import 'package:flutter_application_1/Listview_Concept/silverappbar/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(primarySwatch: Colors.green),
      title: 'Flutter DAMMI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignIn(),
    );
  }
}
