import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigationbar/Homenavigate.dart';

import 'package:flutter_application_1/appbar_concepts/AppBar.dart';
import 'package:flutter_application_1/appbar_concepts/automateicly.dart';
import 'package:flutter_application_1/body_concepts/body.dart';
import 'package:flutter_application_1/Listview_Concept/homepage.dart';
import 'package:flutter_application_1/silverappbar/homepage.dart';

void main() {
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
      home:Silever(),
    );
  }
}
