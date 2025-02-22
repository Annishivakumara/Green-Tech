import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        toolbarHeight: 100.0,
        title: Text('Log Out ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}